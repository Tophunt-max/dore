<script setup lang="ts">
// uView u-verification-code clone: exposes `canGetCode` + `start()`, emits change/start/end.
import { ref, onUnmounted } from 'vue';
const props = defineProps<{
  seconds?: number;
  startText?: string;
  endText?: string;
  changeText?: string;
}>();
const emit = defineEmits<{ (e: 'change', text: string): void; (e: 'start'): void; (e: 'end'): void }>();

const canGetCode = ref(true);
let timer: any = null;
let remain = 0;

function tickText() {
  const tpl = props.changeText || 'Xs';
  return tpl.replace(/x/i, String(remain));
}

function start() {
  if (!canGetCode.value) return;
  canGetCode.value = false;
  remain = props.seconds ?? 60;
  emit('start');
  emit('change', tickText());
  timer = setInterval(() => {
    remain--;
    if (remain <= 0) {
      clearInterval(timer);
      canGetCode.value = true;
      emit('change', props.endText || props.startText || 'Get');
      emit('end');
    } else {
      emit('change', tickText());
    }
  }, 1000);
}

// initial idle text
emit('change', props.startText || 'Get');
onUnmounted(() => timer && clearInterval(timer));
defineExpose({ canGetCode, start });
</script>
<template><text class="u-vcode" /></template>
<style scoped>
.u-vcode { display: none; }
</style>
