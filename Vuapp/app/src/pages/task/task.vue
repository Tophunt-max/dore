<template>
  <view class="task">
    <navbar backColor="#fff"></navbar>
    <view class="task_bj">
      <view class="task_bj_toast">
        <view class="task_bj_toast_notice">
          <u-notice-bar
            :volume-icon="false"
            :list="list"
            mode="vertical"
            :duration="duration"
            border-radius="204"
            bg-color="#f57b0d"
            color="#fff"
          ></u-notice-bar>
        </view>
      </view>
    </view>
    <view v-show="+taskList.length" class="task_main">
      <view class="task_main_welfare">
        <view class="task_main_welfare_item task_border">
          <view class="title">{{ $t('task.faretitle') }}</view>
          <view class="title_stp"></view>
        </view>
        <view
          v-for="(item, index) in welfareList"
          :key="index"
          class="task_main_welfare_item task_main_welfare_strip"
          :class="{ task_border: index < welfareList.length - 1 }"
        >
          <view class="task_main_welfare_strip_content">
            <view class="name">{{ item.name }}</view>
            <view class="tip">{{ item.des }}</view>
          </view>
          <view class="task_main_welfare_strip_btn" @click="navTo(item.link)">{{ item.button }}</view>
        </view>
      </view>
      <view class="task_main_order">
        <view class="task_main_order_item task_border">
          <view class="title">{{ $t('task.tasktitle') }}</view>
          <view class="title_stp"></view>
        </view>
        <mescroll-body
          ref="mescrollRef"
          :down="downOption"
          :up="upOption"
          :height="400"
          @init="mescrollInit"
          @down="downCallback"
          @up="upCallback"
        >
          <view
            v-for="(item, index) in taskList"
            :key="index"
            class="task_main_order_item task_main_order_strip"
            :class="{ task_border: index < taskList.length - 1 }"
          >
            <view class="timg">
              <image :src="item.img" />
              <view class="timg_icon">
                <image v-if="1 == item.cycle" src="/static/image/task/icon_thisday.png" />
                <image v-else-if="2 == item.cycle" src="/static/image/task/icon_week.png" />
                <image v-else src="/static/image/task/icon_mouth.png" />
              </view>
            </view>
            <view class="content">
              <view class="content_title">
                <view class="u-m-r-20">{{ item.name }}</view>
                <view v-if="1 == item.reward_type" class="content_title_bal">
                  <view class="content_img">
                    <image src="/static/image/task/icon_Goldcoins.png" />
                  </view>
                  <view class="content_balances">+{{ $t('task.balances') }} {{ item.reward_price }}</view>
                </view>
              </view>
              <view class="content_detail">{{ item.des }}</view>
              <view class="content_detail colorpro">
                <template v-if="3 == item.status || item.complete_num >= item.num">{{ $t('task.finish') }}</template>
                <template v-else>
                  <view class="u-m-r-20">
                    {{ $t('task.progress') }} {{ item.complete_num }} /
									{{ item.num }}
                  </view>
                  <view
                    v-if="1 == item.form"
                    v-for="(item2, index2) in +item.num"
                    :key="item2"
                    class="iconpro"
                    :class="{ finish: item2 <= item.complete_num }"
                  ></view>
                </template>
              </view>
            </view>
            <view
              class="taskbtn"
              :class="{ btnbj_receive: 2 == item.status, btn_ff: 1 == item.status || 4 == item.status, btn_gray: 3 == item.status }"
              @click="tSnatch(item)"
            >
              {{ btnTitle(item.status, item.reward_type) }}
            </view>
          </view>
        </mescroll-body>
      </view>
    </view>
    <onepopup
      ref="opup"
      :confirmText="$t('common.btncontact')"
      :conetnt="$t('task.ctip')"
      @cancel="popCancel"
      @confirm="popConfirm"
    ></onepopup>
    <tabbar page="/pages/task/task"></tabbar>
  </view>
</template>

<script>
import { interopDefault as d_4df3 } from '@/utils/mescroll-mixin';
import { systemService, taskList, taskReceive } from '@/api/orich';
import { nativePlus } from '@/utils/native';

