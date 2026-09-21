<script setup lang="ts">
import { ref } from 'vue';
import { onShow, onPullDownRefresh } from '@dcloudio/uni-app';
import { api } from '@/api/request';
import { formatMinor } from '@/utils/money';

interface Goods {
  id: number;
  title: string;
  image: string;
  price_minor: number;
  market_price_minor: number;
  total_slots: number;
  filled_slots: number;
  issue: string;
}

const banners = ref<any[]>([]);
const notices = ref<any[]>([]);
const newbie = ref<Goods[]>([]);
const high = ref<Goods[]>([]);
const latest = ref<Goods[]>([]);
const finance = ref<any[]>([]);
const loading = ref(true);

async function load() {
  const res = await api.get('/api/home');
  if (res.ok) {
    banners.value = res.banners || [];
    notices.value = res.notices || [];
    newbie.value = res.newbie || [];
    high.value = res.high || [];
    latest.value = res.latest || [];
    finance.value = res.finance || [];
  }
  loading.value = false;
}

onShow(load);
onPullDownRefresh(async () => {
  await load();
  uni.stopPullDownRefresh();
});

function progress(g: Goods) {
  return Math.min(100, Math.round((g.filled_slots / g.total_slots) * 100));
}
function openGoods(id: number) {
  uni.navigateTo({ url: `/pages/goods/goods?id=${id}` });
}
function goInvite() {
  uni.navigateTo({ url: '/pages/invitation/invitation' });
}
function goFinance() {
  uni.navigateTo({ url: '/pages/finance/flist' });
}
</script>

<template>
  <view class="home">
    <view class="home-background" />
    <view class="nav-logo">
      <image class="logo" src="/static/logo.png" mode="heightFix" />
    </view>

    <!-- banner -->
    <swiper class="banner" :indicator-dots="true" :autoplay="true" :interval="3500" circular indicator-active-color="#ee5016">
      <swiper-item v-for="b in banners" :key="b.id">
        <image class="banner-img" :src="b.image" mode="aspectFill" />
      </swiper-item>
      <swiper-item v-if="!banners.length">
        <image class="banner-img" src="/static/image/home/banner.png" mode="aspectFill" />
      </swiper-item>
    </swiper>

    <!-- quick tabs -->
    <view class="qtab card">
      <view class="qtab-item" @click="goFinance">
        <image src="/static/image/home/finance.png" mode="aspectFit" />
        <text>Finance</text>
      </view>
      <view class="qtab-item" @click="() => uni.navigateTo({ url: '/pages/prize/prize' })">
        <image src="/static/image/home/prize.png" mode="aspectFit" />
        <text>Prizes</text>
      </view>
      <view class="qtab-item" @click="() => uni.switchTab({ url: '/pages/task/task' })">
        <image src="/static/image/home/task.png" mode="aspectFit" />
        <text>Tasks</text>
      </view>
      <view class="qtab-item" @click="() => uni.navigateTo({ url: '/pages/game/game' })">
        <image src="/static/image/home/game.png" mode="aspectFit" />
        <text>Game</text>
      </view>
    </view>

    <!-- notice -->
    <view v-if="notices.length" class="toast card">
      <image class="toast-icon" src="/static/image/icon_news.png" mode="aspectFit" />
      <swiper class="toast-swiper" vertical :autoplay="true" :interval="3000" circular :disable-touch="true">
        <swiper-item v-for="n in notices" :key="n.id">
          <text class="toast-text">{{ n.text }}</text>
        </swiper-item>
      </swiper>
    </view>

    <!-- invite -->
    <view class="invite" @click="goInvite">
      <image class="invite-icon" src="/static/image/home/invite.png" mode="aspectFit" />
      <text class="invite-main">Invite friends & earn rewards</text>
      <view class="invite-btn">Go</view>
    </view>

    <!-- newbie zone -->
    <view v-if="newbie.length" class="glist">
      <view class="header">
        <text class="header-title">Newbie Zone</text>
      </view>
      <scroll-view class="row" scroll-x>
        <view v-for="g in newbie" :key="g.id" class="gcard" @click="openGoods(g.id)">
          <image class="gcard-img" :src="g.image" mode="aspectFill" />
          <text class="gcard-name">{{ g.title }}</text>
          <text class="price">{{ formatMinor(g.price_minor) }}</text>
        </view>
      </scroll-view>
    </view>

    <!-- hot draws -->
    <view v-if="high.length" class="glist">
      <view class="header">
        <text class="header-title">Hot Draws</text>
      </view>
      <view v-for="g in high" :key="g.id" class="litem" @click="openGoods(g.id)">
        <image class="litem-img" :src="g.image" mode="aspectFill" />
        <view class="litem-right">
          <text class="lgoods-title">{{ g.title }}</text>
          <view class="prog">
            <view class="prog-bar"><view class="prog-fill" :style="{ width: progress(g) + '%' }" /></view>
            <text class="prog-text">{{ progress(g) }}%</text>
          </view>
          <view class="litem-price">
            <text class="price">{{ formatMinor(g.price_minor) }}</text>
            <text class="market">{{ formatMinor(g.market_price_minor) }}</text>
          </view>
        </view>
      </view>
    </view>

    <!-- latest -->
    <view v-if="latest.length" class="glist">
      <view class="header"><text class="header-title">Latest</text></view>
      <view v-for="g in latest" :key="g.id" class="litem" @click="openGoods(g.id)">
        <image class="litem-img" :src="g.image" mode="aspectFill" />
        <view class="litem-right">
          <text class="lgoods-title">{{ g.title }}</text>
          <text class="muted">Issue {{ g.issue }}</text>
          <view class="prog">
            <view class="prog-bar"><view class="prog-fill" :style="{ width: progress(g) + '%' }" /></view>
            <text class="prog-text">{{ progress(g) }}%</text>
          </view>
        </view>
      </view>
    </view>

    <view v-if="loading" class="nodata">Loading...</view>
    <view class="pad" />
  </view>
