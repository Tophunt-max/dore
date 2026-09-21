<script setup lang="ts">
import { ref, onMounted } from 'vue';
import { adminApi, fmt } from '../api';

const users = ref<any[]>([]);
const q = ref('');

async function load() {
  const res = await adminApi.users(q.value);
  if (res.ok) users.value = res.users;
}
onMounted(load);

async function toggle(u: any) {
  const status = u.status === 'active' ? 'blocked' : 'active';
  const res = await adminApi.setUserStatus(u.id, status);
  if (res.ok) u.status = status;
}
async function adjust(u: any) {
  const val = prompt(`Adjust balance for ${u.username} (₹, negative to debit):`);
  if (!val) return;
  const note = prompt('Note:') || 'admin adjustment';
  const res = await adminApi.adjust(u.id, Math.round(parseFloat(val) * 100), note);
  if (res.ok) u.balance_minor = res.balance_after;
  else alert(res.error);
}
</script>

<template>
  <div class="panel">
    <div style="display:flex; gap:10px; margin-bottom:16px">
      <input v-model="q" class="input" placeholder="Search phone or username" @keyup.enter="load" />
      <button class="btn" @click="load">Search</button>
    </div>
    <table>
      <thead><tr><th>ID</th><th>Phone</th><th>Username</th><th>Balance</th><th>Invite</th><th>Status</th><th></th></tr></thead>
      <tbody>
        <tr v-for="u in users" :key="u.id">
          <td>#{{ u.id }}</td>
          <td>{{ u.phone }}</td>
          <td>{{ u.username }}</td>
          <td>{{ fmt(u.balance_minor) }}</td>
          <td>{{ u.invite_code }}</td>
          <td><span class="tag" :class="u.status">{{ u.status }}</span></td>
          <td class="row-actions">
            <button class="btn sm gray" @click="adjust(u)">Adjust</button>
            <button class="btn sm" :class="u.status === 'active' ? 'red' : 'green'" @click="toggle(u)">
              {{ u.status === 'active' ? 'Block' : 'Unblock' }}
            </button>
          </td>
        </tr>
      </tbody>
    </table>
    <div v-if="!users.length" class="muted">No users</div>
  </div>
</template>
