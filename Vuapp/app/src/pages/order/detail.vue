<template>
  <view v-if="cardList.length" class="detail">
    <navbar :title="$t('order.dtitle')" background="#ffffff" :isComfirm="true" @beforeBack="handleBack"></navbar>
    <view class="detail_share">
      <view class="detail_share_left">
        <view class="red_icon"></view>
        <view class="detail_share_left_title">{{ $t('order.productDetail') }}</view>
      </view>
      <view class="detail_share_right" @click="handleShare">
        <image class="img" :src="shareIcon" mode="widthFix" />
      </view>
    </view>
    <view class="detail_main">
      <cardlist :cardList="cardList" :shareValue="false" @imgToDetail="toDetail" @navToDiscount="toDiscount"></cardlist>
      <view class="detail_main_order">
        <view class="detail_main_title">
          <view class="red_icon"></view>
          <view class="detail_main_title_font">{{ $t('order.order') }}</view>
        </view>
        <view class="detail_main_item">
          <view class="gray">{{ $t('order.numbers') }}</view>
          <view class="red">{{ cardList[0].logcount }}</view>
        </view>
        <view class="detail_main_item">
          <view class="gray">{{ $t('order.my') }}</view>
          <view class="gray item_list">
            <text v-for="(item, index) in cardList[0].lucklottery" :key="index" class="red">
              {{ index + 1 < cardList[0].lucklottery.length ? item + ', ' : item }}
            </text>
            <text v-if="cardList[0].lottery.length && cardList[0].lucklottery.length">{{ ', ' }}</text>
            {{ cardList[0].lottery }}
          </view>
        </view>
        <view class="detail_main_item">
          <view class="gray">{{ $t('order.status') }}</view>
          <view class="detail_main_status gray">{{ statusTip(cardList[0].status) }}</view>
        </view>
        <view v-if="cardList[0].addr.name" class="detail_main_info">
          <view class="detail_main_info_icon">
            <image class="img" :src="addrIcon" mode="widthFix" />
          </view>
          <view class="detail_main_info_mation">
            <view>
              <text class="detail_main_info_mation_name">{{ cardList[0].addr.name }}</text>
              <text class="detail_main_info_mation_phone">{{ cardList[0].addr.mobile }}</text>
            </view>
            <view class="detail_main_info_mation_address">{{ cardList[0].addr.address }}</view>
          </view>
        </view>
        <view v-if="cardList[0].addr.name" class="detail_main_info_mation_line">
          <view
            v-for="(item, index) in 15"
            :key="item"
            class="line"
            :class="{ lingmrlr6: 0 != item && 15 != item }"
          ></view>
        </view>
      </view>
      <view class="detail_main_order">
        <view class="detail_main_title">
          <view class="red_icon"></view>
          <view class="detail_main_title_font">{{ $t('order.detail') }}</view>
        </view>
        <view v-for="(item, index) in cardList[0].logdetail" :key="index">
          <view class="detail_main_item">
            <view class="gray">{{ $t('order.time') }}</view>
            <view class="gray">{{ item.time }}</view>
          </view>
          <view class="detail_main_item">
            <view class="gray">{{ $t('order.numbers') }}</view>
            <view class="red">{{ item.logcount }}</view>
          </view>
          <view class="detail_main_item">
            <view class="gray">{{ $t('order.my') }}</view>
            <view class="item_list">
              <text v-for="(item2, index2) in item.loglottery" :key="index2" class="gray">
                {{ index2 < item.loglottery.length - 1 ? item2 + ', ' : item2 }}
              </text>
            </view>
          </view>
          <view
            v-if="cardList[0].logdetail.length > 1 && index < cardList[0].logdetail.length - 1"
            class="border"
          ></view>
        </view>
      </view>
    </view>
    <view v-if="showButton(cardList[0])" class="detail_append">
      <view class="detail_append_btn">
        <overbtn :btnText="btnTitle(cardList[0].status)" @btnAction="btnAction(cardList[0].dumid)"></overbtn>
      </view>
    </view>
    <onepopup
      ref="popup"
      popType="3"
      :list="addressList"
      height="464"
      width="678"
      :cancelText="addrNull ? 'Edit' : 'Back'"
      :confirmText="addrNull ? 'Confirm' : 'Add address'"
      :addrPop="true"
      @confirmb="handleConfirm"
      @addrEdit="addressEdit"
      @poploading="poploading"
    ></onepopup>
    <onepopup
      ref="receivePopup"
      popType="1"
      :conetnt="$t('order.receiveTip')"
      confirmText="Yes"
      @cancel="btnCancel"
      @confirm="btnConfirm"
    ></onepopup>
    <sharepopup ref="sharepopup" :showPopup="showPopup" shareType="2" :orderID="this.paramsInfo.dumid"></sharepopup>
  </view>
</template>

<script>
import m_0765 from '@/vendor/0765';
import { interopDefault as d_a34a } from '@/vendor/a34a';
import { AddressList, itemDefaultAddr, itemEdit, orderDetail } from '@/api/orich';

