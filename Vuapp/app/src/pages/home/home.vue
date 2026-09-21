<script setup lang="ts">
// Faithful port of ORich pages/home/home (verbatim CSS in ./home.css).
import { ref, computed } from 'vue';
import { onShow, onPageScroll, onPullDownRefresh } from '@dcloudio/uni-app';
import { HomeData } from '@/api/orich';
import { LOCALES, setLocale, currentLocale } from '@/locale';
import { formatMinor } from '@/utils/money';

const H = '/static/image/home';
const bannerList = ref<any[]>([]);
const newsList = ref<string[]>([]);
const newbieList = ref<any[]>([]);
const highList = ref<any[]>([]);
const financeList = ref<any[]>([]);
const goodsList = ref<any[]>([]);
const showLang = ref(false);
const navBg = ref('transparent');
const titleColor = ref('#ffffff');
const ltabIndex = ref(0);

const reLanguage = computed(() => (LOCALES.find((l) => l.code === currentLocale())?.label) || 'English');

const quickNav = [
  { img: `${H}/icon_1GroupBuy.png`, text: 'Group Buy', fn: () => uni.navigateTo({ url: '/pages/prize/prize' }) },
  { img: `${H}/icon_Category.png`, text: 'Finance', fn: () => uni.navigateTo({ url: '/pages/finance/flist' }) },
  { img: '/static/image/goods/icon_Trophy.png', text: 'Hot', fn: () => uni.switchTab({ url: '/pages/task/task' }) },
  { img: `${H}/icon_news.png`, text: 'Game', fn: () => uni.navigateTo({ url: '/pages/game/game' }) },
];
const ltabs = ['home.lnew', 'home.lhot', 'home.lsoon'];

function progress(g: any) {
  return Math.min(100, Math.round(((g.filled_slots || 0) / (g.total_slots || 1)) * 100));
}
function load() {
  HomeData().then((r: any) => {
    if (!r || r.ok === false) return;
    bannerList.value = (r.banners || []).map((b: any) => b.image);
    newsList.value = (r.notices || []).map((n: any) => n.text);
    newbieList.value = r.newbie || [];
    highList.value = r.high || [];
    financeList.value = r.finance || [];
    goodsList.value = r.latest || [];
  });
}
onShow(load);
onPullDownRefresh(() => {
  load();
  setTimeout(() => uni.stopPullDownRefresh(), 600);
});
onPageScroll((e: any) => {
  const on = e.scrollTop > 60;
  navBg.value = on ? '#ffffff' : 'transparent';
  titleColor.value = on ? '#17273a' : '#ffffff';
});

function toGoods(id: number) {
  uni.navigateTo({ url: `/pages/goods/goods?id=${id}` });
}
function toInvite() {
  uni.navigateTo({ url: '/pages/invitation/invitation' });
}
function toFinance() {
  uni.navigateTo({ url: '/pages/finance/flist' });
}
function changLang(code: string) {
  setLocale(code);
  showLang.value = false;
}
</script>

