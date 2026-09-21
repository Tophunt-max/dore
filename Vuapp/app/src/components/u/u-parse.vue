<script setup lang="ts">
// uView u-parse clone: render rich HTML via uni <rich-text>.
const props = defineProps<{ content?: string; html?: string }>();
</script>
<template>
  <rich-text :nodes="(props.content || props.html || '') as any" />
</template>
<style scoped></style>
