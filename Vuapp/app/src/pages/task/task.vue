<script setup lang="ts">
// Faithful port of ORich pages/task/task.
import { ref } from 'vue';
import { onLoad, onShow } from '@dcloudio/uni-app';
import { useI18n } from 'vue-i18n';
import { systemService, TaskListData, TaskReceive } from '@/api/orich';

const { t } = useI18n();

const duration = 5000;
const list = ref<string[]>([]);
const welfareList = ref<any[]>([]);
const downOption = { use: true, auto: true };
const upOption = { use: true, auto: true, page: { num: 0, size: 20 } };
const firstLoad = ref(true);
const taskList = ref<any[]>([]);
const taskID = ref<any>('');
const sendMes = ref<any>({});
const mescroll = ref<any>(null);
const opup = ref<any>(null);

const coin = '/static/image/task/icon_Goldcoins.png';
function cycleIcon(cycle: number) {
  return cycle === 1
    ? '/static/image/task/icon_thisday.png'
    : cycle === 2
      ? '/static/image/task/icon_week.png'
      : '/static/image/task/icon_mouth.png';
}

onLoad(() => getServices());
onShow(() => {
  if (!firstLoad.value && mescroll.value) mescroll.value.resetUpScroll();
});

function getServices() {
  systemService({ type: 1 }).then((e: any) => (sendMes.value = e));
}
function mescrollInit(ms: any) {
  mescroll.value = ms;
}
function downCallback() {
  if (mescroll.value) mescroll.value.resetUpScroll();
}
function upCallback(page: any) {
  const start = (page.num - 1) * page.size;
  TaskListData({ start, limit: page.size })
    .then((s: any) => {
      firstLoad.value = false;
      const l = s.list || [];
      if (page.num === 1) taskList.value = [];
      taskList.value = taskList.value.concat(l);
      welfareList.value = s.fixed_list || [];
      list.value = (s.records || []).map((t: any) => `${t.usr_nickname} won ${t.trd_name}`);
      mescroll.value && mescroll.value.endBySize(l.length, s.count);
    })
    .catch(() => mescroll.value && mescroll.value.endErr());
}
function btnTitle(status: number, _rewardType: number) {
  switch (+status) {
    case 1:
      return t('common.btnJoin');
    case 2:
      return t('common.receive');
    case 3:
      return t('common.btncomputed');
    case 4:
      return t('common.btncontact');
  }
  return '';
}

function tSnatch(e: any) {
  if (e.status == 3) return;
  if (e.status == 2) {
    taskID.value = e.id;
    if (e.reward_type == 2) opup.value.open();
    TaskReceive({ id: taskID.value }).then(() => {
      if (e.reward_type == 1) uni.showToast({ icon: 'none', title: t('task.rtip') });
      mescroll.value && mescroll.value.resetUpScroll();
    });
  } else if (e.status == 4) {
    if (e.reward_type == 2) popConfirm();
  } else if (e.link) {
    uni.navigateTo({ url: e.link });
  }
}
function popCancel() {
  opup.value && opup.value.close();
}
function popConfirm() {
  uni.showToast({ title: 'WhatsApp support', icon: 'none' });
}
function navTo(url: string) {
  if (url) uni.navigateTo({ url });
}
</script>