</template>

<style scoped lang="scss">
.home {
  position: relative;
  min-height: 100vh;
  padding: 0 20rpx 120rpx;
  background-color: #f6f6f6;
}
.home-background {
  height: 330rpx;
  width: 100%;
  position: absolute;
  top: 0;
  left: 0;
  background: linear-gradient(180deg, #ff7d4d, #ee5016);
}
.nav-logo {
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100rpx;
}
.logo {
  height: 60rpx;
}
.banner {
  width: 100%;
  height: 278rpx;
  border-radius: 16rpx;
  overflow: hidden;
}
.banner-img {
  width: 100%;
  height: 100%;
}
.qtab {
  display: flex;
  justify-content: space-around;
  padding: 26rpx 0;
  margin-top: 20rpx;
}
.qtab-item {
  display: flex;
  flex-direction: column;
  align-items: center;
}
.qtab-item image {
  width: 72rpx;
  height: 72rpx;
}
.qtab-item text {
  margin-top: 8rpx;
  font-size: 24rpx;
  color: #4f4f4f;
}
.toast {
  display: flex;
  align-items: center;
  padding: 16rpx 20rpx;
  margin-top: 20rpx;
}
.toast-icon {
  width: 40rpx;
  height: 40rpx;
  margin-right: 16rpx;
}
.toast-swiper {
  flex: 1;
  height: 44rpx;
}
.toast-text {
  font-size: 26rpx;
  color: #ee5016;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}
.invite {
  height: 100rpx;
  background: #ffe9e1;
  border-radius: 10rpx;
  margin-top: 20rpx;
  display: flex;
  align-items: center;
  padding: 0 30rpx;
}
.invite-icon {
  width: 64rpx;
  height: 56rpx;
}
.invite-main {
  flex: 1;
  margin-left: 24rpx;
  font-size: 30rpx;
  color: #ee5016;
}
.invite-btn {
  width: 110rpx;
  height: 54rpx;
  background: #ee5016;
  border-radius: 199rpx;
  line-height: 54rpx;
  color: #fff;
  text-align: center;
  font-size: 26rpx;
}
.glist {
  margin-top: 28rpx;
}
.header {
  padding: 10rpx 6rpx 16rpx;
}
.header-title {
  font-size: 34rpx;
  font-weight: 700;
  color: #17273a;
}
.row {
  white-space: nowrap;
}
.gcard {
  display: inline-block;
  width: 220rpx;
  margin-right: 20rpx;
  background: #fff;
  border-radius: 12rpx;
  padding: 16rpx;
  vertical-align: top;
}
.gcard-img {
  width: 188rpx;
  height: 188rpx;
  border-radius: 8rpx;
}
.gcard-name {
  display: block;
  width: 188rpx;
  font-size: 26rpx;
  margin-top: 10rpx;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}
.litem {
  display: flex;
  padding: 24rpx;
  background: #fff;
  border-radius: 12rpx;
  margin-bottom: 16rpx;
}
.litem-img {
  width: 184rpx;
  height: 184rpx;
  border-radius: 8rpx;
  margin-right: 24rpx;
}
.litem-right {
  flex: 1;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}
.lgoods-title {
  font-size: 30rpx;
  font-weight: 700;
  color: #000;
}
.prog {
  display: flex;
  align-items: center;
  margin: 14rpx 0;
}
.prog-bar {
  flex: 1;
  height: 12rpx;
  background: #f0f0f0;
  border-radius: 12rpx;
  overflow: hidden;
}
.prog-fill {
  height: 100%;
  background: linear-gradient(90deg, #ffe44b, #fea326);
}
.prog-text {
  width: 80rpx;
  text-align: right;
  font-size: 24rpx;
  color: #b9b9b9;
}
.litem-price {
  display: flex;
  align-items: center;
}
.market {
  margin-left: 20rpx;
  font-size: 26rpx;
  color: #b9b9b9;
  text-decoration: line-through;
}
.pad {
  height: 40rpx;
}
</style>
