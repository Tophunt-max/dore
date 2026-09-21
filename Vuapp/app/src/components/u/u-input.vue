<script setup lang="ts">
// uView u-input clone (Vue3 v-model). Supports inputAlign + height.
import { computed } from 'vue';
const props = defineProps<{
  modelValue?: string | number;
  value?: string | number;
  placeholder?: string;
  inputAlign?: string;
  height?: number | string;
  type?: string;
  disabled?: boolean;
}>();
const emit = defineEmits<{
  (e: 'update:modelValue', v: string): void;
  (e: 'input', v: string): void;
  (e: 'focus'): void;
  (e: 'blur'): void;
}>();
const val = computed(() => (props.modelValue ?? props.value ?? '') as any);
const h = computed(() => {
  const v = props.height ?? 72;
  return typeof v === 'number' || /^\d+$/.test(String(v)) ? `${v}rpx` : String(v);
});
function onInput(e: any) {
  const v = e.detail.value;
  emit('update:modelValue', v);
  emit('input', v);
}
</script>
<template>
  <input
    class="u-input"
    :value="val"
    :type="props.type || 'text'"
    :placeholder="props.placeholder"
    :disabled="props.disabled"
    :style="{ height: h, textAlign: (props.inputAlign as any) || 'left' }"
    @input="onInput"
    @focus="emit('focus')"
    @blur="emit('blur')"
  />
</template>
<style scoped>
.u-input { width: 100%; font-size: 28rpx; color: #17273a; }
</style>
