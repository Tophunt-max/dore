<script setup lang="ts">
// ORich navtabs: horizontal status tabs. list: [{name,status}], activeIndex.
const props = defineProps<{ list?: any[]; activeIndex?: number }>();
const emit = defineEmits<{ (e: 'active', index: number): void }>();
</script>
<template>
  <view class="navtabs">
    <view
      v-for="(t, i) in list || []"
      :key="i"
      class="navtabs-item"
      :class="{ on: (activeIndex || 0) === i }"
      @click="emit('active', i)"
    >
      <text class="navtabs-text">{{ t.name }}</text>
      <view class="navtabs-line" />
    </view>
  </view>
</template>
<style scoped>
.navtabs { display: flex; align-items: center; justify-content: space-between; background: #fff; padding: 0 20rpx; border-bottom: 2rpx solid #f2f2f2; }
.navtabs-item { flex: 1; display: flex; flex-direction: column; align-items: center; padding: 24rpx 0 14rpx; }
.navtabs-text { font-size: 28rpx; color: #b9b9b9; }
.navtabs-item.on .navtabs-text { color: #17273a; font-weight: 700; }
.navtabs-line { width: 40rpx; height: 6rpx; border-radius: 6rpx; margin-top: 10rpx; background: transparent; }
.navtabs-item.on .navtabs-line { background: #ee5016; }
</style>
