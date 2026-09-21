<template>
  <view
    class="u-form-item"
    :class="{ 'u-border-bottom': elBorderBottom, 'u-form-item__border-bottom--error': 'error' === validateState && showError('border-bottom') }"
  >
    <view class="u-form-item__body" :style="{ flexDirection: 'left' == elLabelPosition ? 'row' : 'column' }">
      <view
        class="u-form-item--left"
        :style="{ width: uLabelWidth, flex: '0 0 ' + uLabelWidth, marginBottom: 'left' == elLabelPosition ? 0 : '10rpx' }"
      >
        <view v-if="required || leftIcon || label" class="u-form-item--left__content">
          <text v-if="required" class="u-form-item--left__content--required"></text>
          <view v-if="leftIcon" class="u-form-item--left__content__icon">
            <u-icon :name="leftIcon" :custom-style="leftIconStyle"></u-icon>
          </view>
          <view
            class="u-form-item--left__content__label"
            :style="[elLabelStyle, { 'justify-content': 'left' == elLabelAlign ? 'flex-start' : 'center' == elLabelAlign ? 'center' : 'flex-end' }]"
          >
            {{ label }}
          </view>
        </view>
      </view>
      <view class="u-form-item--right u-flex">
        <view class="u-form-item--right__content">
          <view class="u-form-item--right__content__slot ">
            <slot></slot>
          </view>
          <view v-if="$slots.right || rightIcon" class="u-form-item--right__content__icon u-flex">
            <u-icon v-if="rightIcon" :custom-style="rightIconStyle" :name="rightIcon"></u-icon>
            <slot name="right"></slot>
          </view>
        </view>
      </view>
    </view>
    <view
      v-if="'error' === validateState && showError('message')"
      class="u-form-item__message"
      :style="{ paddingLeft: 'left' == elLabelPosition ? $u.addUnit(elLabelWidth) : '0' }"
    >
      {{ validateMessage }}
    </view>
  </view>
</template>

<script>
import { interopDefault as d_d780 } from '@/utils/vue2-compat';
import { interopDefault as d_7962 } from '@/vendor/7962';

// Helpers the reference bundle hoisted out of the component.
function r(t, e, s) {
  return ((e in t) ? Object.defineProperty(t, e, {
    value: s,
    enumerable: true,
    configurable: true,
    writable: true
  }) : t[e] = s, t);
}

