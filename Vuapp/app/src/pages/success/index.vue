<script setup lang="ts">
// Faithful port of ORich pages/success/index (result page, types 1-7).
import { ref } from 'vue';
import { onLoad } from '@dcloudio/uni-app';
import { useI18n } from 'vue-i18n';
import { GoodsDetail } from '@/api/orich';

const { t } = useI18n();
const navTitle = ref('');
const btnText = ref('');
const topImg = ref('');
const tipsText = ref('');
const successPage = ref(3);
const goodsId = ref('');
const detailID = ref('');
const goodsData = ref<any>({ getnumber: [] });
const showNumber = ref<any[]>([]);
const showViewAll = ref(true);

const IMG = {
  buy: '/static/image/goods/ing_Successfulpurchase.png',
  confirm: '/static/image/goods/img_confirm.png',
};

onLoad((q: any) => {
  successPage.value = Number(q?.type) || 1;
  detailID.value = q?.id || '';
  switch (+successPage.value) {
    case 1:
      goodsId.value = q?.id;
      navTitle.value = t('success.payment');
      btnText.value = t('success.btnshow');
      tipsText.value = t('success.good');
      topImg.value = IMG.buy;
      GoodsDetail({ id: goodsId.value }).then((r: any) => {
        goodsData.value = r.goods || { getnumber: [] };
        showNumber.value = (goodsData.value.getnumber || []).slice(0, 9);
      });
      break;
    case 2:
      navTitle.value = t('success.confirm');
      btnText.value = t('success.btndetail');
      tipsText.value = t('success.it');
      topImg.value = IMG.confirm;
      break;
    default:
      successPage.value = 3;
      navTitle.value = t('success.comment');
      btnText.value = t('success.view');
      tipsText.value = t('success.review');
      topImg.value = IMG.buy;
  }
});

function handleBack() {
  backHome();
}
function backHome() {
  uni.reLaunch({ url: '../home/home' });
}
function confirm() {
  let url = '../home/home';
  switch (+successPage.value) {
    case 1:
      url = `../order/detail?id=${goodsId.value}&page=2`;
      break;
    case 2:
      url = `../order/detail?id=${detailID.value}`;
      break;
    case 3:
      url = '../winner/myShare?type=1';
      break;
  }
  uni.reLaunch({ url });
}
function openWhatsapp() {
  uni.showToast({ title: 'WhatsApp support', icon: 'none' });
}
function showMore() {
  showNumber.value = goodsData.value.getnumber;
  showViewAll.value = false;
}
</script>

<template>
  <view class="success">
    <navbar :title="navTitle" background="#ffffff" isComfirm :isBack="successPage != 4 && successPage != 5" @beforeBack="handleBack" />
    <view class="top">
      <image class="top-img" :src="topImg" mode="heightFix" />
      <view class="top-tips">{{ tipsText }}</view>

      <view v-if="successPage != 4 && successPage != 5" class="top-btn">
        <view class="top-btn-item"><overbtn :btnText="$t('success.btnback')" :fontSize="28" btnType="plain" @btnAction="backHome" /></view>
        <view class="top-btn-item"><overbtn :btnText="btnText" :fontSize="28" btnType="submit" @btnAction="confirm" /></view>
      </view>

      <template v-if="successPage == 1">
        <image class="top-line" src="/static/image/goods/img_line.png" mode="widthFix" />
        <view class="goods">
          <view class="goods-title">{{ goodsData.name }}</view>
          <view class="goods-num">
            {{ $t('success.yournum') }}{{ showNumber.join(',') }}
            <text v-if="showViewAll && showNumber.length < (goodsData.getnumber || []).length" class="goods-view" @click="showMore">
              View all
            </text>
          </view>
          <view v-if="goodsData.issue" class="goods-time">{{ $t('success.draw') }}{{ goodsData.issue }}</view>
        </view>
      </template>
    </view>

    <view v-if="successPage == 1 || successPage == 2 || successPage == 3" class="bottom">
      <view class="gift">
        <image src="/static/image/goods/icon_Firstprize.png" mode="widthFix" />
        <view class="gift-text">{{ $t('success.more') }}</view>
      </view>
      <view class="whatsapp" @click="openWhatsapp">
        <view class="whatsapp_img"><image src="/static/image/goods/icon_Whatsapp.png" mode="aspectFit" /></view>
        <view class="whatsapp_text">WhatsApp</view>
      </view>
    </view>
  </view>
</template>

<style scoped>
/* Verbatim scoped CSS from ORich pages/success/index (scope stripped) */
.success { min-height: 100vh; width: 100%; background-color: #f9f9f9; }
.top { display: flex; flex-direction: column; align-items: center; justify-content: flex-start; padding: 0 10rpx; background-color: #fff; margin-bottom: 24rpx; }
.top .top-img { height: 380rpx; }
.top .top-tips { width: 530rpx; margin-top: 0rpx; text-align: center; font-size: 28rpx; font-family: Roboto, Roboto-Regular; color: #ee5016; }
.top .top-btn { display: flex; flex-direction: row; align-items: center; justify-content: space-around; width: 100%; padding: 0 10rpx; margin-top: 42rpx; margin-bottom: 36rpx; }
.top .top-btn .top-btn-item { width: 286rpx; height: 78rpx; }
.top .top-line { margin-top: 10rpx; width: 100%; }
.goods { width: 100%; padding: 36rpx 32rpx; }
.goods .goods-title { font-size: 32rpx; font-family: PingFang SC, PingFang SC-Bold; font-weight: 700; color: #17273a; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; }
.goods .goods-num { margin-top: 20rpx; word-break: break-all; font-size: 26rpx; font-family: Roboto, Roboto-Regular; font-weight: 400; color: #b9b9b9; line-height: 36rpx; position: relative; }
.goods .goods-view { font-size: 26rpx; font-weight: 400; color: #58a5ff; position: absolute; right: 0; }
.goods .goods-time { margin-top: 10rpx; font-size: 26rpx; font-family: Roboto, Roboto-Regular; font-weight: 400; text-align: left; color: #b9b9b9; }
.bottom { position: relative; width: 100%; padding: 42rpx 32rpx; background-color: #fff; }
.bottom .gift { display: flex; flex-direction: row; align-items: flex-start; justify-content: center; padding: 0 26rpx; }
.bottom .gift uni-image { width: 80rpx; margin-right: 44rpx; }
.bottom .gift .gift-text { flex: 1; margin: 0 10rpx; text-align: center; font-size: 32rpx; font-family: Roboto, Roboto-Medium; font-weight: 700; line-height: 36rpx; color: #ee5016; }
.whatsapp { margin-top: 86rpx; display: flex; align-items: center; justify-content: center; width: 402rpx; height: 116rpx; background: #f0fff2; border-radius: 20rpx; box-shadow: 0rpx -6rpx 8rpx 0rpx rgba(48, 171, 65, 0.2) inset; margin-left: 50%; transform: translateX(-50%); }
.whatsapp .whatsapp_img { width: 66rpx; height: 66rpx; }
.whatsapp .whatsapp_text { margin-left: 14rpx; font-size: 36rpx; font-family: PingFang SC, PingFang SC-Bold; font-weight: 700; color: #55cd63; letter-spacing: 0rpx; }
</style>
