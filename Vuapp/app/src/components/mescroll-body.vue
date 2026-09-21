<script setup lang="ts">
// Minimal mescroll-body: pull-to-refresh + reach-bottom scroll container.
// Emits `init` with a mescroll stub, and `down`/`up` with a {num,size} page
// object, matching how ORich pages drive their lists.
import { onMounted } from 'vue';
const props = defineProps<{ down?: any; up?: any; height?: number | string }>();
const emit = defineEmits<{ (e: 'init', ms: any): void; (e: 'down', p: any): void; (e: 'up', p: any): void }>();

const size = () => props.up?.page?.size || 20;
let num = 1;

const mescroll = {
  endSuccess() {},
  endErr() {},
  endBySize() {},
  resetUpScroll() {
    num = 1;
    emit('up', { num, size: size() });
  },
  triggerDownScroll() {
    emit('down', { num: 1, size: size() });
  },
};

onMounted(() => {
  emit('init', mescroll);
  if (props.down?.auto !== false) emit('down', { num: 1, size: size() });
  if (props.up?.auto !== false) emit('up', { num: 1, size: size() });
});

function onRefresh(e: any) {
  emit('down', { num: 1, size: size() });
  mescroll.resetUpScroll();
  // stop the native refresher shortly after
  setTimeout(() => {
    (e && e.target && (e.target.refresherTriggered = false));
  }, 600);
}
function onLower() {
  num += 1;
  emit('up', { num, size: size() });
}

const styleObj = props.height
  ? { height: typeof props.height === 'number' ? props.height + 'rpx' : String(props.height) }
  : {};
</script>
<template>
  <scroll-view class="mescroll" :style="styleObj" scroll-y :refresher-enabled="true" @refresherrefresh="onRefresh" @scrolltolower="onLower">
    <slot />
  </scroll-view>
</template>
<style scoped>
.mescroll { width: 100%; min-height: 200rpx; }
</style>