export default {
  name: 'u-form-item',
  mixins: [d_d780],
  inject: {
    uForm: {
      default: function () {
        return null;
      }
    }
  },
  props: {
    label: {
      type: String,
      default: ''
    },
    prop: {
      type: String,
      default: ''
    },
    borderBottom: {
      type: [String, Boolean],
      default: ''
    },
    labelPosition: {
      type: String,
      default: ''
    },
    labelWidth: {
      type: [String, Number],
      default: ''
    },
    labelStyle: {
      type: Object,
      default: function () {
        return {};
      }
    },
    labelAlign: {
      type: String,
      default: ''
    },
    rightIcon: {
      type: String,
      default: ''
    },
    leftIcon: {
      type: String,
      default: ''
    },
    leftIconStyle: {
      type: Object,
      default: function () {
        return {};
      }
    },
    rightIconStyle: {
      type: Object,
      default: function () {
        return {};
      }
    },
    required: {
      type: Boolean,
      default: false
    }
  },
  data: function () {
    return {
      initialValue: '',
      validateState: '',
      validateMessage: '',
      errorType: ['message'],
      fieldValue: '',
      parentData: {
        borderBottom: true,
        labelWidth: 90,
        labelPosition: 'left',
        labelStyle: {},
        labelAlign: 'left'
      }
    };
  },
  watch: {
    validateState: function (t) {
      this.broadcastInputError();
    },
    'uForm.errorType': function (t) {
      this.errorType = t;
      this.broadcastInputError();
    }
  },
  computed: {
    uLabelWidth: function () {
      return 'left' == this.elLabelPosition ? 'true' === this.label || '' === this.label ? 'auto' : this.$u.addUnit(this.elLabelWidth) : '100%';
    },
    showError: function () {
      var t = this;
      return function (e) {
        return !(t.errorType.indexOf('none') >= 0) && t.errorType.indexOf(e) >= 0;
      };
    },
    elLabelWidth: function () {
      return 0 != this.labelWidth || '' != this.labelWidth ? this.labelWidth : this.parentData.labelWidth ? this.parentData.labelWidth : 90;
    },
    elLabelStyle: function () {
      return Object.keys(this.labelStyle).length ? this.labelStyle : this.parentData.labelStyle ? this.parentData.labelStyle : {};
    },
    elLabelPosition: function () {
      return this.labelPosition ? this.labelPosition : this.parentData.labelPosition ? this.parentData.labelPosition : 'left';
    },
    elLabelAlign: function () {
      return this.labelAlign ? this.labelAlign : this.parentData.labelAlign ? this.parentData.labelAlign : 'left';
    },
    elBorderBottom: function () {
      return '' !== this.borderBottom ? this.borderBottom : !this.parentData.borderBottom || this.parentData.borderBottom;
    }
  },
  methods: {
    broadcastInputError: function () {
      this.broadcast('u-input', 'on-form-item-error', 'error' === this.validateState && this.showError('border'));
    },
    setRules: function () {
      var t = this;
      this.$on('on-form-blur', t.onFieldBlur);
      this.$on('on-form-change', t.onFieldChange);
    },
    getRules: function () {
      var t = this.parent.rules;
      return (t = t ? t[this.prop] : [], [].concat(t || []));
    },
    onFieldBlur: function () {
      this.validation('blur');
    },
    onFieldChange: function () {
      this.validation('change');
    },
    getFilteredRule: function () {
      var t = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : '', e = this.getRules();
      return t ? e.filter(function (e) {
        return e.trigger && -1 !== e.trigger.indexOf(t);
      }) : e;
    },
    validation: function (t) {
      var e = this, s = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : function () {};
      this.fieldValue = this.parent.model[this.prop];
      var i = this.getFilteredRule(t);
      if (!i || 0 === i.length) return s('');
      this.validateState = 'validating';
      var n = new d_7962(r({}, this.prop, i));
      n.validate(r({}, this.prop, this.fieldValue), {
        firstFields: true
      }, function (t, i) {
        e.validateState = t ? 'error' : 'success';
        e.validateMessage = t ? t[0].message : '';
        s(e.validateMessage);
      });
    },
    resetField: function () {
      this.parent.model[this.prop] = this.initialValue;
      this.validateState = 'success';
    }
  },
  mounted: function () {
    var t = this;
    this.parent = this.$u.$parent.call(this, 'u-form');
    this.parent && (Object.keys(this.parentData).map(function (e) {
      t.parentData[e] = t.parent[e];
    }), this.prop && (this.parent.fields.push(this), this.errorType = this.parent.errorType, this.initialValue = this.fieldValue, this.$nextTick(function () {
      t.setRules();
    })));
  },
  beforeUnmount: function () {
    var t = this;
    this.parent && this.prop && this.parent.fields.map(function (e, s) {
      e === t && t.parent.fields.splice(s, 1);
    });
  }
};
</script>

<style scoped>
.u-form-item { display:flex;flex-direction:row;
padding:20rpx 0;font-size:28rpx;color:#303133;box-sizing:border-box;line-height:70rpx;flex-direction:column }
.u-form-item__border-bottom--error:after { border-color:#fa3534 }
.u-form-item__body { display:flex;flex-direction:row }
.u-form-item--left { display:flex;flex-direction:row;
align-items:center }
.u-form-item--left__content { position:relative;
display:flex;flex-direction:row;
align-items:center;padding-right:10rpx;flex:1 }
.u-form-item--left__content__icon { margin-right:8rpx }
.u-form-item--left__content--required { position:absolute;left:-16rpx;vertical-align:middle;color:#fa3534;padding-top:6rpx }
.u-form-item--left__content__label { display:flex;flex-direction:row;
align-items:center;flex:1 }
.u-form-item--right { flex:1 }
.u-form-item--right__content { display:flex;flex-direction:row;
align-items:center;flex:1 }
.u-form-item--right__content__slot { flex:1;
display:flex;flex-direction:row;
align-items:center }
.u-form-item--right__content__icon { margin-left:10rpx;color:#c0c4cc;font-size:30rpx }
.u-form-item__message { font-size:24rpx;line-height:24rpx;color:#fa3534;margin-top:12rpx }
</style>