<template>
  <view class="task">
    <navbar backColor="#fff" />
    <view class="task_bj">
      <view class="task_bj_toast">
        <view class="task_bj_toast_notice">
          <u-notice-bar :volume-icon="false" :list="list" mode="vertical" :duration="duration" border-radius="204" bg-color="#f57b0d" color="#fff" />
        </view>
      </view>
    </view>
    <view v-show="+taskList.length" class="task_main">
      <view class="task_main_welfare">
        <view class="task_main_welfare_item task_border">
          <view class="title">{{ $t('task.faretitle') }}</view>
          <view class="title_stp" />
        </view>
        <view
          v-for="(e, i) in welfareList"
          :key="i"
          class="task_main_welfare_item task_main_welfare_strip"
          :class="{ task_border: i < welfareList.length - 1 }"
        >
          <view class="task_main_welfare_strip_content">
            <view class="name">{{ e.name }}</view>
            <view class="tip">{{ e.des }}</view>
          </view>
          <view class="task_main_welfare_strip_btn" @click="navTo(e.link)">{{ e.button }}</view>
        </view>
      </view>

      <view class="task_main_order">
        <view class="task_main_order_item task_border">
          <view class="title">{{ $t('task.tasktitle') }}</view>
          <view class="title_stp" />
        </view>
        <mescroll-body ref="mescrollRef" :down="downOption" :up="upOption" :height="400" @init="mescrollInit" @down="downCallback" @up="upCallback">
          <view
            v-for="(e, i) in taskList"
            :key="i"
            class="task_main_order_item task_main_order_strip"
            :class="{ task_border: i < taskList.length - 1 }"
          >
            <view class="timg">
              <image :src="e.img" mode="aspectFill" />
              <view class="timg_icon"><image :src="cycleIcon(e.cycle)" mode="aspectFit" /></view>
            </view>
            <view class="content">
              <view class="content_title">
                <view class="u-m-r-20">{{ e.name }}</view>
                <template v-if="e.reward_type == 1">
                  <view class="content_title_bal">
                    <view class="content_img"><image :src="coin" mode="aspectFit" /></view>
                    <view class="content_balances">{{ $t('task.balances') }}{{ e.reward_price }}</view>
                  </view>
                </template>
              </view>
              <view class="content_detail">{{ e.des }}</view>
              <view class="content_detail colorpro">
                <template v-if="e.status == 3 || e.complete_num >= e.num">{{ $t('task.finish') }}</template>
                <template v-else>
                  <view class="u-m-r-20">{{ $t('task.progress') }}{{ e.complete_num }}/{{ e.num }}</view>
                  <template v-if="e.form == 1">
                    <view v-for="k in +e.num" :key="k" class="iconpro" :class="{ finish: k <= e.complete_num }" />
                  </template>
                </template>
              </view>
            </view>
            <view
              class="taskbtn"
              :class="{ btnbj_receive: e.status == 2, btn_ff: e.status == 1 || e.status == 4, btn_gray: e.status == 3 }"
              @click="tSnatch(e)"
            >
              {{ btnTitle(e.status, e.reward_type) }}
            </view>
          </view>
        </mescroll-body>
      </view>
    </view>

    <onepopup ref="opup" :confirmText="$t('common.btncontact')" :conetnt="$t('task.ctip')" @cancel="popCancel" @confirm="popConfirm" />
    <tabbar page="/pages/task/task" />
  </view>
</template>

