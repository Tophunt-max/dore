// Vue 2 instance-API compatibility layer.
//
// The reference app was built on Vue 2, where a component could listen to its
// own events (`this.$on`), enumerate `$children`, and `$emit` to itself. Vue 3
// removed all three. uView's form components (u-form / u-form-item / u-input)
// depend on that pattern, so it is reimplemented here and installed globally.

/**
 * Direct child component instances, the Vue 3 way (walks the render tree until
 * it reaches each nested component).
 */
export function childComponents(instance) {
  const out = [];
  const internal = instance && instance.$;
  if (!internal) return out;

  const walk = (vnode) => {
    if (!vnode) return;
    if (Array.isArray(vnode)) {
      vnode.forEach(walk);
      return;
    }
    if (vnode.component) {
      if (vnode.component.proxy) out.push(vnode.component.proxy);
      return;
    }
    const children = vnode.children;
    if (Array.isArray(children)) children.forEach(walk);
    else if (children && typeof children === 'object') {
      for (const key of Object.keys(children)) {
        const slot = children[key];
        if (typeof slot === 'function') continue;
        walk(slot);
      }
    }
  };
  walk(internal.subTree);
  return out;
}

const componentName = (vm) => (vm && vm.$options && vm.$options.name) || '';

const vue2Compat = {
  created() {
    // handlers registered through `this.$on`
    this.__localHandlers = {};
  },
  methods: {
    $on(event, handler) {
      if (!this.__localHandlers) this.__localHandlers = {};
      (this.__localHandlers[event] || (this.__localHandlers[event] = [])).push(handler);
      return this;
    },
    $once(event, handler) {
      const wrapped = (...args) => {
        this.$off(event, wrapped);
        handler.apply(this, args);
      };
      return this.$on(event, wrapped);
    },
    $off(event, handler) {
      if (!this.__localHandlers) return this;
      if (!event) this.__localHandlers = {};
      else if (!handler) delete this.__localHandlers[event];
      else {
        const list = this.__localHandlers[event] || [];
        this.__localHandlers[event] = list.filter((h) => h !== handler);
      }
      return this;
    },
    /** Invoke this instance's own `$on` handlers - Vue 2's self-`$emit`. */
    __emitLocal(event, args) {
      const list = (this.__localHandlers && this.__localHandlers[event]) || [];
      for (const handler of list.slice()) handler.apply(this, args);
    },
    /** Walk up to the named ancestor and deliver the event. */
    dispatch(name, event, ...args) {
      let parent = this.$parent || this.$root;
      while (parent && componentName(parent) !== name) parent = parent.$parent;
      if (!parent) return;
      if (parent.__emitLocal) parent.__emitLocal(event, args);
      parent.$emit(event, ...args);
    },
    /** Walk down to every named descendant and deliver the event. */
    broadcast(name, event, ...args) {
      const visit = (vm) => {
        for (const child of childComponents(vm)) {
          if (componentName(child) === name) {
            if (child.__emitLocal) child.__emitLocal(event, args);
            child.$emit(event, ...args);
          } else {
            visit(child);
          }
        }
      };
      visit(this);
    },
  },
};

export default vue2Compat;

/** Matches what babel's interop helper produced for this module. */
export const interopDefault = vue2Compat;
