import { router, useLocalSearchParams } from 'expo-router';
import { Image, Pressable, StyleSheet, Text, View } from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';
import { assets } from '@/assets';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/success/index` (scope 076f44e8): a white top block with a large
// result image, orange tips line, and a Back-home / Confirm button pair.
export default function ResultScreen() {
  const { title, message, reference, next, tone } = useLocalSearchParams<{
    title?: string;
    message?: string;
    reference?: string;
    next?: string;
    tone?: string;
  }>();
  const { t } = useI18n();
  const failed = tone === 'danger';

  return (
    <Screen scroll={false} header={<TopBar title={title ?? t('result.done')} white />}>
      <View style={styles.top}>
        <Image
          source={failed ? assets.paymentFailed : assets.success}
          style={styles.topImg}
          resizeMode="contain"
        />
        <Text style={styles.tips}>{message ?? t('result.done')}</Text>

        {reference ? (
          <View style={styles.reference}>
            <Text style={styles.referenceLabel}>{t('result.reference')}</Text>
            <Text selectable style={styles.referenceValue}>
              {reference}
            </Text>
          </View>
        ) : null}

        <View style={styles.btnRow}>
          <Pressable
            onPress={() => router.replace('/')}
            style={[styles.btn, styles.btnPlain]}
          >
            <Text style={styles.btnPlainText}>{t('result.backHome')}</Text>
          </Pressable>
          <Pressable
            onPress={() => (next ? router.replace(next as '/') : router.replace('/'))}
            style={styles.btn}
          >
            <LinearGradient
              colors={[theme.colors.accentStart, theme.colors.accentEnd]}
              start={{ x: 0, y: 1 }}
              end={{ x: 1, y: 0 }}
              style={styles.btnFill}
            >
              <Text style={styles.btnFillText}>
                {next ? t('common.continue') : t('result.done')}
              </Text>
            </LinearGradient>
          </Pressable>
        </View>
      </View>
    </Screen>
  );
}

const styles = StyleSheet.create({
  // .top { column; center; bg #fff; margin-bottom:24rpx }
  top: {
    alignItems: 'center',
    paddingHorizontal: rpx(10),
    paddingTop: rpx(40),
    backgroundColor: theme.colors.surface,
    flex: 1,
  },
  // .top-img { height:380rpx }
  topImg: { width: rpx(390), height: rpx(380) },
  // .top-tips { width:530rpx; 28rpx; #ee5016 }
  tips: {
    width: rpx(530),
    textAlign: 'center',
    fontSize: rpx(28),
    color: '#ee5016',
    fontFamily: theme.typography.family.regular,
  },
  reference: {
    width: '90%',
    marginTop: rpx(40),
    padding: rpx(28),
    borderRadius: rpx(16),
    backgroundColor: '#f7f8f9',
  },
  referenceLabel: { color: theme.colors.textMuted, fontSize: rpx(26) },
  referenceValue: {
    marginTop: rpx(8),
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
  },
  // .top-btn { row; space-around; margin-top:42rpx }
  btnRow: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-around',
    width: '100%',
    marginTop: rpx(42),
    paddingHorizontal: rpx(10),
  },
  // .top-btn-item { 286rpx x 78rpx }
  btn: { width: rpx(286), height: rpx(78) },
  btnPlain: {
    borderWidth: rpx(2),
    borderColor: theme.colors.primary,
    borderRadius: rpx(9),
    alignItems: 'center',
    justifyContent: 'center',
  },
  btnPlainText: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
    fontSize: rpx(28),
  },
  btnFill: {
    flex: 1,
    borderRadius: rpx(9),
    alignItems: 'center',
    justifyContent: 'center',
  },
  btnFillText: {
    color: '#ad6701',
    fontFamily: theme.typography.family.bold,
    fontSize: rpx(28),
  },
});
