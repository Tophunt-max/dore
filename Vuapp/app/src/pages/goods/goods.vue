<script setup lang="ts">
// Faithful port of ORich pages/goods/goods (verbatim CSS in ./goods.css).
import { ref, computed } from 'vue';
import { onLoad, onPageScroll } from '@dcloudio/uni-app';
import { GoodsDetail } from '@/api/orich';
import { formatMinor } from '@/utils/money';

const G = '/static/image/goods';
const id = ref<any>('');
const navBg = ref('transparent');
const titleColor = ref('transparent');
const backBg = ref('#626262');
const goodsData = ref<any>({ name: '', issue: '', total_slots: 1, filled_slots: 0 });
const bannerList = ref<any[]>([]);
const participants = ref<any[]>([]);
const ltabIndex = ref(0);
const ltabs = ['Details', 'Participants', 'Winners'];

const percent = computed(() =>
  Math.min(100, Math.round(((goodsData.value.filled_slots || 0) / (goodsData.value.total_slots || 1)) * 100)),
);
const needed = computed(() => Math.max(0, (goodsData.value.total_slots || 0) - (goodsData.value.filled_slots || 0)));

onLoad((q: any) => {
  id.value = q?.id;
  getData();
});
onPageScroll((e: any) => {
  const on = e.scrollTop > 200;
  navBg.value = on ? '#ffffff' : 'transparent';
  titleColor.value = on ? '#17273a' : 'transparent';
  backBg.value = on ? '#626262' : '#626262';
});

function getData() {
  GoodsDetail({ id: id.value }).then((r: any) => {
    if (!r || r.ok === false) return;
    goodsData.value = r.goods || {};
    bannerList.value = goodsData.value.image ? [goodsData.value.image] : [];
    participants.value = r.participants || [];
  });
}
function beforeBack() {
  const pages = getCurrentPages();
  if (pages.length > 1) uni.navigateBack();
  else uni.switchTab({ url: '/pages/home/home' });
}
function handleShare() {
  uni.showToast({ title: 'Share', icon: 'none' });
}
function rankName(i: number) {
  return i + 1;
}
function buyNow() {
  uni.navigateTo({ url: `/pages/goods/comfirm?id=${id.value}` });
}
</script>

<template>
  <view class="goods">
    <navbar :backColor="backBg" :background="navBg" :title="goodsData.name" :titleColor="titleColor" @beforeBack="beforeBack" />

    <view id="toTop" class="toTop">
      <view class="banner">
        <u-swiper height="541" :list="bannerList" img-mode="scaleToFill" />
        <view v-if="goodsData.status === 'active'" class="banner-countdown">Draw when full</view>
      </view>

      <view class="intro card">
        <view class="intro-header">
          <view class="intro-price">
            <view class="intro-price-all otw">
              {{ formatMinor(goodsData.price_minor) }}<text>{{ formatMinor(goodsData.market_price_minor) }}</text>
            </view>
          </view>
          <view class="intro-title">{{ goodsData.name }}</view>
          <view class="intro-text">{{ $t('goods.issue') }}{{ goodsData.issue }}</view>
        </view>
        <image :src="`${G}/icon_Share.png`" mode="aspectFit" @click="handleShare" />
      </view>

      <view class="people card">
        <view class="people-view">
          <view class="people-avatar">
            <image
              v-for="(p, i) in participants.slice(0, 6)"
              :key="i"
              :src="p.avatar || '/static/image/other.png'"
              mode="aspectFill"
            />
          </view>
          <view class="people-text">{{ participants.length }} {{ $t('home.gift') }}</view>
        </view>
        <view class="people-progress"><lineprogress :percent="percent" :height="16" /></view>
        <view class="people-need">
          <text>{{ $t('home.needed') }} {{ needed }}</text>
          <text>{{ percent }}%</text>
        </view>
      </view>

      <view class="prize card">
        <view class="prize-title">
          <view class="prize-name"><text class="prize-icon" />Ranking</view>
        </view>
        <view class="rank">
          <view v-for="(p, i) in participants" :key="i" class="prize-rank">
            <view class="prize-rank-box">
              <view class="rank-iconnum"><text>{{ rankName(i) }}</text></view>
              <view class="rank-name otw">{{ p.username }}</view>
            </view>
            <view class="rank-price">
              <view class="rank-price-left otw">{{ p.slots }} slots</view>
            </view>
          </view>
          <view v-if="!participants.length" class="nodata">{{ $t('common.nodata') }}</view>
        </view>
      </view>

      <view class="main">
        <view class="ltab">
          <view
            v-for="(t, i) in ltabs"
            :key="i"
            class="ltab-item"
            :class="{ 'ltab-item-active': ltabIndex === i }"
            @click="ltabIndex = i"
          >
            <view class="ltab-item-text">{{ t }}</view>
          </view>
        </view>

        <view v-show="ltabIndex === 0" class="parse">
          <u-parse :content="goodsData.description || ''" />
        </view>

        <view v-show="ltabIndex === 1" class="participation">
          <view v-for="(p, i) in participants" :key="i" class="item">
            <image class="avatar" :src="p.avatar || '/static/image/other.png'" mode="aspectFill" />
            <view class="detail">
              <view class="header">
                <view class="header-top">
                  <view class="header-name otw">{{ p.username }}</view>
                  <view class="header-time">{{ p.created_at ? new Date(p.created_at * 1000).toLocaleDateString() : '' }}</view>
                </view>
                <view class="header-bottom">{{ p.slots }} slots</view>
              </view>
            </view>
          </view>
          <view v-if="!participants.length" class="nodata">{{ $t('common.nodata') }}</view>
        </view>

        <view v-show="ltabIndex === 2" class="winner">
          <view class="nodata">{{ $t('home.newDraw') }}</view>
        </view>
      </view>
    </view>

    <view class="btn">
      <view class="btn-buy">
        <view class="btn-price">
          <view class="btn-price-new">{{ formatMinor(goodsData.price_minor) }}</view>
          <view class="btn-price-old">{{ formatMinor(goodsData.market_price_minor) }}</view>
        </view>
        <view class="btn-btn">
          <overbtn :btnText="$t('home.snatch')" :fontSize="28" btnType="submit" @btnAction="buyNow" />
        </view>
      </view>
    </view>
  </view>
</template>

<style>
@import './goods.css';
</style>

<style scoped>
.goods { padding-bottom: 120rpx; }
.people-progress { width: 100%; margin: 12rpx 0; }
.btn .btn-btn { width: 283rpx; height: 78rpx; }
</style>
