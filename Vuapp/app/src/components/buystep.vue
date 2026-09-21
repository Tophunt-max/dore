<script setup lang="ts">
// ORich buystep: a 3-step "how it works" indicator. Decorative.
const props = defineProps<{ type?: number | string; page?: string }>();
const steps = ['Invest', 'Earn daily', 'Withdraw'];
</script>
<template>
  <view class="buystep">
    <view v-for="(s, i) in steps" :key="i" class="bs-item">
      <view class="bs-dot">{{ i + 1 }}</view>
      <text class="bs-label">{{ s }}</text>
      <view v-if="i < steps.length - 1" class="bs-line" />
    </view>
  </view>
</template>
<style scoped>
.buystep { display: flex; align-items: center; justify-content: space-between; }
.bs-item { display: flex; align-items: center; flex: 1; }
.bs-dot { width: 48rpx; height: 48rpx; line-height: 48rpx; text-align: center; border-radius: 50%; background: #fff; color: #ee5016; font-weight: 700; font-size: 28rpx; }
.bs-label { margin-left: 12rpx; color: #fff; font-size: 26rpx; white-space: nowrap; }
.bs-line { flex: 1; height: 2rpx; border-top: 2rpx dashed rgba(255, 255, 255, 0.6); margin: 0 12rpx; }
</style>
