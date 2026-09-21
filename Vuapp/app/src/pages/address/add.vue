<script setup lang="ts">
// Faithful port of ORich pages/address/add (add / modify address).
import { ref } from 'vue';
import { onLoad } from '@dcloudio/uni-app';
import { AddressList, AddressAdd, AddressUpdate } from '@/api/orich';

const editId = ref<number | null>(null);
const form = ref<any>({ name: '', phone: '', pincode: '', line: '', city: '', state: '', is_default: 1 });

onLoad(async (q: any) => {
  if (q?.id) {
    editId.value = Number(q.id);
    const r: any = await AddressList();
    const found = (r.addresses || []).find((a: any) => a.id === editId.value);
    if (found) form.value = { ...found };
  }
});

async function save() {
  const f = form.value;
  if (!f.name || !f.phone || !f.pincode || !f.line) {
    uni.showToast({ title: 'Please complete the form', icon: 'none' });
    return;
  }
  const r: any = editId.value ? await AddressUpdate(editId.value, f) : await AddressAdd(f);
  if (r.ok) {
    uni.showToast({ title: 'Success', icon: 'success' });
    setTimeout(() => uni.navigateBack(), 600);
  } else uni.showToast({ title: r.error || 'Failed', icon: 'none' });
}
</script>

<template>
  <view class="add">
    <navbar :title="editId ? $t('address.edittitle') : $t('address.addtitle')" background="#ffffff" />

    <view class="receiver">
      <view class="receiver_left">{{ $t('common.name') }}</view>
      <input v-model="form.name" class="input" :placeholder="$t('address.rece')" placeholder-class="receiver_left_pla" />
    </view>
    <view class="receiver">
      <view class="receiver_left">{{ $t('common.phone') }}</view>
      <input v-model="form.phone" class="input" type="number" placeholder="Mobile number" placeholder-class="receiver_left_pla" />
    </view>
    <view class="receiver">
      <view class="receiver_left">{{ $t('address.city') }}</view>
      <input v-model="form.pincode" class="input" type="number" placeholder="Pincode" placeholder-class="receiver_left_pla" />
    </view>
    <view class="receiver">
      <view class="receiver_left">{{ $t('address.towncity') }}</view>
      <input v-model="form.city" class="input" placeholder="Town / City" placeholder-class="receiver_left_pla" />
    </view>
    <view class="receiver">
      <view class="receiver_left">State</view>
      <input v-model="form.state" class="input" placeholder="State" placeholder-class="receiver_left_pla" />
    </view>
    <view class="bottom_address">
      <view class="receiver_left">Address</view>
      <input v-model="form.line" class="input" :placeholder="$t('common.flat')" placeholder-class="receiver_left_pla" />
    </view>

    <view class="addbtn">
      <overbtn :btnText="$t('address.btnt')" :fontSize="30" btnType="submit" @btnAction="save" />
    </view>
  </view>
</template>

<style>
@import './add.css';
</style>

<style scoped>
.add { min-height: 100vh; background: #fff; padding-bottom: 180rpx; }
.receiver,
.bottom_address { display: flex; align-items: center; padding: 0 30rpx; height: 110rpx; border-bottom: 2rpx solid #f5f5f5; }
.receiver_left { width: 210rpx; font-size: 30rpx; color: #17273a; }
.input { flex: 1; font-size: 30rpx; }
.receiver_left_pla { color: #b9b9b9; }
.addbtn { position: fixed; left: 30rpx; right: 30rpx; bottom: 40rpx; height: 92rpx; }
</style>
