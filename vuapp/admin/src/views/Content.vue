<script setup lang="ts">
import { ref } from 'vue';
import { adminApi } from '../api';

const notice = ref('');
const banner = ref({ image: '', link: '' });
const page = ref({ slug: 'rule', title: '', body: '' });
const task = ref({ title: '', description: '', reward_rupees: 5, period: 'daily', target: 1 });
const finance = ref({ title: '', rate_pct: 12, term_days: 30, min_rupees: 100, max_rupees: 50000 });

async function addNotice() {
  const res = await adminApi.createNotice(notice.value);
  if (res.ok) { notice.value = ''; alert('Notice added'); } else alert(res.error);
}
async function addBanner() {
  const res = await adminApi.createBanner(banner.value);
  if (res.ok) { banner.value = { image: '', link: '' }; alert('Banner added'); } else alert(res.error);
}
async function savePage() {
  const res = await adminApi.savePage(page.value.slug, page.value.title, page.value.body);
  if (res.ok) alert('Page saved'); else alert(res.error);
}
async function addTask() {
  const res = await adminApi.createTask({
    title: task.value.title, description: task.value.description,
    reward_minor: Math.round(task.value.reward_rupees * 100), period: task.value.period, target: task.value.target,
  });
  if (res.ok) alert('Task added'); else alert(res.error);
}
async function addFinance() {
  const res = await adminApi.createFinance({
    title: finance.value.title, rate_bps: Math.round(finance.value.rate_pct * 100),
    term_days: finance.value.term_days, min_minor: finance.value.min_rupees * 100, max_minor: finance.value.max_rupees * 100,
  });
  if (res.ok) alert('Finance product added'); else alert(res.error);
}
</script>

<template>
  <div class="panel">
    <h3>Notice</h3>
    <input v-model="notice" class="input" placeholder="Scrolling notice text" />
    <button class="btn" style="margin-top:12px" @click="addNotice">Add Notice</button>
  </div>

  <div class="panel">
    <h3>Banner</h3>
    <div class="form-grid">
      <div><label>Image URL</label><input v-model="banner.image" class="input" /></div>
      <div><label>Link (optional)</label><input v-model="banner.link" class="input" /></div>
    </div>
    <button class="btn" style="margin-top:12px" @click="addBanner">Add Banner</button>
  </div>

  <div class="panel">
    <h3>Static Pages (rule / about / intro)</h3>
    <div class="form-grid">
      <div><label>Slug</label>
        <select v-model="page.slug" class="input"><option>rule</option><option>about</option><option>intro</option></select>
      </div>
      <div><label>Title</label><input v-model="page.title" class="input" /></div>
    </div>
    <label>Body</label>
    <textarea v-model="page.body" class="input" rows="5" />
    <button class="btn" style="margin-top:12px" @click="savePage">Save Page</button>
  </div>

  <div class="panel">
    <h3>New Task</h3>
    <div class="form-grid">
      <div><label>Title</label><input v-model="task.title" class="input" /></div>
      <div><label>Reward (₹)</label><input v-model.number="task.reward_rupees" class="input" type="number" /></div>
      <div><label>Period</label>
        <select v-model="task.period" class="input"><option>daily</option><option>weekly</option><option>monthly</option><option>once</option></select>
      </div>
      <div><label>Target</label><input v-model.number="task.target" class="input" type="number" /></div>
    </div>
    <input v-model="task.description" class="input" placeholder="Description" style="margin-top:12px" />
    <button class="btn" style="margin-top:12px" @click="addTask">Add Task</button>
  </div>

  <div class="panel">
    <h3>New Finance Product</h3>
    <div class="form-grid">
      <div><label>Title</label><input v-model="finance.title" class="input" /></div>
      <div><label>Rate (% APR)</label><input v-model.number="finance.rate_pct" class="input" type="number" /></div>
      <div><label>Term (days)</label><input v-model.number="finance.term_days" class="input" type="number" /></div>
      <div><label>Min (₹)</label><input v-model.number="finance.min_rupees" class="input" type="number" /></div>
      <div><label>Max (₹)</label><input v-model.number="finance.max_rupees" class="input" type="number" /></div>
    </div>
    <button class="btn" style="margin-top:12px" @click="addFinance">Add Product</button>
  </div>
</template>
