<script setup lang="ts">
// Minimal mescroll-body: a pull-to-refresh + reach-bottom scroll container.
// Emits `init` with a stub mescroll object, `down` (refresh) and `up` (load more),
// matching how ORich pages drive their lists.
import { onMounted } from 'vue';
const emit = defineEmits<{ (e: 'init', ms: any): void; (e: 'down', ms: any): void; (e: 'up', ms: any): void }>();

const mescroll = {
  endSuccess() {},
  endErr() {},
  endBySize() {},
  resetUpScroll() {
    emit('up', mescroll);
  },
  triggerDownScroll() {
    emit('down', mescroll);
  },
};

onMounted(() => {
  emit('init', mescroll);
  // initial data load
  emit('down', mescroll);
});

function onRefresh() {
  emit('down', mescroll);
}
function onLower() {
  emit('up', mescroll);
}
</script>
<template>
  <scroll-view class="mescroll" scroll-y :refresher-enabled="true" @refresherrefresh="onRefresh" @scrolltolower="onLower">
    <slot />
  </scroll-view>
</template>
<style scoped>
.mescroll { height: 100%; width: 100%; }
</style>
