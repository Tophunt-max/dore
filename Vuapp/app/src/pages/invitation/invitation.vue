<script setup lang="ts">
// Faithful port of ORich pages/invitation/invitation.
import { ref } from 'vue';
import { onLoad } from '@dcloudio/uni-app';
import { Referrals, Team } from '@/api/orich';
import { formatMinor } from '@/utils/money';
import { currentLocale } from '@/locale';
import { api } from '@/api/request';

const A = '/static/image/account';
const invPeople = ref(0);
const rewPeople = ref('0');
const myLink = ref('');
const tabStyle = ref(1);
const invitadList = ref<any[]>([]);
const lang = ref(currentLocale());
const rankImg = [
  '/static/image/goods/icon_Firstprize.png',
  '/static/image/goods/icon_Secondprize.png',
  '/static/image/goods/icon_Thirdprize.png',
];
const mescroll = ref<any>(null);
const downOption = { use: true, auto: true };
const upOption = { use: true, auto: true, page: { num: 0, size: 20 } };
let code = '';

onLoad(() => {
  Referrals().then((r: any) => {
    if (!r || r.ok === false) return;
    code = r.invite_code || '';
    invPeople.value = (r.stats && r.stats.total) || 0;
    rewPeople.value = formatMinor(r.referral_earnings_minor);
    myLink.value = `${api.base.replace(/\/$/, '')}/#/pages/login/login?invite=${code}`;
  });
});
function mescrollInit(ms: any) {
  mescroll.value = ms;
}
function downCallback() {
  mescroll.value && mescroll.value.resetUpScroll();
}
function upCallback(page: any) {
  Team()
    .then((r: any) => {
      const l = (r.members || []).map((m: any) => ({
        user: m.username,
        mobile: m.username,
        time: m.created_at ? new Date(m.created_at * 1000).toLocaleDateString() : '',
        reward: '',
        vip_img: '',
      }));
      if (page.num === 1) invitadList.value = [];
      invitadList.value = invitadList.value.concat(l);
      mescroll.value && mescroll.value.endBySize(l.length, l.length);
    })
    .catch(() => mescroll.value && mescroll.value.endErr());
}
function changeTab(n: number) {
  tabStyle.value = n;
  mescroll.value && mescroll.value.resetUpScroll();
}
function handleCopy() {
  uni.setClipboardData({ data: myLink.value, success: () => uni.showToast({ title: 'Copied', icon: 'none' }) });
}
function handleInvite() {
  handleCopy();
}
function handleRule() {
  uni.navigateTo({ url: '../richtext/rule?type=2' });
}
</script>

<template>
  <view class="invitation">
    <view class="top_title">
      <navbar :title="$t('invite.rtitle')" backColor="#fff" titleColor="#fff" background="transparent" />
    </view>

    <view class="middle_rule" @click="handleRule">
      <view class="middle_rule_item">
        <view class="middle_rule_item_title">{{ $t('invite.rtitle') }}</view>
        <u-icon name="arrow-right" color="rgba(254,98,50,0.87)" size="10" />
      </view>
    </view>

    <view class="middle_invited">
      <view class="earn">
        <view class="earn_left">
          <view class="inv">{{ $t('invite.inv') }}</view>
          <view class="inv_bom">
            <text class="unum">{{ invPeople }}</text>
            <view class="people">{{ $t('invite.peo') }}</view>
          </view>
        </view>
        <view class="earn_right">
          <view class="rew">{{ $t('invite.rew') }}</view>
          <view class="rew_bom">
            <view class="mark" />
            <text class="nums">{{ rewPeople }}</text>
          </view>
        </view>
      </view>
      <view class="mylink">
        <view class="my">{{ $t('invite.mlink') }}</view>
        <view class="bg">
          <view class="msg">{{ myLink }}</view>
          <view class="copy" @click="handleCopy">{{ $t('invite.cy') }}</view>
        </view>
      </view>
      <view class="invite_btn">
        <overbtn btnText="INVITE" @btnAction="handleInvite" />
      </view>
    </view>

    <view class="middle_reg">
      <view class="middle_top">
        <view class="link_img"><image :src="`${A}/icon_Invitationrecords.png`" mode="aspectFit" /></view>
        <view class="point" />
        <view class="reg_img"><image :src="`${A}/icon_Registion.png`" mode="aspectFit" /></view>
        <view class="point" />
        <view class="earn_img"><image :src="`${A}/icon_Earnrewards.png`" mode="aspectFit" /></view>
      </view>
      <view class="middle_bottom">
        <view class="link_text">{{ $t('invite.slink') }}</view>
        <view class="reg_text">{{ $t('invite.reg') }}</view>
        <view class="earn_text">{{ $t('invite.rew') }}</view>
      </view>
    </view>

    <view class="bottom">
      <view class="tab_item">
        <view class="item_left">
          <view :class="tabStyle == 1 ? 'tab_rec' : 'tab_rul'" @click="changeTab(1)">{{ $t('invite.fri') }}</view>
        </view>
        <view class="item_right">
          <view :class="tabStyle == 2 ? 'tab_rec' : 'tab_rul'" @click="changeTab(2)">{{ $t('invite.reb') }}</view>
        </view>
      </view>
      <mescroll-body ref="mescrollRef" :down="downOption" :up="upOption" :height="400" @init="mescrollInit" @down="downCallback" @up="upCallback">
        <view v-for="(e, s) in invitadList" :key="s" class="tabs">
          <view class="tabs_rank">
            <view v-if="tabStyle == 1" class="tabs_rank_icon">
              <image v-if="s < 3" :src="rankImg[s]" mode="aspectFit" />
              <view v-else class="tabs_rank_num">{{ s + 1 }}</view>
            </view>
            <view class="tabs_left">
              <view class="tabs_user">
                <text>{{ tabStyle == 1 ? e.mobile : e.user }}</text>
              </view>
              <view class="tabs_time">{{ e.time }}</view>
            </view>
          </view>
          <view class="tabs_right">
            <view class="tabs_num">{{ tabStyle == 1 ? '' : '+' }}</view>
            <view class="tabs_nums"><text>{{ e.reward || '-' }}</text></view>
          </view>
        </view>
        <view v-if="!invitadList.length" class="nodata">{{ $t('common.nodata') }}</view>
      </mescroll-body>
    </view>
  </view>
</template>

<style>
@import './invitation.css';
</style>

<style scoped>
.invitation { background-color: #fe5541; }
</style>
