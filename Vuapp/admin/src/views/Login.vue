<script setup lang="ts">
import { ref } from 'vue';
import { useRouter } from 'vue-router';
import { adminApi, setToken } from '../api';

const router = useRouter();
const email = ref('');
const password = ref('');
const error = ref('');
const loading = ref(false);

async function submit() {
  error.value = '';
  loading.value = true;
  const res = await adminApi.login(email.value, password.value);
  loading.value = false;
  if (res.ok) {
    setToken(res.token);
    router.replace('/');
  } else {
    error.value =
      res.error === 'bootstrap_denied'
        ? 'First login requires the ADMIN_BOOTSTRAP password.'
        : 'Invalid credentials.';
  }
}
</script>

<template>
  <div class="login-wrap">
    <div class="login-box">
      <h2>vuapp admin</h2>
      <p>Sign in to manage the platform</p>
      <div class="field">
        <label>Email</label>
        <input v-model="email" class="input" type="email" @keyup.enter="submit" />
      </div>
      <div class="field">
        <label>Password</label>
        <input v-model="password" class="input" type="password" @keyup.enter="submit" />
      </div>
      <button class="btn" style="width: 100%; padding: 12px" :disabled="loading" @click="submit">
        {{ loading ? '...' : 'Sign In' }}
      </button>
      <div v-if="error" class="err">{{ error }}</div>
      <p style="margin-top: 18px">First-time setup: use any email + the <code>ADMIN_BOOTSTRAP</code> secret to create the first admin.</p>
    </div>
  </div>
</template>
