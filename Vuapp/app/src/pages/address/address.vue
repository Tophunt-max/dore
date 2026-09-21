<script setup lang="ts">
import { ref } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { api } from '@/api/request';
const list = ref<any[]>([]);
async function load() {
  const res = await api.get('/api/addresses');
  if (res.ok) list.value = res.addresses;
}
onShow(load);
function add() {
  uni.navigateTo({ url: '/pages/address/add' });
}
async function del(id: number) {
  const res = await api.del(`/api/addresses/${id}`);
  if (res.ok) load();
}
</script>
<template>
  <view class="page">
    <view v-for="a in list" :key="a.id" class="card acard">
      <view class="arow">
        <text class="an">{{ a.name }} · {{ a.phone }}</text>
        <text v-if="a.is_default" class="def">Default</text>
      </view>
      <text class="al">{{ a.line }}, {{ a.city }} {{ a.state }} - {{ a.pincode }}</text>
      <text class="del" @click="del(a.id)">Delete</text>
    </view>
    <view v-if="!list.length" class="nodata">No addresses yet</view>
    <view class="addbtn primary-btn" @click="add">+ Add Address</view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.acard { padding: 30rpx; margin-bottom: 16rpx; position: relative; }
.arow { display: flex; align-items: center; }
.an { font-size: 30rpx; font-weight: 700; }
.def { margin-left: 16rpx; font-size: 22rpx; color: #fff; background: #ee5016; padding: 2rpx 14rpx; border-radius: 8rpx; }
.al { display: block; margin-top: 14rpx; color: #666; font-size: 28rpx; }
.del { position: absolute; right: 30rpx; bottom: 30rpx; color: #ff5c5c; font-size: 26rpx; }
.addbtn { height: 88rpx; line-height: 88rpx; margin-top: 30rpx; font-size: 30rpx; }
</style>