// Helpers the reference bundle hoisted out of the component.
function c(t, e, s, i, a, n, r) {
  try {
    var o = t[n](r), c = o.value;
  } catch (l) {
    return void s(l);
  }
  o.done ? e(c) : Promise.resolve(c).then(i, a);
}
function l(t) {
  return function () {
    var e = this, s = arguments;
    return new Promise(function (i, a) {
      var n = t.apply(e, s);
      function r(t) {
        c(n, i, a, r, o, 'next', t);
      }
      function o(t) {
        c(n, i, a, r, o, 'throw', t);
      }
      r(void 0);
    });
  };
}

export default {
  data: function () {
    return {
      paramsInfo: {
        dumid: null,
        status: null
      },
      shareIcon: '../../static/image/record/icon_Share.png',
      addrIcon: '../../static/image/goods/icon_MapPinLine.png',
      cardList: [],
      customStyle: {},
      orderStatus: null,
      addressList: {},
      addrId: '',
      addrNull: false,
      showPopup: false,
      page: 1,
      addrLoading: false
    };
  },
  onLoad: function (t) {
    var e = this;
    return l(d_a34a.mark(function s() {
      return d_a34a.wrap(function (s) {
        while (1) switch (s.prev = s.next) {
          case 0:
            return (e.paramsInfo.dumid = t.id, e.addrId = t.addrId, e.customStyle = m_0765.submitStyle, e.page = t.page || 1, s.next = 6, e.getDetail());
          case 6:
          case 'end':
            return s.stop();
        }
      }, s);
    }))();
  },
  mounted: function () {},
  watch: {
    addrLoading: function (t) {
      t && this.cardList[0].status && 3 == this.cardList[0].status && this.getAddress();
    }
  },
  methods: {
    handleBack: function () {
      3 == this.page ? uni.navigateTo({
        url: '../home/home'
      }) : uni.navigateTo({
        url: './record?type=0'
      });
    },
    poploading: function (t) {
      this.addrLoading = t;
    },
    showButton: function (t) {
      return 1 === +t.status ? 0 !== +t.remain : 7 !== +t.status && 2 !== +t.status && 6 !== +t.status;
    },
    getDetail: function () {
      var t = this;
      orderDetail(this.paramsInfo).then(function (e) {
        t.cardList = [];
        t.cardList.push(e);
      });
    },
    btnTitle: function (t) {
      this.orderStatus = t;
      var e = '';
      switch (+t) {
        case 1:
          e = this.$t('card.addmore');
          break;
        case 3:
          e = this.$t('order.confirm');
          break;
        case 4:
        case 6:
          e = this.$t('order.receive');
          break;
        case 5:
          e = this.$t('order.comment');
          break;
      }
      return e;
    },
    btnAction: function (t) {
      var e = this;
      switch (+this.orderStatus) {
        case 1:
          uni.navigateTo({
            url: ('../goods/goods?id=').concat(t)
          });
          break;
        case 3:
          this.getAddress().then(function () {
            e.$refs.popup.open();
          });
          break;
        case 4:
        case 6:
          this.$refs.receivePopup.open();
          break;
        case 5:
          uni.navigateTo({
            url: ('../bask/index?id=').concat(t)
          });
          break;
      }
    },
    handleConfirm: function () {
      var t = this;
      return l(d_a34a.mark(function e() {
        var s;
        return d_a34a.wrap(function (e) {
          while (1) switch (e.prev = e.next) {
            case 0:
              if (!t.addrNull) {
                e.next = 6;
                break;
              }
              return (s = Object.assign({}, {
                dumid: t.paramsInfo.dumid
              }, t.addressList), e.next = 4, itemDefaultAddr(s).then(function (e) {
                t.editStatus(6);
                t.getDetail();
                t.$refs.popup.close();
                uni.navigateTo({
                  url: ('../success/index?type=2&id=').concat(t.paramsInfo.dumid)
                });
              }).catch(function () {
                t.$refs.popup.close();
              }));
            case 4:
              e.next = 8;
              break;
            case 6:
              uni.navigateTo({
                url: ('../address/add?type=2&orderid=').concat(t.paramsInfo.dumid)
              });
              t.$refs.popup.close();
            case 8:
            case 'end':
              return e.stop();
          }
        }, e);
      }))();
    },
    editStatus: function (t) {
      itemEdit({
        dumid: this.paramsInfo.dumid,
        status: t
      }).then(function () {});
    },
    getAddress: function () {
      var t = this;
      return l(d_a34a.mark(function e() {
        var s, a;
        return d_a34a.wrap(function (e) {
          while (1) switch (e.prev = e.next) {
            case 0:
              return (s = t, a = {
                isdefault: 1,
                id: ''
              }, s.addrId && (a.isdefault = 0, a.id = s.addrId), e.next = 5, AddressList(a).then(function (e) {
                e.list.length ? (s.addrNull = true, s.addressList = e.list[0]) : (s.addrNull = false, s.addressList = {}, s.addressList.address = t.$t('order.addrTip'));
              }));
            case 5:
            case 'end':
              return e.stop();
          }
        }, e);
      }))();
    },
    btnCancel: function () {
      this.$refs.receivePopup.close();
    },
    btnConfirm: function () {
      var t = this;
      return l(d_a34a.mark(function e() {
        return d_a34a.wrap(function (e) {
          while (1) switch (e.prev = e.next) {
            case 0:
              return (e.next = 2, t.editStatus(5));
            case 2:
              t.$refs.receivePopup.close();
              t.getDetail();
              uni.navigateTo({
                url: ('../bask/index?id=').concat(t.cardList[0].dumid)
              });
            case 5:
            case 'end':
              return e.stop();
          }
        }, e);
      }))();
    },
    statusTip: function (t) {
      switch (+t) {
        case 1:
          return this.$t('order.status1');
        case 2:
          return this.$t('order.status2');
        default:
          return this.$t('order.status3');
      }
    },
    addressEdit: function () {
      this.addrNull && uni.navigateTo({
        url: ('../../pages/address/address?id=').concat(this.paramsInfo.dumid, '&type=2')
      });
      this.$refs.popup.close();
    },
    toDetail: function (t) {
      uni.navigateTo({
        url: ('../goods/goods?id=').concat(t)
      });
    },
    handleShare: function () {
      console.log(this.cardList);
      this.$refs.sharepopup.open();
    },
    toDiscount: function (t, e) {
      2 == t ? uni.navigateTo({
        url: ('../../pages/order/discount?id=').concat(e)
      }) : this.toDetail(e);
    }
  }
};
</script>

