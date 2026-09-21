<template>
  <view class="u-select">
    <u-popup
      :maskCloseAble="maskCloseAble"
      mode="bottom"
      :popup="false"
      length="auto"
      :safeAreaInsetBottom="safeAreaInsetBottom"
      :z-index="uZIndex"
      @close="close"
      :value="value"
      @input="$emit('input', $event)"
    >
      <view class="u-select">
        <view class="u-select__header" @touchmove="stopPropagation(), preventDefault()">
          <view
            class="u-select__header__cancel u-select__header__btn"
            :style="{ color: cancelColor }"
            @click="getResult('cancel')"
            hover-class="u-hover-class"
            :hover-stay-time="150"
          >
            {{ cancelText }}
          </view>
          <view class="u-select__header__title">{{ title }}</view>
          <view
            class="u-select__header__confirm u-select__header__btn"
            :style="{ color: moving ? cancelColor : confirmColor }"
            @touchmove="stopPropagation()"
            @click.stop="getResult('confirm')"
            hover-class="u-hover-class"
            :hover-stay-time="150"
          >
            {{ confirmText }}
          </view>
        </view>
        <view class="u-select__body">
          <picker-view
            class="u-select__body__picker-view"
            :value="defaultSelector"
            @change="columnChange"
            @pickstart="pickstart"
            @pickend="pickend"
          >
            <picker-view-column v-for="(item, index) in columnData" :key="index">
              <view v-for="(item2, index2) in item" :key="index2" class="u-select__body__picker-view__item">
                <view class="u-line-1">{{ item2[labelName] }}</view>
              </view>
            </picker-view-column>
          </picker-view>
        </view>
      </view>
    </u-popup>
  </view>
</template>

