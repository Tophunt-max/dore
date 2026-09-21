<template>
  <view class="u-collapse-item" :style="[itemStyle]">
    <view
      class="u-collapse-head"
      :style="[headStyle]"
      :hover-class="hoverClass"
      @click.stop="headClick($event)"
    >
      <template v-if="!$slots['title-all']">
        <view
          v-if="!$slots['title']"
          class="u-collapse-title u-line-1"
          :style="[{ textAlign: align ? align : 'left' }, isShow && activeStyle && !arrow ? activeStyle : '']"
        >
          {{ title }}
        </view>
        <slot v-else name="title"></slot>
        <view class="u-icon-wrap">
          <u-icon
            v-if="arrow"
            class="u-arrow-down-icon"
            :class="{ 'u-arrow-down-icon-active': isShow }"
            :color="arrowColor"
            name="arrow-down"
          ></u-icon>
        </view>
      </template>
      <slot v-else name="title-all"></slot>
    </view>
    <view class="u-collapse-body" :style="[{ height: isShow ? height + 'px' : '0' }]">
      <view class="u-collapse-content" :style="[bodyStyle]" :id="elId">
        <slot></slot>
      </view>
    </view>
  </view>
</template>

<script>
export default {
  name: 'u-collapse-item',
  props: {
    title: {
      type: String,
      default: ''
    },
    align: {
      type: String,
      default: 'left'
    },
    disabled: {
      type: Boolean,
      default: false
    },
    open: {
      type: Boolean,
      default: false
    },
    name: {
      type: [Number, String],
      default: ''
    },
    activeStyle: {
      type: Object,
      default: function () {
        return {};
      }
    },
    index: {
      type: [String, Number],
      default: ''
    }
  },
  data: function () {
    return {
      isShow: false,
      elId: this.$u.guid(),
      height: 0,
      headStyle: {},
      bodyStyle: {},
      itemStyle: {},
      arrowColor: '',
      hoverClass: '',
      arrow: true
    };
  },
  watch: {
    open: function (t) {
      this.isShow = t;
    }
  },
  created: function () {
    this.parent = false;
    this.isShow = this.open;
  },
  methods: {
    init: function () {
      var t = this;
      this.parent = this.$u.$parent.call(this, 'u-collapse');
      this.parent && (this.nameSync = this.name ? this.name : this.parent.childrens.length, this.parent.childrens.push(this), this.headStyle = this.parent.headStyle, this.bodyStyle = this.parent.bodyStyle, this.arrowColor = this.parent.arrowColor, this.hoverClass = this.parent.hoverClass, this.arrow = this.parent.arrow, this.itemStyle = this.parent.itemStyle);
      this.$nextTick(function () {
        t.queryRect();
      });
    },
    headClick: function () {
      var t = this;
      this.disabled || (this.parent && 1 == this.parent.accordion && this.parent.childrens.map(function (e) {
        t != e && (e.isShow = false);
      }), this.isShow = !this.isShow, this.$emit('change', {
        index: this.index,
        show: this.isShow
      }), this.isShow && this.parent && this.parent.onChange(), this.$forceUpdate());
    },
    queryRect: function () {
      var t = this;
      this.$uGetRect('#' + this.elId).then(function (e) {
        t.height = e.height;
      });
    }
  },
  mounted: function () {
    this.init();
  }
};
</script>

<style scoped>
.u-collapse-head { position:relative;
display:flex;flex-direction:row;
justify-content:space-between;align-items:center;color:#303133;font-size:30rpx;line-height:1;padding:24rpx 0;text-align:left }
.u-collapse-title { flex:1;overflow:hidden }
.u-arrow-down-icon { transition:all .3s;margin-right:20rpx;margin-left:14rpx }
.u-arrow-down-icon-active { -webkit-transform:rotate(180deg);transform:rotate(180deg);-webkit-transform-origin:center center;transform-origin:center center }
.u-collapse-body { overflow:hidden;transition:all .3s }
.u-collapse-content { overflow:hidden;font-size:28rpx;color:#909399;text-align:left }
</style>
