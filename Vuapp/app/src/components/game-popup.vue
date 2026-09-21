<template>
  <view class="popup">
    <u-popup mode="bottom" v-model="show">
      <view class="popup_up">
        <view
          class="title"
          :class="[1 == type ? 'cgreen' : 2 == type ? 'cviolet' : 3 == type ? 'cred' : 'cblue']"
        >
          {{ popTitle }}
        </view>
        <view class="contract pop_title u-m-l-40">{{ $t('game.contr2') }}</view>
        <view class="money u-m-l-40">
          <view
            v-for="(item, index) in moneyList"
            :key="index"
            class="money_item"
            :class="{ cgreen: item.num == money && 1 == type, cviolet: item.num == money && 2 == type, cred: item.num == money && 3 == type, cblue: item.num == money && 4 == type, select_bg: item.num == money }"
            @click="changeMoney(item.num)"
          >
            {{ item.num }}
          </view>
        </view>
        <view class="multiples pop_title u-m-l-40">{{ $t('game.multiples') }}</view>
        <view class="number u-m-l-40">
          <view
            v-for="(item, index) in numList"
            :key="index"
            class="number_item"
            :class="{ cgreen: item.num == buyNum && 1 == type, cviolet: item.num == buyNum && 2 == type, cred: item.num == buyNum && 3 == type, cblue: item.num == buyNum && 4 == type, select_bg: item.num == buyNum }"
            @click="changeBuyNum(item.num)"
          >
            {{ item.num }}
          </view>
        </view>
        <view class="numberbox u-m-l-40">
          <u-number-box
            input-width="180"
            input-height="72"
            :min="1"
            :max="maxBuyNum"
            @change="valChange"
            v-model="buyNum"
          ></u-number-box>
        </view>
        <view class="price u-m-l-40">
          <text>{{ +this.money * +this.buyNum }}</text>
        </view>
        <view class="button">
          <view class="button_cancel" @click="close">{{ $t('common.cancel') }}</view>
          <view
            class="button_confirm"
            :class="[1 == type ? 'cgreen' : 2 == type ? 'cviolet' : 3 == type ? 'cred' : 'cblue']"
            @click="confirm"
          >
            {{ $t('common.confirm') }}
          </view>
        </view>
      </view>
    </u-popup>
  </view>
</template>

<script>
export default {
  props: {
    type: {
      type: [String, Number],
      default: 0
    },
    selectNum: {
      type: [String, Number],
      default: ''
    },
    maxBuy: {
      type: [String, Number],
      default: 0
    },
    canBuy: {
      type: Boolean,
      default: true
    }
  },
  data: function () {
    return {
      show: false,
      money: 10,
      moneyList: [{
        num: 10,
        type: 1
      }, {
        num: 100,
        type: 2
      }, {
        num: 1e3,
        type: 3
      }, {
        num: 1e4,
        type: 4
      }],
      numList: [{
        num: 3,
        type: 1
      }, {
        num: 5,
        type: 2
      }, {
        num: 10,
        type: 3
      }],
      buyNum: 3
    };
  },
  computed: {
    popTitle: function () {
      var t = '';
      switch (+this.type) {
        case 1:
          t = this.$t('game.jgreen');
          break;
        case 2:
          t = this.$t('game.jviolet');
          break;
        case 3:
          t = this.$t('game.jred');
          break;
        case 4:
          t = ('').concat(this.$t('game.select'), ' ').concat(this.selectNum);
          break;
      }
      return t;
    },
    maxBuyNum: function () {
      return parseInt(+this.maxBuy / +this.money / 10);
    }
  },
  methods: {
    open: function () {
      this.canBuy && (this.show = true);
    },
    close: function () {
      this.show = false;
    },
    changeMoney: function (t) {
      this.money = t;
    },
    changeBuyNum: function (t) {
      this.buyNum = t;
    },
    valChange: function (t) {
      this.buyNum = t.value;
    },
    confirm: function () {
      var t = {
        money: this.money,
        buyNum: this.buyNum,
        color: 4 != this.type ? this.type : '',
        number: 4 == this.type ? this.selectNum : ''
      };
      this.$emit('confirm', t);
    }
  }
};
</script>

<style scoped>
.popup .popup_up { height:100%;position:relative;padding-bottom:88rpx }
.popup .popup_up .title { height:90rpx;line-height:90rpx;text-align:center;color:#fff;font-size:40rpx;font-family:Roboto,Roboto-Medium;font-weight:500 }
.popup .popup_up .cgreen { background:#55e273 }
.popup .popup_up .cviolet { background:#ff62ff }
.popup .popup_up .cred { background:#ff4343 }
.popup .popup_up .cblue { background:#3a89ff }
.popup .popup_up .contract { margin-top:38rpx }
.popup .popup_up .pop_title { font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#17273a }
.popup .popup_up .money { margin-top:26rpx;display:flex;align-items:center;justify-content:flex-start;border-radius:4rpx }
.popup .popup_up .money .money_item { width:126rpx;height:82rpx;line-height:82rpx;color:#8b8b8b;text-align:center;border-top:2rpx solid #b9b9b9;border-bottom:2rpx solid #b9b9b9;border-left:2rpx solid #b9b9b9 }
.popup .popup_up .money .money_item:last-child { border-right:2rpx solid #b9b9b9 }
.popup .popup_up .select_bg { color:#fff!important }
.popup .popup_up .multiples { margin-top:26rpx }
.popup .popup_up .number { margin-top:26rpx;display:flex;align-items:center;justify-content:flex-start;border-radius:4rpx }
.popup .popup_up .number .number_item { width:126rpx;height:82rpx;line-height:82rpx;color:#8b8b8b;text-align:center;border-top:2rpx solid #b9b9b9;border-bottom:2rpx solid #b9b9b9;border-left:2rpx solid #b9b9b9 }
.popup .popup_up .number .number_item:last-child { border-right:2rpx solid #b9b9b9 }
.popup .popup_up .numberbox { margin-top:24rpx }
.popup .popup_up .numberbox .u-icon-plus, .popup .popup_up .numberbox .u-icon-minus { width:82rpx }
.popup .popup_up .price { color:#ff5c5c;padding:20rpx 0 }
.popup .popup_up .price uni-text { margin-left:6rpx;font-size:36rpx;font-weight:500 }
.popup .popup_up .button { width:100%;position:absolute;bottom:0;left:0;display:flex;align-items:center;justify-content:flex-start;font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400 }
.popup .popup_up .button .button_cancel { flex:1;height:88rpx;line-height:88rpx;text-align:center;color:#17273a;background:#eee }
.popup .popup_up .button .button_confirm { flex:1.5;height:88rpx;line-height:88rpx;text-align:center;color:#fff }
</style>
