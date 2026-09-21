<script setup lang="ts">
import { ref } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { api } from '@/api/request';
const list = ref<any[]>([]);
async function load() {
  const res = await api.get('/api/beneficiaries');
  if (res.ok) list.value = res.beneficiaries;
}
onShow(load);
function add() {
  uni.navigateTo({ url: '/pages/payment/add' });
}
async function del(id: number) {
  const res = await api.del(`/api/beneficiaries/${id}`);
  if (res.ok) load();
}
</script>
<template>
  <view class="page">
    <view v-for="b in list" :key="b.id" class="card bcard">
      <view class="brow">
        <text class="btype">{{ b.type === 'upi' ? 'UPI' : 'Bank' }}</text>
        <text class="del" @click="del(b.id)">Delete</text>
      </view>
      <text class="bname">{{ b.holder_name }}</text>
      <text class="bacc">{{ b.type === 'upi' ? b.upi_id : b.account_no + ' · ' + b.ifsc }}</text>
    </view>
    <view v-if="!list.length" class="nodata">No beneficiaries yet</view>
    <view class="addbtn primary-btn" @click="add">+ Add Beneficiary</view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.bcard { padding: 30rpx; margin-bottom: 16rpx; }
.brow { display: flex; justify-content: space-between; }
.btype { font-size: 26rpx; color: #fff; background: #ee5016; padding: 4rpx 20rpx; border-radius: 8rpx; }
.del { color: #ff5c5c; font-size: 26rpx; }
.bname { display: block; margin-top: 20rpx; font-size: 32rpx; font-weight: 700; }
.bacc { display: block; margin-top: 10rpx; color: #666; font-size: 28rpx; }
.addbtn { height: 88rpx; line-height: 88rpx; margin-top: 30rpx; font-size: 30rpx; }
</style>
