<script setup lang="ts">
// Faithful port of ORich pages/address/address.
import { ref } from 'vue';
import { onShow, onLoad } from '@dcloudio/uni-app';
import { AddressList, AddressUpdate, AddressDelete } from '@/api/orich';

const list = ref<any[]>([]);
const pickMode = ref(false);

onLoad((q: any) => {
  pickMode.value = !!q?.pick;
});
onShow(load);

async function load() {
  const r: any = await AddressList();
  if (r.ok) list.value = r.addresses || [];
}
function add() {
  uni.navigateTo({ url: './add' });
}
function edit(a: any) {
  uni.navigateTo({ url: `./add?id=${a.id}` });
}
async function setDefault(a: any) {
  await AddressUpdate(a.id, { ...a, is_default: 1 });
  load();
}
function del(a: any) {
  uni.showModal({
    title: '',
    content: 'Remove this address?',
    success: async (r) => {
      if (r.confirm) {
        await AddressDelete(a.id);
        load();
      }
    },
  });
}
function pick(a: any) {
  if (!pickMode.value) return;
  uni.setStorageSync('picked_address', a);
  uni.navigateBack();
}
</script>

<template>
  <view class="address">
    <navbar :title="$t('address.title')" background="#ffffff" />
    <view v-for="a in list" :key="a.id" class="content" @click="pick(a)">
      <view class="top">
        <view class="top_name">{{ a.name }}</view>
        <view class="top_number">{{ a.phone }}</view>
        <image src="/static/image/account/icon_leftarrow.png" mode="aspectFit" @click.stop="edit(a)" />
      </view>
      <view class="middle">
        <view class="middle_content">{{ a.line }}{{ a.city ? ', ' + a.city : '' }}{{ a.state ? ', ' + a.state : '' }} - {{ a.pincode }}</view>
      </view>
      <view class="bottom">
        <view :class="a.is_default ? 'bottom-select' : 'bottom-radio'" @click.stop="setDefault(a)">
          <view class="bottom-circle" />
        </view>
        <view class="round">{{ $t('address.round') }}</view>
        <view class="delete" @click.stop="del(a)">{{ $t('address.deletes') }}</view>
      </view>
    </view>
    <view v-if="!list.length" class="nodata">{{ $t('common.nodata') }}</view>
    <view class="addbtn">
      <overbtn :btnText="$t('address.btntitle')" :fontSize="30" btnType="submit" @btnAction="add" />
    </view>
  </view>
</template>

<style>
@import './address.css';
</style>

<style scoped>
.address { min-height: 100vh; background: #f9f9f9; padding-bottom: 180rpx; }
.round { margin-left: 12rpx; font-size: 26rpx; color: #17273a; }
.addbtn { position: fixed; left: 30rpx; right: 30rpx; bottom: 40rpx; height: 92rpx; }
</style>
