<script setup lang="ts">
// The native uni tabBar (declared in pages.json) renders the bottom navigation.
// ORich rendered a custom tabbar component; we keep this as a no-op placeholder
// so faithfully-ported pages that include <tabbar/> do not double the bar.
</script>
<template><view class="tabbar-placeholder" /></template>
<style scoped>
.tabbar-placeholder { display: none; }
</style>