<template>
  <view class="home">
    <navbar :isBack="false" :titleColor="titleColor" :background="navBg" :title="$t('common.orich')">
      <template #right>
        <view class="home-lang" @click="showLang = true">
          <text :style="{ color: titleColor }">{{ reLanguage }}</text>
          <u-icon name="arrow-down" :color="titleColor" size="28" />
        </view>
      </template>
    </navbar>

    <view class="home-background" />

    <view id="toTop" class="toTop">
      <view v-if="bannerList.length" class="banner">
        <u-swiper class="banner-swiper" height="300" :list="bannerList" img-mode="scaleToFill" />
      </view>

      <view class="tab">
        <view v-for="(q, i) in quickNav" :key="i" class="tab-item" @click="q.fn()">
          <image :src="q.img" mode="aspectFit" />
          <view class="tab-item-text">{{ q.text }}</view>
        </view>
      </view>

      <view v-if="newsList.length" class="toast">
        <swiper class="toast-swiper" vertical circular :autoplay="true" :interval="3000" :disable-touch="true">
          <swiper-item v-for="(n, i) in newsList" :key="i">
            <view class="toast-swiper-item">
              <view class="toast-swiper-item-img"><image :src="`${H}/icon_news.png`" mode="aspectFit" /></view>
              <view class="toast-swiper-item-main"><text class="name">{{ n }}</text></view>
            </view>
          </swiper-item>
        </swiper>
      </view>

      <view class="invite" @click="toInvite">
        <view class="invite-icon"><image :src="`${H}/icon_1GroupBuy.png`" mode="aspectFit" /></view>
        <view class="invite-main">{{ $t('home.invitemoney') }}</view>
        <view class="invite-btn">{{ $t('home.gotitle') }}</view>
      </view>

      <view v-if="newbieList.length" class="glist">
        <view class="header">
          <view class="header-title">{{ $t('home.newbie') }}</view>
          <view class="header-right">{{ $t('home.more') }}</view>
        </view>
        <scroll-view class="main" scroll-x>
          <view v-for="g in newbieList" :key="g.id" class="item" @click="toGoods(g.id)">
            <view class="item-show"><image :src="g.image" mode="aspectFill" /></view>
            <view class="item-text">
              <view class="item-name otw">{{ g.title }}</view>
              <view class="item-count">{{ formatMinor(g.price_minor) }}</view>
            </view>
          </view>
        </scroll-view>
      </view>

      <view v-if="highList.length" class="glist high">
        <view class="header">
          <view class="header-title">{{ $t('home.high') }}</view>
          <view class="header-right">{{ $t('home.more') }}</view>
        </view>
        <scroll-view class="main" scroll-x>
          <view v-for="g in highList" :key="g.id" class="item" @click="toGoods(g.id)">
            <view class="item-show"><image :src="g.image" mode="aspectFill" /></view>
            <view class="item-text">
              <view class="item-name otw">{{ g.title }}</view>
              <view class="item-count">{{ formatMinor(g.price_minor) }}</view>
            </view>
          </view>
        </scroll-view>
      </view>

      <view v-if="financeList.length" class="finance">
        <view class="finance-header">
          <view class="finance-header-item">
            <view class="title">{{ $t('finance.htitle') }}</view>
          </view>
          <view class="finance-header-item" @click="toFinance">
            <view class="more">{{ $t('home.more') }}</view>
          </view>
        </view>
        <scroll-view class="finance-main" scroll-x>
          <view v-for="f in financeList" :key="f.id" class="finance-main-card" @click="toFinance">
            <view class="finance-main-card-content">
              <view class="ctitle otw">{{ f.title }}</view>
              <view class="linepro"><lineprogress :percent="60" /></view>
              <view class="ditem">
                <text class="ditem-title">{{ (f.rate_bps / 100).toFixed(1) }}% APR · {{ f.term_days }}d</text>
              </view>
            </view>
          </view>
        </scroll-view>
      </view>

      <view class="home-list">
        <view class="ltab">
          <view class="ltab-price">{{ $t('home.all') }}</view>
          <view class="ltab-tab">
            <view
              v-for="(t, i) in ltabs"
              :key="i"
              class="ltab-item"
              :class="{ 'ltab-item-active': ltabIndex === i }"
              @click="ltabIndex = i"
            >
              <view class="ltab-item-text">{{ $t(t) }}</view>
            </view>
          </view>
        </view>
        <view v-for="g in goodsList" :key="g.id" class="litem" @click="toGoods(g.id)">
          <view class="litem-left">
            <image class="litem-img" :src="g.image" mode="aspectFill" />
          </view>
          <view class="litem-right">
            <view class="lgoods-title otw">{{ g.title }}</view>
            <view class="lgoods-end">{{ $t('home.needed') }} {{ g.total_slots - g.filled_slots }}</view>
            <view class="lgoods-precent">
              <view class="lgoods-progress"><lineprogress :percent="progress(g)" /></view>
              <view class="lgoods-progress-text">{{ progress(g) }}%</view>
            </view>
            <view class="litem-price"><text class="price">{{ formatMinor(g.price_minor) }}</text></view>
          </view>
        </view>
        <view v-if="!goodsList.length" class="nodata">{{ $t('common.nodata') }}</view>
      </view>
    </view>

    <view v-if="showLang" class="lang-mask" @click="showLang = false">
      <view class="lang-box" @click.stop>
        <view v-for="l in LOCALES" :key="l.code" class="lang-item" :class="{ on: currentLocale() === l.code }" @click="changLang(l.code)">
          {{ l.label }}
        </view>
      </view>
    </view>
  </view>
</template>

<style>
/* Verbatim ORich home scoped CSS (scope stripped; namespaced by .home) */
@import './home.css';
</style>

<style scoped>
/* small extras for reused elements */
.home-background { background: linear-gradient(180deg, #ff7d4d, #ee5016) !important; }
.home-lang { display: flex; flex-direction: row; align-items: center; padding-right: 20rpx; }
.home-lang text { font-size: 26rpx; margin-right: 6rpx; }
.tab { display: flex; flex-direction: row; align-items: center; justify-content: center; padding: 26rpx 30rpx; background-color: #fff; margin: 20rpx; border-radius: 16rpx; }
.tab .tab-item { flex: 1; text-align: center; }
.tab .tab-item image { width: 84rpx; height: 84rpx; }
.finance .finance-main-card .linepro { width: 320rpx; margin: 16rpx 0; }
.lgoods-progress { flex: 1; }
.lang-mask { position: fixed; inset: 0; z-index: 99999; background: rgba(0, 0, 0, 0.5); display: flex; align-items: flex-start; justify-content: flex-end; }
.lang-box { margin-top: 120rpx; margin-right: 24rpx; background: #fff; border-radius: 16rpx; overflow: hidden; min-width: 220rpx; }
.lang-item { padding: 28rpx 40rpx; font-size: 30rpx; border-bottom: 2rpx solid #f5f5f5; }
.lang-item.on { color: #ee5016; font-weight: 700; }
</style>
