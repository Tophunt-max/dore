<script setup lang="ts">
// Faithful port of ORich pages/help/help (FAQ topics).
import { ref } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { HelpArticles } from '@/api/orich';

const topics = ref<any[]>([]);

onShow(async () => {
  const r: any = await HelpArticles();
  if (r.ok) {
    const seen: Record<string, any> = {};
    (r.articles || []).forEach((a: any) => {
      if (!seen[a.topic]) seen[a.topic] = { topic: a.topic, items: [] };
      seen[a.topic].items.push(a);
    });
    topics.value = Object.values(seen);
  }
});

function open(topic: string) {
  uni.navigateTo({ url: `./help_detail?topic=${topic}` });
}
</script>

<template>
  <view class="help">
    <navbar :title="$t('help.navtitle')" background="#ffffff" />
    <view class="help_main">
      <view v-for="t in topics" :key="t.topic" class="help_group" @click="open(t.topic)">
        <view class="help_group_left">
          <image class="help_icon" src="/static/image/icon_faq.png" mode="aspectFit" />
          <view class="help_group_title">{{ t.topic }}</view>
        </view>
        <view class="help_group_right">
          <text class="help_count">{{ t.items.length }}</text>
          <u-icon name="arrow-right" color="#cccccc" size="14" />
        </view>
      </view>
      <view v-if="!topics.length" class="nodata">{{ $t('common.nodata') }}</view>
    </view>
  </view>
</template>

<style>
@import './help.css';
</style>

<style scoped>
.help { min-height: 100vh; background: #f9f9f9; }
.help_main { background: #fff; margin-top: 16rpx; padding: 0 30rpx; }
.help_group { display: flex; align-items: center; justify-content: space-between; height: 110rpx; border-bottom: 2rpx solid #f5f5f5; }
.help_group:last-child { border-bottom: none; }
.help_group_left { display: flex; align-items: center; }
.help_icon { width: 40rpx; height: 40rpx; margin-right: 20rpx; }
.help_group_title { font-size: 30rpx; color: #17273a; text-transform: capitalize; }
.help_group_right { display: flex; align-items: center; }
.help_count { font-size: 24rpx; color: #b9b9b9; margin-right: 10rpx; }
</style>