<style scoped>
.detail { font-family:Roboto,Roboto-Medium }
.img { width:100% }
.gray { color:#b6b6b6 }
.red { color:#f47766 }
.red_icon { width:10rpx;height:20rpx;background:#ee5016 }
.detail_share { display:flex;align-items:center;justify-content:space-between;padding:0 0 0 20rpx }
.detail_share .detail_share_left { display:flex;align-items:center }
.detail_share .detail_share_left .detail_share_left_title { font-size:32rpx;margin-left:24rpx;font-weight:700;color:#17273a }
.detail_share .detail_share_right { width:98rpx;height:102rpx }
.detail_main { background:#f9f9f9;min-height:100vh;padding-bottom:120rpx }
.detail_main .detail_main_title { display:flex;align-items:center;margin-bottom:20rpx }
.detail_main .detail_main_title .detail_main_title_font { margin-left:24rpx;font-size:32rpx;font-weight:700;color:#17273a }
.detail_main .detail_main_order { padding:20rpx 30rpx;background:#fff;margin-top:12rpx }
.detail_main .detail_main_item { display:flex;flex-wrap:wrap;justify-content:space-between;min-height:64rpx;line-height:64rpx }
.detail_main .detail_main_item .detail_main_status { text-align:right;width:80%;line-height:64rpx }
.detail_main .item_list { height:100%;max-width:368rpx }
.detail_main .detail_main_info { border-top:1px solid #eeeeef;margin-top:20rpx;padding:20rpx 134rpx 0 0rpx;display:flex }
.detail_main .detail_main_info .detail_main_info_icon { min-width:52rpx;max-width:52rpx }
.detail_main .detail_main_info .detail_main_info_mation { margin-left:28rpx }
.detail_main .detail_main_info .detail_main_info_mation .detail_main_info_mation_name { font-size:32rpx;line-height:48rpx;font-weight:700 }
.detail_main .detail_main_info .detail_main_info_mation .detail_main_info_mation_phone { font-size:24rpx;padding-left:16rpx }
.detail_main .detail_main_info .detail_main_info_mation .detail_main_info_mation_address { margin-top:6rpx;font-size:24rpx;color:#8f8f8f }
.detail_main .detail_main_info_mation_line { display:flex;align-items:center;margin:45rpx -14rpx 0 -12rpx }
.detail_main .detail_main_info_mation_line .line { width:42rpx;height:8rpx;-webkit-transform:skew(-45deg,0);transform:skew(-45deg,0) }
.detail_main .detail_main_info_mation_line .line:nth-child(odd) { background:#ff7846 }
.detail_main .detail_main_info_mation_line .line:nth-child(even) { background:#649dff }
.detail_main .detail_main_info_mation_line .lingmrlr6 { margin:0 6rpx }
.detail_main .border { margin:20rpx 0;border-bottom:1px solid #f3f3f4 }
.detail_foot { background:#f9f9f9;width:100%;height:200rpx }
.detail_append { width:100%;padding:10rpx 0 10rpx 80rpx;position:fixed;bottom:0;height:98rpx;background-color:#fff;box-shadow:0rpx 4rpx 24rpx 0rpx rgba(0,0,0,.1) }
.detail_append .detail_append_btn { width:600rpx;height:78rpx }
</style>