<style scoped>
/* Verbatim scoped CSS from ORich pages/task/task (scope stripped, bg mapped) */
.task { min-height: calc(100vh + 88rpx); margin-top: -88rpx; background: #f9f9f9; padding-bottom: 120rpx; }
.task .task_bj { height: 480rpx; background-image: url('/static/image/task/task_bj.png'); background-size: 100% 100%; padding-top: 88rpx; }
.task .task_bj .task_bj_toast { display: flex; align-items: center; justify-content: center; padding-top: 22rpx; }
.task .task_bj .task_bj_toast .task_bj_toast_notice { width: 569rpx; height: 60rpx; font-family: Roboto, Roboto-Regular; }
.task .task_main { padding-left: 16rpx; padding-right: 14rpx; margin-top: -200rpx; }
.task .task_main .task_border { border-bottom: 1px solid #f9f9f9; }
.task .task_main .title_stp { width: 156rpx; height: 23rpx; background: #ffcb00; margin-left: auto; margin-right: auto; margin-top: -26rpx; }
.task .task_main .task_main_welfare { background: #fff; border-radius: 10rpx; }
.task .task_main .task_main_welfare .task_main_welfare_item { padding: 26rpx 14rpx 26rpx 26rpx; }
.task .task_main .task_main_welfare .task_main_welfare_item .title { height: 50rpx; line-height: 50rpx; text-align: center; font-size: 33rpx; font-family: Roboto, Roboto-Medium; font-weight: 500; color: #17273a; }
.task .task_main .task_main_welfare .task_main_welfare_strip { display: flex; align-items: center; justify-content: space-between; margin: 0 6rpx; }
.task .task_main .task_main_welfare .task_main_welfare_strip .task_main_welfare_strip_content { flex-shrink: 0; max-width: 500rpx; }
.task .task_main .task_main_welfare .task_main_welfare_strip .task_main_welfare_strip_content .name { font-size: 33rpx; font-family: Roboto, Roboto-Medium; font-weight: 500; color: #17273a; }
.task .task_main .task_main_welfare .task_main_welfare_strip .task_main_welfare_strip_content .tip { margin-top: 14rpx; font-size: 29rpx; font-family: Roboto, Roboto-Regular; font-weight: 400; color: #ee5016; }
.task .task_main .task_main_welfare .task_main_welfare_strip .task_main_welfare_strip_btn { width: 164rpx; height: 62rpx; text-align: center; line-height: 62rpx; background: #fff; color: #ee5016; border-radius: 205rpx; border: 2rpx solid #ee5016; }
.task .task_main .task_main_order { margin-top: 16rpx; background: #fff; border-radius: 10rpx; }
.task .task_main .task_main_order .task_main_order_item { padding: 30rpx 14rpx 30rpx 26rpx; }
.task .task_main .task_main_order .task_main_order_item .title { height: 50rpx; line-height: 50rpx; font-size: 33rpx; font-family: Roboto, Roboto-Medium; font-weight: 500; text-align: center; color: #17273a; }
.task .task_main .task_main_order .task_main_order_strip { display: flex; justify-content: flex-start; position: relative; margin: 0 6rpx; }
.task .task_main .task_main_order .task_main_order_strip .timg { flex-shrink: 0; width: 148rpx; height: 148rpx; position: relative; }
.task .task_main .task_main_order .task_main_order_strip .timg uni-image { width: 100%; height: 100%; border-radius: 10rpx; }
.task .task_main .task_main_order .task_main_order_strip .timg .timg_icon { width: 97rpx; height: 41rpx; position: absolute; top: -10rpx; left: -8rpx; }
.task .task_main .task_main_order .task_main_order_strip .content { margin-left: 24rpx; }
.task .task_main .task_main_order .task_main_order_strip .content .content_title { display: flex; align-items: center; justify-content: flex-start; flex-wrap: wrap; }
.task .task_main .task_main_order .task_main_order_strip .content .content_title_bal { display: flex; align-items: center; justify-content: flex-start; }
.task .task_main .task_main_order .task_main_order_strip .content .content_img { flex-shrink: 0; width: 34rpx; height: 34rpx; margin-right: 6rpx; }
.task .task_main .task_main_order .task_main_order_strip .content .content_img uni-image { width: 100%; height: 100%; }
.task .task_main .task_main_order .task_main_order_strip .content .content_balances { font-size: 33rpx; font-family: PingFang SC, PingFang SC-Medium; font-weight: 500; color: #ff5c5c; }
.task .task_main .task_main_order .task_main_order_strip .content .content_detail { margin-top: 18rpx; max-width: 318rpx; font-size: 27rpx; font-family: PingFang SC, PingFang SC-Medium; font-weight: 500; color: #b9b9b9; }
.task .task_main .task_main_order .task_main_order_strip .content .colorpro { font-family: Roboto, Roboto-Regular; font-weight: 400; color: #ee5016; display: flex; align-items: center; justify-content: flex-start; flex-wrap: wrap; }
.task .task_main .task_main_order .task_main_order_strip .content .iconpro { width: 29rpx; height: 29rpx; border: 2rpx solid #b9b9b9; border-radius: 50%; margin-right: 8rpx; }
.task .task_main .task_main_order .task_main_order_strip .content .finish { border: none; background: #ee5016; }
.task .task_main .task_main_order .task_main_order_strip .taskbtn { width: 164rpx; height: 62rpx; line-height: 62rpx; border-radius: 205rpx; text-align: center; position: absolute; bottom: 52rpx; right: 20rpx; }
.task .task_main .task_main_order .task_main_order_strip .btnbj_receive { background: linear-gradient(290deg, #ee5016, #ffd71d); color: #fff; }
.task .task_main .task_main_order .task_main_order_strip .btnbj_jc { background: #ee5016; color: #fff; }
.task .task_main .task_main_order .task_main_order_strip .btn_ff { background: #fff; color: #ee5016; border: 2rpx solid #ee5016; }
.task .task_main .task_main_order .task_main_order_strip .btn_gray { background: #fff; color: #b9b9b9; border: 2rpx solid #b9b9b9; }
</style>
