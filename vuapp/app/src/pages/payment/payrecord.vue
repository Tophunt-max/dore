<script setup lang="ts">
import { ref } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { api } from '@/api/request';
import { formatMinor } from '@/utils/money';
const records = ref<any[]>([]);
onShow(async () => {
  const res = await api.get('/api/recharge/records');
  if (res.ok) records.value = res.records;
});
</script>
<template>
  <view class="page">
    <view v-for="r in records" :key="r.id" class="row card">
      <view class="l">
        <text class="t">Recharge · {{ r.method }}</text>
        <text class="muted">{{ new Date(r.created_at * 1000).toLocaleString() }}</text>
        <text v-if="r.utr" class="muted">UTR: {{ r.utr }}</text>
      </view>
      <view class="r">
        <text class="amt">{{ formatMinor(r.amount_minor) }}</text>
        <text class="st" :class="r.status">{{ r.status }}</text>
      </view>
    </view>
    <view v-if="!records.length" class="nodata">No recharge records</view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.row { display: flex; justify-content: space-between; padding: 24rpx; margin-bottom: 12rpx; }
.t { font-size: 28rpx; font-weight: 700; }
.muted { display: block; margin-top: 6rpx; font-size: 22rpx; color: #b9b9b9; }
.r { text-align: right; }
.amt { font-size: 30rpx; font-weight: 700; color: #ee5016; }
.st { display: block; margin-top: 6rpx; font-size: 24rpx; }
.st.pending { color: #fea326; }
.st.approved { color: #2bbf6a; }
.st.rejected { color: #ff5c5c; }
</style>