export default {
  mixins: [d_4df3],
  data: function () {
    return {
      duration: 5e3,
      list: [],
      welfareList: [],
      downOption: {
        use: true,
        auto: true
      },
      upOption: {
        use: true,
        auto: true,
        page: {
          num: 0,
          size: 20
        }
      },
      firstLoad: true,
      taskList: [],
      taskID: '',
      sendMes: {}
    };
  },
  onLoad: function (t) {
    this.getServices();
  },
  onShow: function () {
    !this.firstLoad && this.mescroll.resetUpScroll();
  },
  methods: {
    getServices: function () {
      var t = this;
      systemService({
        type: 1
      }).then(function (e) {
        t.sendMes = e;
      });
    },
    btnTitle: function (t, e) {
      var s = '';
      switch (+t) {
        case 1:
          s = this.$t('common.btnJoin');
          break;
        case 2:
          s = this.$t('common.receive');
          break;
        case 3:
          s = this.$t('common.btncomputed');
          break;
        case 4:
          s = this.$t('common.btncontact');
          break;
      }
      return s;
    },
    tSnatch: function (t) {
      var e = this;
      3 != t.status && (2 == t.status ? (this.taskID = t.id, 2 == t.reward_type && this.$refs.opup.open(), taskReceive({
        id: this.taskID
      }).then(function (s) {
        1 == t.reward_type && uni.showToast({
          icon: 'none',
          title: e.$t('task.rtip')
        });
        e.mescroll.resetUpScroll();
      })) : 4 == t.status ? 2 == t.reward_type && this.popConfirm() : uni.navigateTo({
        url: t.link
      }));
    },
    popCancel: function () {
      this.$refs.opup.close();
    },
    popConfirm: function () {
      var t = '';
      t = ('whatsapp://send?phone=+').concat(this.sendMes.phone, '&text=').concat(this.sendMes.content);
      ('https://wa.me/').concat(this.sendMes.phone, '/?text=').concat(this.sendMes.content);
      nativePlus.runtime.openURL(t);
    },
    navTo: function (t) {
      uni.navigateTo({
        url: t
      });
    },
    upCallback: function (t) {
      var e = this, s = (t.num - 1) * t.size, a = t.size;
      taskList({
        start: s,
        limit: a
      }).then(function (s) {
        e.firstLoad = false;
        var i = s.list, a = i.length, n = +s.count, r = [];
        1 == t.num && (e.taskList = []);
        e.taskList = e.taskList.concat(i);
        e.welfareList = s.fixed_list;
        s.records.forEach(function (t) {
          r.push(('').concat(t.usr_nickname, ' ').concat(e.$t('task.stip'), ' ').concat(t.trd_name));
        });
        e.list = r;
        e.$store.commit('SET_TAKEICON', s.taskstatus);
        e.mescroll.endBySize(a, n);
      }).catch(function (t) {
        e.mescroll.endErr();
      });
    }
  }
};
</script>

