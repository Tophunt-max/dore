<template>
  <view
    class="u-input"
    :class="{ 'u-input--border': border, 'u-input--error': validateState }"
    :style="{ padding: '0 ' + (border ? 20 : 0) + 'rpx', borderColor: borderColor, textAlign: inputAlign }"
    @click.stop="inputClick($event)"
  >
    <textarea
      v-if="'textarea' == type"
      class="u-input__input u-input__textarea"
      :style="[getStyle]"
      :value="defaultValue"
      :placeholder="placeholder"
      :placeholderStyle="placeholderStyle"
      :disabled="disabled"
      :maxlength="inputMaxlength"
      :fixed="fixed"
      :focus="focus"
      :autoHeight="autoHeight"
      :selection-end="uSelectionEnd"
      :selection-start="uSelectionStart"
      :cursor-spacing="getCursorSpacing"
      :show-confirm-bar="showConfirmbar"
      @input="handleInput"
      @blur="handleBlur"
      @focus="onFocus"
      @confirm="onConfirm"
     />
    <input
      v-else
      class="u-input__input"
      :style="[getStyle]"
      :type="'password' == type ? 'text' : type"
      :value="defaultValue"
      :password="'password' == type && !showPassword"
      :placeholder="placeholder"
      :placeholderStyle="placeholderStyle"
      :disabled="disabled || 'select' === type"
      :maxlength="inputMaxlength"
      :focus="focus"
      :confirmType="confirmType"
      :cursor-spacing="getCursorSpacing"
      :selection-end="uSelectionEnd"
      :selection-start="uSelectionStart"
      :show-confirm-bar="showConfirmbar"
      @focus="onFocus"
      @blur="handleBlur"
      @input="handleInput"
      @confirm="onConfirm"
     />
    <view class="u-input__right-icon u-flex">
      <view
        v-if="clearable && '' != value && focused"
        class="u-input__right-icon__clear u-input__right-icon__item"
        @click="onClear"
      >
        <u-icon size="32" name="close-circle-fill" color="#c0c4cc"></u-icon>
      </view>
      <view
        v-if="passwordIcon && 'password' == type"
        class="u-input__right-icon__clear u-input__right-icon__item"
      >
        <u-icon
          size="32"
          :name="showPassword ? 'eye-fill' : 'eye'"
          color="#c0c4cc"
          @click="showPassword = !showPassword"
        ></u-icon>
      </view>
      <view
        v-if="'select' == type"
        class="u-input__right-icon--select u-input__right-icon__item"
        :class="{ 'u-input__right-icon--select--reverse': selectOpen }"
      >
        <u-icon name="arrow-down-fill" size="26" color="#c0c4cc"></u-icon>
      </view>
    </view>
  </view>
</template>

<script>
import { interopDefault as d_d780 } from '@/utils/vue2-compat';

export default {
  name: 'u-input',
  mixins: [d_d780],
  props: {
    value: {
      type: [String, Number],
      default: ''
    },
    type: {
      type: String,
      default: 'text'
    },
    inputAlign: {
      type: String,
      default: 'left'
    },
    placeholder: {
      type: String,
      default: '请输入内容'
    },
    disabled: {
      type: Boolean,
      default: false
    },
    maxlength: {
      type: [Number, String],
      default: 140
    },
    placeholderStyle: {
      type: String,
      default: 'color: #c0c4cc;'
    },
    confirmType: {
      type: String,
      default: 'done'
    },
    customStyle: {
      type: Object,
      default: function () {
        return {};
      }
    },
    fixed: {
      type: Boolean,
      default: false
    },
    focus: {
      type: Boolean,
      default: false
    },
    passwordIcon: {
      type: Boolean,
      default: true
    },
    border: {
      type: Boolean,
      default: false
    },
    borderColor: {
      type: String,
      default: '#dcdfe6'
    },
    autoHeight: {
      type: Boolean,
      default: true
    },
    selectOpen: {
      type: Boolean,
      default: false
    },
    height: {
      type: [Number, String],
      default: ''
    },
    clearable: {
      type: Boolean,
      default: true
    },
    cursorSpacing: {
      type: [Number, String],
      default: 0
    },
    selectionStart: {
      type: [Number, String],
      default: -1
    },
    selectionEnd: {
      type: [Number, String],
      default: -1
    },
    trim: {
      type: Boolean,
      default: true
    },
    showConfirmbar: {
      type: Boolean,
      default: true
    }
  },
  data: function () {
    return {
      defaultValue: this.value,
      inputHeight: 70,
      textareaHeight: 100,
      validateState: false,
      focused: false,
      showPassword: false,
      lastValue: ''
    };
  },
  watch: {
    value: function (t, e) {
      this.defaultValue = t;
      t != e && 'select' == this.type && this.handleInput({
        detail: {
          value: t
        }
      });
    }
  },
  computed: {
    inputMaxlength: function () {
      return Number(this.maxlength);
    },
    getStyle: function () {
      var t = {};
      return (t.minHeight = this.height ? this.height + 'rpx' : 'textarea' == this.type ? this.textareaHeight + 'rpx' : this.inputHeight + 'rpx', t = Object.assign(t, this.customStyle), t);
    },
    getCursorSpacing: function () {
      return Number(this.cursorSpacing);
    },
    uSelectionStart: function () {
      return String(this.selectionStart);
    },
    uSelectionEnd: function () {
      return String(this.selectionEnd);
    }
  },
  created: function () {
    this.$on('on-form-item-error', this.onFormItemError);
  },
  methods: {
    handleInput: function (t) {
      var e = this, s = t.detail.value;
      this.trim && (s = this.$u.trim(s));
      this.$emit('input', s);
      this.defaultValue = s;
      setTimeout(function () {
        e.dispatch('u-form-item', 'on-form-change', s);
      }, 40);
    },
    handleBlur: function (t) {
      var e = this;
      setTimeout(function () {
        e.focused = false;
      }, 100);
      this.$emit('blur', t.detail.value);
      setTimeout(function () {
        e.dispatch('u-form-item', 'on-form-blur', t.detail.value);
      }, 40);
    },
    onFormItemError: function (t) {
      this.validateState = t;
    },
    onFocus: function (t) {
      this.focused = true;
      this.$emit('focus');
    },
    onConfirm: function (t) {
      this.$emit('confirm', t.detail.value);
    },
    onClear: function (t) {
      this.$emit('input', '');
    },
    inputClick: function () {
      this.$emit('click');
    }
  }
};
</script>

<style scoped>
.u-input { position:relative;flex:1;
display:flex;flex-direction:row }
.u-input__input { font-size:28rpx;color:#303133;flex:1 }
.u-input__textarea { width:auto;font-size:28rpx;color:#303133;padding:10rpx 0;line-height:normal;flex:1 }
.u-input--border { border-radius:6rpx;border-radius:4px;border:1px solid #dcdfe6 }
.u-input--error { border-color:#fa3534!important }
.u-input__right-icon__item { margin-left:10rpx }
.u-input__right-icon--select { transition:-webkit-transform .4s;transition:transform .4s;transition:transform .4s,-webkit-transform .4s }
.u-input__right-icon--select--reverse { -webkit-transform:rotate(-180deg);transform:rotate(-180deg) }
</style>
