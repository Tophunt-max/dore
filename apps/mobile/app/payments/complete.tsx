import { Redirect, useLocalSearchParams } from 'expo-router';
export default function PaymentCompleteScreen() {
  const { paymentId } = useLocalSearchParams<{ paymentId?: string }>();
  return <Redirect href={paymentId ? `/payments/${paymentId}` : '/payments'} />;
}
