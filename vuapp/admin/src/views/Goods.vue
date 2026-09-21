<script setup lang="ts">
import { ref, onMounted } from 'vue';
import { adminApi, fmt } from '../api';

const list = ref<any[]>([]);
const showForm = ref(false);
const form = ref<any>({ title: '', image: '', category: 'normal', price_rupees: 1, market_rupees: 0, total_slots: 100, issue: '' });

async function load() {
  const res = await adminApi.goods();
  if (res.ok) list.value = res.goods;
}
onMounted(load);

async function create() {
  const payload = {
    title: form.value.title,
    image: form.value.image,
    category: form.value.category,
    price_minor: Math.round(form.value.price_rupees * 100),
    market_price_minor: Math.round(form.value.market_rupees * 100),
    total_slots: Number(form.value.total_slots),
    issue: form.value.issue,
  };
  const res = await adminApi.createGoods(payload);
  if (res.ok) {
    showForm.value = false;
    form.value = { title: '', image: '', category: 'normal', price_rupees: 1, market_rupees: 0, total_slots: 100, issue: '' };
    load();
  } else alert(res.error);
}
async function draw(g: any) {
  if (!confirm(`Run the draw for "${g.title}"? This closes the campaign and picks a winner.`)) return;
  const res = await adminApi.draw(g.id);
  if (res.ok) {
    alert('Winner user #' + res.winner_user);
    load();
  } else alert(res.error);
}
</script>

<template>
  <div class="panel">
    <div style="display:flex; justify-content:space-between; margin-bottom:16px">
      <h3>Campaigns</h3>
      <button class="btn" @click="showForm = !showForm">{{ showForm ? 'Close' : '+ New Campaign' }}</button>
    </div>

    <div v-if="showForm" class="panel" style="background:#f8fafc">
      <div class="form-grid">
        <div><label>Title</label><input v-model="form.title" class="input" /></div>
        <div><label>Image URL / path</label><input v-model="form.image" class="input" placeholder="/static/image/goods/g1.png" /></div>
        <div><label>Category</label>
          <select v-model="form.category" class="input"><option>newbie</option><option>normal</option><option>high</option><option>latest</option></select>
        </div>
        <div><label>Issue</label><input v-model="form.issue" class="input" /></div>
        <div><label>Ticket price (₹)</label><input v-model.number="form.price_rupees" class="input" type="number" /></div>
        <div><label>Market price (₹)</label><input v-model.number="form.market_rupees" class="input" type="number" /></div>
        <div><label>Total slots</label><input v-model.number="form.total_slots" class="input" type="number" /></div>
      </div>
      <button class="btn" style="margin-top:14px" @click="create">Create</button>
    </div>

    <table>
      <thead><tr><th>ID</th><th>Title</th><th>Cat</th><th>Price</th><th>Slots</th><th>Status</th><th></th></tr></thead>
      <tbody>
        <tr v-for="g in list" :key="g.id">
          <td>#{{ g.id }}</td>
          <td>{{ g.title }}</td>
          <td>{{ g.category }}</td>
          <td>{{ fmt(g.price_minor) }}</td>
          <td>{{ g.filled_slots }}/{{ g.total_slots }}</td>
          <td><span class="tag" :class="g.status === 'active' ? 'active' : 'pending'">{{ g.status }}</span></td>
          <td><button v-if="g.status === 'active'" class="btn sm" @click="draw(g)">Run Draw</button></td>
        </tr>
      </tbody>
    </table>
    <div v-if="!list.length" class="muted">No campaigns</div>
  </div>
</template>
