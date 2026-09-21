<script setup lang="ts">
import { ref, onMounted } from 'vue';
import { adminApi, fmt } from '../api';

const status = ref('pending');
const list = ref<any[]>([]);
const statuses = ['pending', 'approved', 'rejected'];

async function load() {
  const res = await adminApi.recharges(status.value);
  if (res.ok) list.value = res.recharges;
}
onMounted(load);
function switchStatus(s: string) {
  status.value = s;
  load();
}
async function review(r: any, action: string) {
  if (!confirm(`${action} recharge #${r.id} of ${fmt(r.amount_minor)}?`)) return;
  const res = await adminApi.reviewRecharge(r.id, action);
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
      <thead><tr><th>ID</th><th>User</th><th>Amount</th><th>Method</th><th>UTR</th><th>Proof</th><th>Status</th><th></th></tr></thead>
      <tbody>
        <tr v-for="r in list" :key="r.id">
          <td>#{{ r.id }}</td>
          <td>{{ r.username }}<br /><span class="muted">{{ r.phone }}</span></td>
          <td>{{ fmt(r.amount_minor) }}</td>
          <td>{{ r.method }}</td>
          <td>{{ r.utr || '-' }}</td>
          <td><a v-if="r.proof_key" :href="adminApi.proofUrl(r.id)" target="_blank" class="muted">view</a><span v-else>-</span></td>
          <td><span class="tag" :class="r.status">{{ r.status }}</span></td>
          <td class="row-actions">
            <template v-if="r.status === 'pending'">
              <button class="btn sm green" @click="review(r, 'approve')">Approve</button>
              <button class="btn sm red" @click="review(r, 'reject')">Reject</button>
            </template>
          </td>
        </tr>
      </tbody>
    </table>
    <div v-if="!list.length" class="muted">No {{ status }} recharges</div>
  </div>
</template>