<style scoped>
.task { min-height:calc(100vh + 88rpx);margin-top:-88rpx;background:#f9f9f9;padding-bottom:120rpx }
.task .task_bj { height:480rpx;background-image:url('/static/image/finance/bg_list.png');background-size:100% 100%;padding-top:88rpx }
.task .task_bj .task_bj_toast { display:flex;align-items:center;justify-content:center;padding-top:22rpx }
.task .task_bj .task_bj_toast .task_bj_toast_notice { width:569rpx;height:60rpx;font-family:Roboto,Roboto-Regular }
.task .task_main { padding-left:16rpx;padding-right:14rpx;margin-top:-200rpx }
.task .task_main .task_border { border-bottom:1px solid #f9f9f9 }
.task .task_main .title_stp { width:156rpx;height:23rpx;background:#ffcb00;margin-left:auto;margin-right:auto;margin-top:-26rpx }
.task .task_main .task_main_welfare { background:#fff;border-radius:10rpx }
.task .task_main .task_main_welfare .task_main_welfare_item { padding:26rpx 14rpx 26rpx 26rpx }
.task .task_main .task_main_welfare .task_main_welfare_item .title { height:50rpx;line-height:50rpx;text-align:center;font-size:33rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#17273a;letter-spacing:0rpx }
.task .task_main .task_main_welfare .task_main_welfare_strip { display:flex;align-items:center;justify-content:space-between;margin:0 6rpx }
.task .task_main .task_main_welfare .task_main_welfare_strip .task_main_welfare_strip_content { flex-shrink:0;max-width:500rpx }
.task .task_main .task_main_welfare .task_main_welfare_strip .task_main_welfare_strip_content .name { font-size:33rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#17273a;letter-spacing:0rpx }
.task .task_main .task_main_welfare .task_main_welfare_strip .task_main_welfare_strip_content .tip { margin-top:14rpx;font-size:29rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#ee5016 }
.task .task_main .task_main_welfare .task_main_welfare_strip .task_main_welfare_strip_btn { width:164rpx;height:62rpx;text-align:center;line-height:62rpx;background:#fff;color:#ee5016;border-radius:205rpx;border:2rpx solid #ee5016 }
.task .task_main .task_main_order { margin-top:16rpx;background:#fff;border-radius:10rpx }
.task .task_main .task_main_order .task_main_order_item { padding:30rpx 14rpx 30rpx 26rpx }
.task .task_main .task_main_order .task_main_order_item .title { height:50rpx;line-height:50rpx;font-size:33rpx;font-family:Roboto,Roboto-Medium;font-weight:500;text-align:center;color:#17273a;letter-spacing:0rpx }
.task .task_main .task_main_order .task_main_order_strip { display:flex;justify-content:flex-start;position:relative;margin:0 6rpx }
.task .task_main .task_main_order .task_main_order_strip .timg { flex-shrink:0;width:148rpx;height:148rpx;position:relative }
.task .task_main .task_main_order .task_main_order_strip .timg uni-image { width:100%;height:100%;border-radius:10rpx }
.task .task_main .task_main_order .task_main_order_strip .timg .timg_icon { width:97rpx;height:41rpx;position:absolute;top:-10rpx;left:-8rpx }
.task .task_main .task_main_order .task_main_order_strip .content { margin-left:24rpx }
.task .task_main .task_main_order .task_main_order_strip .content .content_title { display:flex;align-items:center;justify-content:flex-start;flex-wrap:wrap }
.task .task_main .task_main_order .task_main_order_strip .content .content_title_bal { display:flex;align-items:center;justify-content:flex-start }
.task .task_main .task_main_order .task_main_order_strip .content .content_img { flex-shrink:0;width:34rpx;height:34rpx;margin-right:6rpx }
.task .task_main .task_main_order .task_main_order_strip .content .content_img uni-image { width:100%;height:100% }
.task .task_main .task_main_order .task_main_order_strip .content .content_balances { font-size:33rpx;font-family:PingFang SC,PingFang SC-Medium;font-weight:500;color:#ff5c5c;letter-spacing:0rpx }
.task .task_main .task_main_order .task_main_order_strip .content .content_detail { margin-top:18rpx;max-width:318rpx;font-size:27rpx;font-family:PingFang SC,PingFang SC-Medium;font-weight:500;color:#b9b9b9;letter-spacing:0rpx }
.task .task_main .task_main_order .task_main_order_strip .content .colorpro { font-family:Roboto,Roboto-Regular;font-weight:400;color:#ee5016;display:flex;align-items:center;justify-content:flex-start;flex-wrap:wrap }
.task .task_main .task_main_order .task_main_order_strip .content .iconpro { width:29rpx;height:29rpx;border:2rpx solid #b9b9b9;border-radius:50%;margin-right:8rpx }
.task .task_main .task_main_order .task_main_order_strip .content .finish { border:none;background:#ee5016 }
.task .task_main .task_main_order .task_main_order_strip .taskbtn { width:164rpx;height:62rpx;line-height:62rpx;border-radius:205rpx;text-align:center;position:absolute;bottom:52rpx;right:20rpx }
.task .task_main .task_main_order .task_main_order_strip .btnbj_receive { background:linear-gradient(290deg,#ee5016,#ffd71d);color:#fff }
.task .task_main .task_main_order .task_main_order_strip .btnbj_jc { background:#ee5016;color:#fff }
.task .task_main .task_main_order .task_main_order_strip .btn_ff { background:#fff;color:#ee5016;border:2rpx solid #ee5016 }
.task .task_main .task_main_order .task_main_order_strip .btn_gray { background:#fff;color:#b9b9b9;border:2rpx solid #b9b9b9 }
.task .task_bj { height:480rpx;background-image:url('/static/image/task/task_bj.png');background-size:100% 100%;padding-top:88rpx }
</style>
