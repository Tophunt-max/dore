<script setup lang="ts">
import { ref, onMounted } from 'vue';
import { adminApi, fmt } from '../api';

const s = ref<any>(null);
onMounted(async () => {
  const res = await adminApi.stats();
  if (res.ok) s.value = res.stats;
});
</script>

<template>
  <div v-if="s" class="cards">
    <div class="stat"><div class="v">{{ s.users }}</div><div class="l">Users</div></div>
    <div class="stat"><div class="v">{{ s.orders }}</div><div class="l">Orders</div></div>
    <div class="stat"><div class="v">{{ fmt(s.gmv_minor) }}</div><div class="l">GMV</div></div>
    <div class="stat"><div class="v">{{ fmt(s.wallet_liability_minor) }}</div><div class="l">Wallet liability</div></div>
    <div class="stat"><div class="v" style="color:#e6851e">{{ s.pending_recharges }}</div><div class="l">Pending recharges</div></div>
    <div class="stat"><div class="v" style="color:#e6851e">{{ s.pending_withdrawals }}</div><div class="l">Pending withdrawals</div></div>
  </div>
  <div v-else class="muted">Loading...</div>
</template>
