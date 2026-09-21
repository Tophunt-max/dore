<script setup lang="ts">
// Faithful port of ORich pages/order/record.
import { ref } from 'vue';
import { onLoad, onShow } from '@dcloudio/uni-app';
import { useI18n } from 'vue-i18n';
import { userOrder } from '@/api/orich';

const { t } = useI18n();
const mescroll = ref<any>(null);
const downOption = { use: true, auto: true };
const upOption = { use: true, auto: true, page: { num: 0, size: 20 } };
const list = [
  { name: t('account.all'), status: 0 },
  { name: t('account.waiting'), status: 1 },
  { name: t('account.todelivery'), status: 3 },
  { name: t('account.indelivery'), status: 4 },
  { name: t('account.completed'), status: 5 },
];
const current = ref(0);
const orderStatus = ref(0);
const cardList = ref<any[]>([]);
const showPopup = ref(false);
const orderID = ref<any>('');
const firstLoad = ref(true);
const popup = ref<any>(null);

onLoad((q: any) => {
  if (q?.type) change(Number(q.type));
});
onShow(() => {
  setTimeout(() => {
    if (!firstLoad.value && mescroll.value) mescroll.value.resetUpScroll();
  });
});

function mescrollInit(ms: any) {
  mescroll.value = ms;
}
function downCallback() {
  mescroll.value && mescroll.value.resetUpScroll();
}
function change(i: number) {
  current.value = i;
  orderStatus.value = list[i].status;
  mescroll.value && mescroll.value.resetUpScroll();
}
function upCallback(page: any) {
  const start = (page.num - 1) * page.size;
  userOrder({ status: orderStatus.value, start, limit: page.size })
    .then((s: any) => {
      firstLoad.value = false;
      const l = s.list || [];
      if (page.num === 1) cardList.value = [];
      cardList.value = cardList.value.concat(l);
      mescroll.value && mescroll.value.endBySize(l.length, s.count);
    })
    .catch(() => mescroll.value && mescroll.value.endErr());
}
function toDetail(id: any) {
  uni.navigateTo({ url: `/pages/order/detail?id=${id}` });
}
function toDiscount(code: number, id: any) {
  if (code == 2) uni.navigateTo({ url: `/pages/order/discount?id=${id}` });
  else toDetail(id);
}
function handleShare(item: any) {
  orderID.value = item.dumid || item.id;
  popup.value && popup.value.open();
}
function handleSkip(code: number, id: any) {
  let url = '';
  switch (+code) {
    case 1:
      url = `../goods/goods?id=${id}`;
      break;
    case 5:
      url = `../bask/index?id=${id}`;
      break;
    default:
      url = `../order/detail?id=${id}`;
  }
  uni.navigateTo({ url });
}
function handleBack() {
  uni.switchTab({ url: '/pages/account/account' });
}
</script>

<template>
  <view class="record">
    <navbar :title="$t('order.records')" background="#ffffff" isComfirm @beforeBack="handleBack" />
    <navtabs :list="list" :activeIndex="current" @active="change" />
    <mescroll-body ref="mescrollRef" :down="downOption" :up="upOption" @init="mescrollInit" @down="downCallback" @up="upCallback">
      <view class="record_main_card">
        <cardlist
          :cardList="cardList"
          @navNext="toDetail"
          @navToDetail="toDetail"
          @share="handleShare"
          @handleSkip="handleSkip"
          @navToDiscount="toDiscount"
        />
        <view v-if="!cardList.length" class="nodata">{{ $t('common.nodata') }}</view>
      </view>
    </mescroll-body>
    <sharepopup ref="popup" :showPopup="showPopup" shareType="2" :orderID="orderID" />
  </view>
</template>

<style scoped>
/* Verbatim scoped CSS from ORich pages/order/record */
.record { min-height: 100vh; background: #f9f9f9; }
.record_loading { padding-top: 20rpx; text-align: center; background: #f9f9f9; }
.record_main { background: #f9f9f9; }
.record_main_card { background: #f9f9f9; padding: 16rpx 30rpx; }
</style>
