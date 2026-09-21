<script setup lang="ts">
// uView u-swiper clone: image carousel. `list` may be string urls or objects.
import { computed } from 'vue';
const props = defineProps<{ list?: any[]; height?: number | string; imgMode?: string; borderRadius?: number | string }>();
const emit = defineEmits<{ (e: 'click', index: number): void }>();
const h = computed(() => {
  const v = props.height ?? 300;
  return typeof v === 'number' || /^\d+$/.test(String(v)) ? `${v}rpx` : String(v);
});
function src(it: any) {
  return typeof it === 'string' ? it : it.image || it.url || it.pic;
}
</script>
<template>
  <swiper class="u-swiper" :style="{ height: h }" circular :autoplay="true" :interval="3500" indicator-dots indicator-active-color="#ffffff">
    <swiper-item v-for="(it, i) in list || []" :key="i" @click="emit('click', i)">
      <image class="u-swiper-img" :src="src(it)" :mode="(imgMode as any) || 'scaleToFill'" />
    </swiper-item>
  </swiper>
</template>
<style scoped>
.u-swiper { width: 100%; }
.u-swiper-img { width: 100%; height: 100%; display: block; }
</style>
