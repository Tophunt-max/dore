<script setup lang="ts">
import { ref, onMounted } from 'vue';
import { adminApi, fmt } from '../api';

const status = ref('pending');
const list = ref<any[]>([]);
const statuses = ['pending', 'paid', 'rejected'];

async function load() {
  const res = await adminApi.withdrawals(status.value);
  if (res.ok) list.value = res.withdrawals;
}
onMounted(load);
function switchStatus(s: string) {
  status.value = s;
  load();
}
function payee(w: any) {
  if (w.ben_type === 'upi') return w.upi_id;
  if (w.ben_type === 'bank') return `${w.account_no} · ${w.ifsc}`;
  return '-';
}
async function review(w: any, action: string) {
  const verb = action === 'approve' ? 'mark as PAID' : 'reject & refund';
  if (!confirm(`${verb} withdrawal #${w.id} of ${fmt(w.amount_minor)}?`)) return;
  const res = await adminApi.reviewWithdrawal(w.id, action);
  if (res.ok) load();
  else alert(res.error);
}
</script>

<template>
  <div class="tabbar">
    <div v-for="s in statuses" :key="s" class="t" :class="{ on: status === s }" @click="switchStatus(s)">{{ s }}</div>
  </div>
  <div class="panel">
    <table>
      <thead><tr><th>ID</th><th>User</th><th>Amount</th><th>Payee</th><th>Status</th><th></th></tr></thead>
      <tbody>
        <tr v-for="w in list" :key="w.id">
          <td>#{{ w.id }}</td>
          <td>{{ w.username }}<br /><span class="muted">{{ w.phone }}</span></td>
          <td>{{ fmt(w.amount_minor) }}</td>
          <td>{{ w.holder_name }}<br /><span class="muted">{{ payee(w) }}</span></td>
          <td><span class="tag" :class="w.status">{{ w.status }}</span></td>
          <td class="row-actions">
            <template v-if="w.status === 'pending'">
              <button class="btn sm green" @click="review(w, 'approve')">Mark Paid</button>
              <button class="btn sm red" @click="review(w, 'reject')">Reject</button>
            </template>
          </td>
        </tr>
      </tbody>
    </table>
    <div v-if="!list.length" class="muted">No {{ status }} withdrawals</div>
  </div>
</template>
