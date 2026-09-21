<template>
  <view class="u-form">
    <slot></slot>
  </view>
</template>

<script>
export default {
  name: 'u-form',
  props: {
    model: {
      type: Object,
      default: function () {
        return {};
      }
    },
    errorType: {
      type: Array,
      default: function () {
        return ['message', 'toast'];
      }
    },
    borderBottom: {
      type: Boolean,
      default: true
    },
    labelPosition: {
      type: String,
      default: 'left'
    },
    labelWidth: {
      type: [String, Number],
      default: 90
    },
    labelAlign: {
      type: String,
      default: 'left'
    },
    labelStyle: {
      type: Object,
      default: function () {
        return {};
      }
    }
  },
  provide: function () {
    return {
      uForm: this
    };
  },
  data: function () {
    return {
      rules: {}
    };
  },
  created: function () {
    this.fields = [];
  },
  methods: {
    setRules: function (t) {
      this.rules = t;
    },
    resetFields: function () {
      this.fields.map(function (t) {
        t.resetField();
      });
    },
    validate: function (t) {
      var e = this;
      return new Promise(function (s) {
        var i = true, a = 0, n = [];
        e.fields.map(function (r) {
          r.validation('', function (r) {
            r && (i = false, n.push(r));
            ++a === e.fields.length && (s(i), -1 === e.errorType.indexOf('none') && e.errorType.indexOf('toast') >= 0 && n.length && e.$u.toast(n[0]), 'function' == typeof t && t(i));
          });
        });
      });
    }
  }
};
</script>
