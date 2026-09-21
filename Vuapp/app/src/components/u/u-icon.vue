<script setup lang="ts">
// Minimal uView-style icon. Maps the icon names ORich uses to glyphs.
import { computed } from 'vue';
const props = defineProps<{ name?: string; color?: string; size?: string | number }>();
const emit = defineEmits<{ (e: 'click'): void }>();
const glyphs: Record<string, string> = {
  'arrow-left': '\u2039',
  'arrow-right': '\u203A',
  'arrow-up': '\u2303',
  'arrow-down': '\u2304',
  close: '\u00D7',
  'close-circle': '\u2297',
  checkmark: '\u2713',
  'checkmark-circle': '\u2714',
  search: '\u26B2',
  plus: '+',
  minus: '\u2212',
  more: '\u22EF',
  scan: '\u25A6',
  share: '\u21AA',
};
const glyph = computed(() => glyphs[props.name || ''] || '\u2022');
const fontSize = computed(() => {
  const s = props.size ?? 28;
  return typeof s === 'number' || /^\d+$/.test(String(s)) ? `${s}px` : String(s);
});
</script>
<template>
  <text class="u-icon" :style="{ color: props.color || '#303133', fontSize }" @click="emit('click')">{{ glyph }}</text>
</template>
<style scoped>
.u-icon { display: inline-flex; align-items: center; justify-content: center; line-height: 1; }
</style>
