<script setup lang="ts">
import { ref } from 'vue';
import { onLoad } from '@dcloudio/uni-app';
import { useUserStore } from '@/store/user';

const store = useUserStore();
const phone = ref('');
const code = ref('');
const invite = ref('');
const agree = ref(false);
const sending = ref(false);
const countdown = ref(0);

onLoad((q) => {
  if (q?.invite) invite.value = q.invite;
});

async function sendCode() {
  if (!/^\d{6,15}$/.test(phone.value)) return uni.showToast({ title: 'Enter valid phone', icon: 'none' });
  sending.value = true;
  const res = await store.sendOtp(phone.value);
  sending.value = false;
  if (res.ok) {
    uni.showToast({ title: res.devCode ? `OTP: ${res.devCode}` : 'OTP sent', icon: 'none' });
    countdown.value = 60;
    const t = setInterval(() => {
      countdown.value--;
      if (countdown.value <= 0) clearInterval(t);
    }, 1000);
  } else {
    uni.showToast({ title: res.error || 'Failed', icon: 'none' });
  }
}

async function submit() {
  if (!agree.value) return uni.showToast({ title: 'Please agree to terms', icon: 'none' });
  if (!phone.value || !code.value) return uni.showToast({ title: 'Enter phone & OTP', icon: 'none' });
  uni.showLoading({ title: '...' });
  const res = await store.loginWithOtp(phone.value, code.value, invite.value || undefined);
  uni.hideLoading();
  if (res.ok) {
    uni.reLaunch({ url: '/pages/home/home' });
  } else {
    uni.showToast({ title: res.error || 'Login failed', icon: 'none' });
  }
}
</script>

<template>
  <view class="login">
    <nav-bar :back="true" bg="transparent" />
    <view class="head">
      <image class="logo" src="/static/logo.png" mode="heightFix" />
      <text class="welcome">Welcome to vuapp</text>
    </view>

    <view class="form">
      <view class="field">
        <text class="cc">+91</text>
        <input v-model="phone" class="inp" type="number" placeholder="Phone number" placeholder-class="ph" />
      </view>
      <view class="field">
        <input v-model="code" class="inp" type="number" placeholder="OTP code" placeholder-class="ph" />
        <text class="send" :class="{ disabled: countdown > 0 || sending }" @click="countdown > 0 || sending ? null : sendCode()">
          {{ countdown > 0 ? countdown + 's' : 'Send Code' }}
        </text>
      </view>
      <view class="field">
        <input v-model="invite" class="inp" placeholder="Invite code (optional)" placeholder-class="ph" />
      </view>

      <view class="agree" @click="agree = !agree">
        <view class="cb" :class="{ on: agree }" />
        <text class="agree-text">I agree to the Terms & Rules</text>
      </view>

      <view class="submit primary-btn" @click="submit">Login / Register</view>
    </view>
  </view>
</template>

<style scoped lang="scss">
.login {
  min-height: 100vh;
  background: linear-gradient(180deg, #ff7d4d 0%, #f6f6f6 40%);
}
.head {
  display: flex;
  flex-direction: column;
  align-items: center;
  padding: 60rpx 0 40rpx;
}
.logo {
  height: 96rpx;
}
.welcome {
  margin-top: 24rpx;
  font-size: 40rpx;
  font-weight: 700;
  color: #fff;
}
.form {
  margin: 40rpx;
  background: #fff;
  border-radius: 24rpx;
  padding: 40rpx;
}
.field {
  display: flex;
  align-items: center;
  height: 96rpx;
  border-bottom: 2rpx solid #f0f0f0;
}
.cc {
  font-size: 30rpx;
  color: #17273a;
  margin-right: 16rpx;
}
.inp {
  flex: 1;
  font-size: 30rpx;
}
.ph {
  color: #b9b9b9;
}
.send {
  color: #ee5016;
  font-size: 28rpx;
}
.send.disabled {
  color: #b9b9b9;
}
.agree {
  display: flex;
  align-items: center;
  margin: 40rpx 0;
}
.cb {
  width: 34rpx;
  height: 34rpx;
  border-radius: 50%;
  border: 2rpx solid #b9b9b9;
  margin-right: 16rpx;
}
.cb.on {
  background: #ee5016;
  border-color: #ee5016;
}
.agree-text {
  font-size: 26rpx;
  color: #666;
}
.submit {
  height: 92rpx;
  line-height: 92rpx;
  font-size: 32rpx;
}
</style>
