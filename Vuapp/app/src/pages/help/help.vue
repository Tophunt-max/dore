<template>
  <view class="help">
    <navbar :title="$t('help.navtitle')" background="#ffffff"></navbar>
    <view class="help_top"></view>
    <view class="help_main">
      <view v-for="(item, index) in itemList" :key="index" class="help_main_item">
        <view class="help_main_item_icon">
          <view class="help_main_item_icon_url">
            <image :src="item.image_url" />
          </view>
          <view class="help_main_item_icon_title">{{ item.category }}</view>
        </view>
        <view class="help_main_item_content">
          <u-collapse :arrow="false">
            <u-collapse-item
              v-for="(item2, index2) in item.chr"
              :key="index2"
              @change="clickCollapse(item2.que_id)"
            >
              <template #title>
                <view class="iconb" slot="title">
                  <view class="icon_qr"></view>
                  {{ item2.title }}
                </view>
              </template>
            </u-collapse-item>
          </u-collapse>
        </view>
      </view>
    </view>
  </view>
</template>

<script>
import { getTitle } from '@/api/orich';

export default {
  data: function () {
    return {
      itemList: []
    };
  },
  onLoad: function () {
    this.questionList();
  },
  mounted: function () {},
  methods: {
    show: function (t) {
      this.question[t].val = !this.question[t].val;
    },
    clickCollapse: function (t) {
      uni.navigateTo({
        url: ('./help_detail?id=').concat(t)
      });
    },
    questionList: function () {
      var t = this;
      uni.showLoading({
        mask: true
      });
      getTitle().then(function (e) {
        t.itemList = e;
        uni.hideLoading();
      }).catch(function () {
        uni.hideLoading();
      });
    }
  }
};
</script>

<style scoped>
.iconb { display:flex;align-items:center }
.icon_qr { display:inline-block;width:10rpx;height:10rpx;background:#a9a9a9;border-radius:50%;margin-right:8rpx;opacity:.4 }
.u-collapse-item { border-bottom:2rpx solid #e9ecef }
.u-collapse-item:last-child { border-bottom:none }
.help { padding-bottom:30rpx;min-height:100vh }
.help .help_top { width:748rpx;height:392rpx;background:url('/static/image/finance/bg_list.png');background-size:100% }
.help .help_main { background:#fff;margin-top:-46rpx;border-radius:60rpx 60rpx 0rpx 0rpx;height:400rpx;width:100%;padding-top:40rpx }
.help .help_main .help_main_title { width:100%;padding:30rpx 30rpx 20rpx 30rpx;display:flex;align-items:center;justify-content:space-between;border-bottom:2rpx solid #e9ecef }
.help .help_main .help_main_title .help_main_title_name { font-weight:700;font-size:32rpx;height:20rpx }
.help .help_main .help_main_title .help_main_title_url { font-size:24rpx;color:#dcdcdc }
.help .help_main .help_main_item { display:flex;align-items:center;justify-content:flex-start;width:100%;border-bottom:2rpx solid #e9ecef;padding:20rpx }
.help .help_main .help_main_item .help_main_item_icon { width:35%;display:flex;flex-direction:column;align-items:center;justify-content:center;padding:0 20rpx }
.help .help_main .help_main_item .help_main_item_icon .help_main_item_icon_url { width:60rpx;height:60rpx }
.help .help_main .help_main_item .help_main_item_icon .help_main_item_icon_url uni-image { width:100%;height:100% }
.help .help_main .help_main_item .help_main_item_icon .help_main_item_icon_title { text-align:center;color:#a9a9a9 }
.help .help_main .help_main_item .help_main_item_content { width:65% }
.help .mar_bottom { margin-bottom:50rpx }
.help .help_top { width:748rpx;height:392rpx;background:url('/static/image/faq/bg_FAQ.png');background-size:100% }
</style>
