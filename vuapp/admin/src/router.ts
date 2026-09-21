import { createRouter, createWebHashHistory } from 'vue-router';
import { token } from './guard';
import Login from './views/Login.vue';
import Dashboard from './views/Dashboard.vue';
import Users from './views/Users.vue';
import Goods from './views/Goods.vue';
import Recharges from './views/Recharges.vue';
import Withdrawals from './views/Withdrawals.vue';
import Content from './views/Content.vue';

const routes = [
  { path: '/login', component: Login, meta: { public: true } },
  { path: '/', component: Dashboard },
  { path: '/users', component: Users },
  { path: '/goods', component: Goods },
  { path: '/recharges', component: Recharges },
  { path: '/withdrawals', component: Withdrawals },
  { path: '/content', component: Content },
];

export const router = createRouter({
  history: createWebHashHistory(),
  routes,
});

router.beforeEach((to) => {
  if (!to.meta.public && !token()) return '/login';
  if (to.path === '/login' && token()) return '/';
  return true;
});
