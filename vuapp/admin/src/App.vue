<script setup lang="ts">
import { computed } from 'vue';
import { useRoute, useRouter } from 'vue-router';
import { clearToken } from './api';

const route = useRoute();
const router = useRouter();
const isLogin = computed(() => route.path === '/login');

const links = [
  { to: '/', t: 'Dashboard' },
  { to: '/users', t: 'Users' },
  { to: '/goods', t: 'Campaigns' },
  { to: '/recharges', t: 'Recharges' },
  { to: '/withdrawals', t: 'Withdrawals' },
  { to: '/content', t: 'Content' },
];

function logout() {
  clearToken();
  router.replace('/login');
}
</script>

<template>
  <div v-if="isLogin"><router-view /></div>
  <div v-else class="layout">
    <aside class="sidebar">
      <div class="brand">vu<span>app</span> admin</div>
      <nav class="nav">
        <router-link v-for="l in links" :key="l.to" :to="l.to" :class="{ active: route.path === l.to }">{{ l.t }}</router-link>
      </nav>
    </aside>
    <main class="main">
      <div class="topbar">
        <h1>{{ links.find((l) => l.to === route.path)?.t || 'Admin' }}</h1>
        <span class="logout" @click="logout">Logout →</span>
      </div>
      <router-view />
    </main>
  </div>
</template>
