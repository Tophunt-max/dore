import { useMutation, useQueryClient } from '@tanstack/react-query';
import { router, useLocalSearchParams } from 'expo-router';
import * as ImagePicker from 'expo-image-picker';
import { useState } from 'react';
import { Image, Pressable, StyleSheet, Text, TextInput, View } from 'react-native';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { GradientButton } from '@/components/GradientButton';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/bask/index` (scope 0de9bf71): a white block with a goods card, a
// bordered review textarea, a red "write N more chars" tip, an image upload
// grid (max 6), and a fixed-bottom submit button.
export default function BaskShareScreen() {
  const { t } = useI18n();
  const { prizeId } = useLocalSearchParams<{ prizeId?: string }>();
  const [story, setStory] = useState('');
  const [images, setImages] = useState<string[]>([]);
  const client = useQueryClient();

  const charsLeft = story.trim().length < 20 ? 20 - story.trim().length : 0;

  const publish = useMutation({
    mutationFn: () =>
      api.createShare({ prizeId: prizeId || null, body: story.trim() }),
    onSuccess: () => {
      void client.invalidateQueries({ queryKey: ['shares'] });
      router.replace({ pathname: '/result', params: { title: t('shareWin.title'), message: t('shareWin.reward'), next: '/my-shares' } });
    },
  });

  async function pickImage() {
    if (images.length >= 6) return;
    const res = await ImagePicker.launchImageLibraryAsync({
      mediaTypes: ImagePicker.MediaTypeOptions.Images,
      quality: 0.7,
    });
    if (!res.canceled && res.assets[0]) {
      setImages((prev) => [...prev, res.assets[0]!.uri]);
    }
  }

  return (
    <Screen
      header={<TopBar title={t('shareWin.title')} white />}
      contentStyle={styles.page}
    >
      <View style={styles.middle}>
        {/* goods card */}
        <View style={styles.goods}>
          <View style={styles.shopImg}>
            <Image source={assets.success} style={styles.shopImgInner} resizeMode="contain" />
          </View>
          <Text style={styles.shopTitle} numberOfLines={3}>
            {t('shareWin.reward')}
          </Text>
        </View>

        {/* content-main textarea */}
        <View style={styles.contentMain}>
          <TextInput
            multiline
            maxLength={280}
            value={story}
            onChangeText={setStory}
            placeholder={t('shareWin.placeholder')}
            placeholderTextColor={theme.colors.disabled}
            style={styles.input}
            textAlignVertical="top"
          />
        </View>

        {charsLeft > 0 ? (
          <Text style={styles.tips}>
            {t('shareWin.charsTip', { count: charsLeft })}
          </Text>
        ) : null}

        {/* upload grid */}
        <View style={styles.uploadFile}>
          {images.map((uri, index) => (
            <View key={uri} style={styles.uploadItem}>
              <Image source={{ uri }} style={styles.uploadImg} />
              <Pressable
                style={styles.del}
                onPress={() =>
                  setImages((prev) => prev.filter((_, i) => i !== index))
                }
              >
                <Text style={styles.delText}>×</Text>
              </Pressable>
            </View>
          ))}
          {images.length < 6 ? (
            <Pressable style={styles.addBtn} onPress={() => void pickImage()}>
              <Text style={styles.addPlus}>+</Text>
              <Text style={styles.addText}>{t('shareWin.upload')}</Text>
            </Pressable>
          ) : null}
        </View>
      </View>

      {publish.error ? (
        <Text style={styles.error}>{publish.error.message}</Text>
      ) : null}

      <View style={styles.successBtn}>
        <GradientButton
          disabled={story.trim().length < 12}
          loading={publish.isPending}
          onPress={() => publish.mutate()}
        >
          {t('shareWin.submit')}
        </GradientButton>
      </View>
    </Screen>
  );
}

const styles = StyleSheet.create({
  page: { backgroundColor: '#f9f9f9', flexGrow: 1, paddingBottom: rpx(200) },
  // .content_middle { padding:40rpx 30rpx 36rpx; bg #fff }
  middle: {
    paddingTop: rpx(40),
    paddingBottom: rpx(36),
    paddingHorizontal: rpx(30),
    backgroundColor: '#fff',
  },
  // .goods
  goods: { flexDirection: 'row', alignItems: 'center' },
  // .shop_img { 180rpx; bg #f5f5f5 }
  shopImg: {
    width: rpx(180),
    height: rpx(180),
    marginRight: rpx(30),
    borderRadius: rpx(8),
    backgroundColor: '#f5f5f5',
    alignItems: 'center',
    justifyContent: 'center',
  },
  shopImgInner: { width: '80%', height: '80%' },
  // .shop_title { flex:1; 28rpx; weight 700 }
  shopTitle: {
    flex: 1,
    fontSize: rpx(28),
    color: '#17273a',
    fontFamily: theme.typography.family.bold,
  },
  // .content-main { height:154rpx; padding:0 46rpx; border 1rpx #b9b9b9; radius 9rpx }
  contentMain: {
    marginTop: rpx(16),
    height: rpx(200),
    paddingHorizontal: rpx(30),
    paddingVertical: rpx(20),
    borderWidth: rpx(1),
    borderColor: '#b9b9b9',
    borderRadius: rpx(9),
  },
  input: {
    flex: 1,
    fontSize: rpx(28),
    color: theme.colors.ink,
    fontFamily: theme.typography.family.regular,
  },
  // .tips { margin-top:26rpx; 28rpx; #b9b9b9 } with red count
  tips: {
    marginTop: rpx(26),
    fontSize: rpx(28),
    color: '#ff5c5c',
    fontFamily: theme.typography.family.regular,
  },
  // .upload_file { row; wrap; space-between; margin-top:36rpx }
  uploadFile: {
    marginTop: rpx(36),
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: rpx(20),
  },
  // .upload-item { 192rpx; border 1rpx #b9b9b9; radius 17rpx }
  uploadItem: {
    position: 'relative',
    width: rpx(192),
    height: rpx(192),
    borderWidth: rpx(1),
    borderColor: '#b9b9b9',
    borderRadius: rpx(17),
    backgroundColor: 'rgba(196,196,196,0.15)',
  },
  uploadImg: { width: '100%', height: '100%', borderRadius: rpx(17) },
  del: {
    position: 'absolute',
    right: rpx(-16),
    top: rpx(-16),
    width: rpx(48),
    height: rpx(48),
    borderRadius: rpx(24),
    backgroundColor: 'rgba(0,0,0,0.55)',
    alignItems: 'center',
    justifyContent: 'center',
  },
  delText: { color: '#fff', fontSize: rpx(30), lineHeight: rpx(32) },
  // .btn { 192rpx; dashed border; column }
  addBtn: {
    width: rpx(192),
    height: rpx(192),
    alignItems: 'center',
    justifyContent: 'center',
    borderWidth: rpx(1),
    borderStyle: 'dashed',
    borderColor: '#b9b9b9',
    borderRadius: rpx(17),
    backgroundColor: 'rgba(196,196,196,0.15)',
  },
  addPlus: { fontSize: rpx(50), color: '#b9b9b9', lineHeight: rpx(56) },
  addText: {
    fontSize: rpx(26),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.bold,
  },
  error: {
    marginTop: rpx(20),
    textAlign: 'center',
    color: theme.colors.danger,
  },
  // .success_btn { fixed; left:74rpx; bottom:46rpx; width:600rpx }
  successBtn: {
    position: 'absolute',
    left: rpx(74),
    right: rpx(74),
    bottom: rpx(46),
  },
});
