<script setup lang="ts">
// Faithful port of ORich pages/richtext/rule (rich text content page).
import { ref } from 'vue';
import { onLoad } from '@dcloudio/uni-app';
import { PageContent } from '@/api/orich';

const page = ref<any>({ title: 'Rules', body: '' });
onLoad(() => {
  PageContent('rule').then((r: any) => {
    if (r && r.ok !== false && r.page) page.value = r.page;
  });
});
</script>
<template>
  <view class="rich">
    <navbar :title="page.title" background="#ffffff" />
    <view class="rich-main">
      <u-parse :content="page.body" />
    </view>
  </view>
</template>
<style scoped>
.rich { min-height: 100vh; background: #fff; }
.rich-main { padding: 30rpx; font-size: 28rpx; color: #333; line-height: 48rpx; }
</style>
