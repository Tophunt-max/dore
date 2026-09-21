// mescroll page mixin (reference webpack module "4df3"), adapted to Vue 3.
//
// Same data, hooks and methods as the original. The one change: `mescroll`
// starts as a queueing stub, because pages call it from `onShow` and Vue 3 runs
// page `onShow` before the <mescroll-body> child has mounted and emitted
// `init`. Queued calls are replayed in order the moment the instance exists.

const QUEUED_METHODS = [
  'resetUpScroll',
  'triggerDownScroll',
  'triggerUpScroll',
  'endSuccess',
  'endErr',
  'endByPage',
  'endBySize',
  'endUpScroll',
  'setPageNum',
  'setPageSize',
  'scrollTo',
  'showEmpty',
  'removeEmpty',
  'lockDownScroll',
  'lockUpScroll',
  'onPullDownRefresh',
  'onPageScroll',
  'onReachBottom',
];

function createPendingMescroll() {
  const calls = [];
  const stub = {
    __pending: calls,
    // the original reads this before choosing a refresh path
    optUp: { use: true },
    optDown: { use: true },
  };
  for (const name of QUEUED_METHODS) {
    stub[name] = (...args) => {
      calls.push([name, args]);
    };
  }
  return stub;
}

const mescrollMixin = {
  data() {
    return { mescroll: createPendingMescroll() };
  },
  onPullDownRefresh() {
    this.mescroll && this.mescroll.onPullDownRefresh();
  },
  onPageScroll(e) {
    this.mescroll && this.mescroll.onPageScroll(e);
  },
  onReachBottom() {
    this.mescroll && this.mescroll.onReachBottom();
  },
  mounted() {
    this.mescrollInitByRef();
  },
  methods: {
    mescrollInit(mescroll) {
      this.__adoptMescroll(mescroll);
      this.mescrollInitByRef();
    },
    mescrollInitByRef() {
      if (!this.mescroll || !this.mescroll.resetUpScroll || this.mescroll.__pending) {
        const ref = this.$refs.mescrollRef;
        if (ref && ref.mescroll) this.__adoptMescroll(ref.mescroll);
      }
    },
    /** Swap the stub for the real instance and replay anything queued. */
    __adoptMescroll(mescroll) {
      if (!mescroll || mescroll.__pending) return;
      const pending = this.mescroll && this.mescroll.__pending;
      this.mescroll = mescroll;
      if (!pending || !pending.length) return;
      const calls = pending.splice(0, pending.length);
      for (const [name, args] of calls) {
        if (typeof mescroll[name] === 'function') mescroll[name](...args);
      }
    },
    downCallback() {
      if (this.mescroll.optUp && this.mescroll.optUp.use) this.mescroll.resetUpScroll();
      else setTimeout(() => this.mescroll.endSuccess(), 500);
    },
    upCallback() {
      setTimeout(() => this.mescroll.endErr(), 500);
    },
  },
};

export default mescrollMixin;

/** Matches what babel's interop helper produced for this module. */
export const interopDefault = mescrollMixin;
