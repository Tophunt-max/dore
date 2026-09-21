<template>
  <view class="bask">
    <navbar :title="$t('bask.basktitle')" background="#ffffff"></navbar>
    <view class="content_middle">
      <view class="goods">
        <view class="shop_img">
          <image :src="goodsData.iconurl" />
        </view>
        <view class="shop_title">{{ goodsData.name }}</view>
      </view>
      <view class="content">
        <view class="content-main">
          <u-input type="textarea" height="150" :placeholder="$t('bask.share')" v-model="form.content"></u-input>
        </view>
      </view>
      <view v-if="cLength" class="tips">
        {{ $t('bask.write') }}
        <text>{{ cLength }}</text>
        {{ $t('bask.chance') }}
      </view>
      <view class="upload_file">
        <view v-for="(item, index) in imgList" :key="index" class="upload-item">
          <image :src="item" />
          <image class="del" :src="'/static/image/error.png'" @click="delImg(index)" />
        </view>
        <view v-if="imgList.length < 6" class="btn" @click="pickImg">
          <u-icon class="btn_icon" name="plus" color="#B9B9B9" size="50"></u-icon>
          <view>{{ $t('bask.upload') }}</view>
        </view>
        <view v-if="1 == imgList.length || 4 == imgList.length" class="upload-op"></view>
      </view>
    </view>
    <view class="success_btn">
      <overbtn
        :btnText="$t('bask.submit')"
        :fontSize="28"
        btnType="submit"
        :loading="loading"
        @btnAction="confirm"
      ></overbtn>
    </view>
  </view>
</template>

<script>
import { GoodsDetail, ItemShare } from '@/api/orich';

export default {
  onLoad: function (t) {
    var e = this;
    this.form.id = t.id;
    GoodsDetail({
      id: t.id
    }).then(function (t) {
      e.goodsData = t;
    });
  },
  watch: {
    'form.content': function () {
      var t = this.form.content.length;
      this.cLength = t < 20 ? 20 - t : 0;
    }
  },
  computed: {},
  data: function () {
    return {
      cLength: '20',
      goodsData: {},
      form: {
        id: '',
        title: '',
        content: '',
        images: ''
      },
      imgList: [],
      fileList: [],
      actionUpload: '',
      loading: false,
      uploadLoading: false
    };
  },
  methods: {
    pickImg: function () {
      var t = this;
      uni.chooseImage({
        count: 6,
        success: function (e) {
          var s = e.tempFilePaths;
          uni.showLoading({
            mask: true,
            title: t.$t('common.loading')
          });
          for (var i = function (e) {
            uni.uploadFile({
              url: t.$apiAddr + '/api/index/upload',
              name: 'file',
              filePath: s[e],
              success: function (i) {
                var a = JSON.parse(i.data);
                t.imgList.push(a.data.url);
                t.fileList.push(a.data.path);
                e == s.length - 1 && uni.hideLoading();
              },
              fail: function () {
                uni.showToast({
                  icon: 'none',
                  title: t.$t('common.err')
                });
                uni.hideLoading();
              }
            });
          }, a = 0; a < s.length; a++) i(a);
        },
        fail: function () {
          uni.showToast({
            icon: 'none',
            title: t.$t('common.err')
          });
          uni.hideLoading();
        },
        complete: function () {}
      });
    },
    delImg: function (t) {
      this.imgList.splice(t, 1);
      this.fileList.splice(t, 1);
    },
    confirm: function () {
      var t = this;
      this.form.images = this.fileList;
      this.loading = true;
      ItemShare(this.form).then(function (e) {
        t.loading = false;
        uni.navigateTo({
          url: ('../success/index?type=3&id=').concat(t.form.id)
        });
        setTimeout(function () {
          t.imgList = [];
          t.fileList = [];
        }, 100);
      }).catch(function () {
        t.loading = false;
      });
    }
  }
};
</script>

<style scoped>
.bask { position:relative;min-height:100vh;background-color:#f9f9f9;padding-bottom:200rpx }
.content_middle { width:100%;padding:0 30rpx;padding-top:40rpx;padding-bottom:36rpx;background-color:#fff }
.goods { display:flex;flex-direction:row;align-items:center;justify-content:center }
.goods .shop_img { width:180rpx;height:180rpx;margin-right:30rpx;background:#f5f5f5;border-radius:8rpx }
.goods .shop_img uni-image { width:100%;height:100%;border-radius:8rpx }
.goods .shop_title { flex:1;font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:700;text-align:LEFT;color:#17273a }
.content .content-title { display:flex;flex-direction:row;align-items:center;justify-content:center;width:690rpx;height:84rpx;padding:0 46rpx;margin-top:42rpx;border:1rpx solid #b9b9b9;border-radius:9rpx }
.content .content-main { display:flex;flex-direction:row;align-items:flex-start;justify-content:center;width:690rpx;height:154rpx;padding:0 46rpx;margin-top:16rpx;border:1rpx solid #b9b9b9;border-radius:9rpx }
.tips { margin-top:26rpx;font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:LEFT;color:#b9b9b9 }
.tips uni-text { padding:0 10rpx;color:#ff5c5c }
.upload_file { display:flex;flex-direction:row;align-items:center;flex-wrap:wrap;justify-content:space-between;margin-top:36rpx }
.upload_file .upload-item { position:relative;width:192rpx;height:192rpx;margin-bottom:20rpx;opacity:1;background:hsla(0,0%,76.9%,.15);border:1rpx solid #b9b9b9;border-radius:17rpx }
.upload_file .upload-item uni-image { width:100%;height:100%;border-radius:17rpx }
.upload_file .upload-item .del { position:absolute;right:-20rpx;top:-20rpx;z-index:999;width:52rpx;height:52rpx;opacity:.8 }
.upload_file .upload-op { width:192rpx;height:192rpx;background:#fff }
.upload_file .btn { display:flex;flex-direction:column;align-items:center;justify-content:center;position:relative;width:192rpx;height:192rpx;margin-bottom:20rpx;background:hsla(0,0%,76.9%,.15);border:1rpx dashed #b9b9b9;border-radius:17rpx;font-size:26rpx;font-family:PingFang SC,PingFang SC-Medium;font-weight:700;color:#b9b9b9 }
.success_btn { position:fixed;left:74rpx;bottom:46rpx;width:600rpx;height:90rpx }
</style>
