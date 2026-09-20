import { LinearGradient } from 'expo-linear-gradient';
import { StyleSheet, Text, View } from 'react-native';
import { theme } from '@/theme';

interface BrandMarkProps {
  size?: number;
}

export function BrandMark({ size = 84 }: BrandMarkProps) {
  return (
    <LinearGradient
      colors={['#FFB458', '#FF7A32']}
      start={{ x: 0, y: 0 }}
      end={{ x: 1, y: 1 }}
      style={[
        styles.mark,
        {
          width: size,
          height: size,
          borderRadius: size * 0.24,
        },
      ]}
    >
      <View style={[styles.gift, { transform: [{ scale: size / 84 }] }]}>
        <View style={styles.leaves}>
          <View style={[styles.leaf, styles.leafLeft]} />
          <View style={[styles.leaf, styles.leafRight]} />
        </View>
        <View style={styles.lid} />
        <View style={styles.box}>
          <View style={styles.ribbon} />
        </View>
      </View>
      <Text style={[styles.name, { fontSize: size * 0.2 }]}>Oriva</Text>
    </LinearGradient>
  );
}

const styles = StyleSheet.create({
  mark: {
    alignItems: 'center',
    justifyContent: 'center',
    overflow: 'hidden',
  },
  gift: {
    width: 38,
    height: 34,
    alignItems: 'center',
    marginTop: -5,
  },
  leaves: {
    position: 'absolute',
    top: -8,
    width: 30,
    height: 15,
  },
  leaf: {
    position: 'absolute',
    width: 15,
    height: 8,
    borderWidth: 2,
    borderColor: theme.colors.surface,
    borderRadius: 10,
  },
  leafLeft: {
    left: 1,
    transform: [{ rotate: '38deg' }],
  },
  leafRight: {
    right: 1,
    transform: [{ rotate: '-38deg' }],
  },
  lid: {
    width: 38,
    height: 6,
    borderWidth: 2,
    borderColor: theme.colors.surface,
    borderRadius: 3,
  },
  box: {
    width: 32,
    height: 26,
    borderWidth: 2,
    borderTopWidth: 0,
    borderColor: theme.colors.surface,
    borderBottomLeftRadius: 4,
    borderBottomRightRadius: 4,
    alignItems: 'center',
  },
  ribbon: {
    width: 2,
    height: 24,
    backgroundColor: theme.colors.surface,
  },
  name: {
    marginTop: 5,
    color: theme.colors.surface,
    fontFamily: theme.typography.family.bold,
    letterSpacing: -0.5,
  },
});