<script>
export default {
  props: {
    list: {
      type: Array,
      default: function () {
        return [];
      }
    },
    border: {
      type: Boolean,
      default: true
    },
    value: {
      type: Boolean,
      default: false
    },
    cancelColor: {
      type: String,
      default: '#606266'
    },
    confirmColor: {
      type: String,
      default: '#2979ff'
    },
    zIndex: {
      type: [String, Number],
      default: 0
    },
    safeAreaInsetBottom: {
      type: Boolean,
      default: false
    },
    maskCloseAble: {
      type: Boolean,
      default: true
    },
    defaultValue: {
      type: Array,
      default: function () {
        return [0];
      }
    },
    mode: {
      type: String,
      default: 'single-column'
    },
    valueName: {
      type: String,
      default: 'value'
    },
    labelName: {
      type: String,
      default: 'label'
    },
    childName: {
      type: String,
      default: 'children'
    },
    title: {
      type: String,
      default: ''
    },
    cancelText: {
      type: String,
      default: '取消'
    },
    confirmText: {
      type: String,
      default: '确认'
    }
  },
  data: function () {
    return {
      defaultSelector: [0],
      columnData: [],
      selectValue: [],
      lastSelectIndex: [],
      columnNum: 0,
      moving: false
    };
  },
  watch: {
    value: {
      immediate: true,
      handler: function (t) {
        var e = this;
        t && setTimeout(function () {
          return e.init();
        }, 10);
      }
    }
  },
  computed: {
    uZIndex: function () {
      return this.zIndex ? this.zIndex : this.$u.zIndex.popup;
    }
  },
  methods: {
    pickstart: function () {},
    pickend: function () {},
    init: function () {
      this.setColumnNum();
      this.setDefaultSelector();
      this.setColumnData();
      this.setSelectValue();
    },
    setDefaultSelector: function () {
      this.defaultSelector = this.defaultValue.length == this.columnNum ? this.defaultValue : Array(this.columnNum).fill(0);
      this.lastSelectIndex = this.$u.deepClone(this.defaultSelector);
    },
    setColumnNum: function () {
      if ('single-column' == this.mode) this.columnNum = 1; else if ('mutil-column' == this.mode) this.columnNum = this.list.length; else if ('mutil-column-auto' == this.mode) {
        var t = 1, e = this.list;
        while (e[0][this.childName]) (e = e[0] ? e[0][this.childName] : {}, t++);
        this.columnNum = t;
      }
    },
    setColumnData: function () {
      var t = [];
      if ((this.selectValue = [], 'mutil-column-auto' == this.mode)) for (var e = this.list[this.defaultSelector.length ? this.defaultSelector[0] : 0], s = 0; s < this.columnNum; s++) 0 == s ? (t[s] = this.list, e = e[this.childName]) : (t[s] = e, e = e[this.defaultSelector[s]][this.childName]); else 'single-column' == this.mode ? t[0] = this.list : t = this.list;
      this.columnData = t;
    },
    setSelectValue: function () {
      for (var t = null, e = 0; e < this.columnNum; e++) {
        t = this.columnData[e][this.defaultSelector[e]];
        var s = {
          value: t ? t[this.valueName] : null,
          label: t ? t[this.labelName] : null
        };
        t && t.extra && (s.extra = t.extra);
        this.selectValue.push(s);
      }
    },
    columnChange: function (t) {
      var e = this, s = null, i = t.detail.value;
      if ((this.selectValue = [], 'mutil-column-auto' == this.mode)) {
        this.lastSelectIndex.map(function (t, e) {
          t != i[e] && (s = e);
        });
        this.defaultSelector = i;
        for (var a = s + 1; a < this.columnNum; a++) (this.columnData[a] = this.columnData[a - 1][a - 1 == s ? i[s] : 0][this.childName], this.defaultSelector[a] = 0);
        i.map(function (t, s) {
          var a = e.columnData[s][i[s]], n = {
            value: a ? a[e.valueName] : null,
            label: a ? a[e.labelName] : null
          };
          a && void 0 !== a.extra && (n.extra = a.extra);
          e.selectValue.push(n);
        });
        this.lastSelectIndex = i;
      } else if ('single-column' == this.mode) {
        var n = this.columnData[0][i[0]], r = {
          value: n ? n[this.valueName] : null,
          label: n ? n[this.labelName] : null
        };
        n && void 0 !== n.extra && (r.extra = n.extra);
        this.selectValue.push(r);
      } else 'mutil-column' == this.mode && i.map(function (t, s) {
        var a = e.columnData[s][i[s]], n = {
          value: a ? a[e.valueName] : null,
          label: a ? a[e.labelName] : null
        };
        a && void 0 !== a.extra && (n.extra = a.extra);
        e.selectValue.push(n);
      });
    },
    close: function () {
      this.$emit('input', false);
    },
    getResult: function () {
      var t = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : null;
      t && this.$emit(t, this.selectValue);
      this.close();
    },
    selectHandler: function () {
      this.$emit('click');
    }
  }
};
</script>

<style scoped>
.u-select__action { position:relative;line-height:70rpx;height:70rpx }
.u-select__action__icon { position:absolute;right:20rpx;top:50%;transition:-webkit-transform .4s;transition:transform .4s;transition:transform .4s,-webkit-transform .4s;-webkit-transform:translateY(-50%);transform:translateY(-50%);z-index:1 }
.u-select__action__icon--reverse { -webkit-transform:rotate(-180deg) translateY(50%);transform:rotate(-180deg) translateY(50%) }
.u-select__hader__title { color:#606266 }
.u-select--border { border-radius:6rpx;border-radius:4px;border:1px solid #dcdfe6 }
.u-select__header { display:flex;flex-direction:row;
align-items:center;justify-content:space-between;height:80rpx;padding:0 40rpx }
.u-select__body { width:100%;height:500rpx;overflow:hidden;background-color:#fff }
.u-select__body__picker-view { height:100%;box-sizing:border-box }
.u-select__body__picker-view__item { display:flex;flex-direction:row;
align-items:center;justify-content:center;font-size:32rpx;color:#303133;padding:0 8rpx }
</style>
