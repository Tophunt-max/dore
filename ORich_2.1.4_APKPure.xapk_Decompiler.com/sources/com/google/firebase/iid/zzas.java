package com.google.firebase.iid;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.util.Log;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.iid.zzm;
import io.dcloud.common.constant.AbsoluteConst;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
final class zzas {
    private static int zzcm;
    private static PendingIntent zzcy;
    private final Context zzag;
    private final zzam zzav;
    private final SimpleArrayMap<String, TaskCompletionSource<Bundle>> zzcz = new SimpleArrayMap<>();
    private Messenger zzda = new Messenger(new zzav(this, Looper.getMainLooper()));
    private Messenger zzdb;
    private zzm zzdc;

    public zzas(Context context, zzam zzamVar) {
        this.zzag = context;
        this.zzav = zzamVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb(Message message) {
        if (message != null && (message.obj instanceof Intent)) {
            Intent intent = (Intent) message.obj;
            intent.setExtrasClassLoader(new zzm.zza());
            if (intent.hasExtra("google.messenger")) {
                Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
                if (parcelableExtra instanceof zzm) {
                    this.zzdc = (zzm) parcelableExtra;
                }
                if (parcelableExtra instanceof Messenger) {
                    this.zzdb = (Messenger) parcelableExtra;
                }
            }
            Intent intent2 = (Intent) message.obj;
            String action = intent2.getAction();
            if (!"com.google.android.c2dm.intent.REGISTRATION".equals(action)) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String strValueOf = String.valueOf(action);
                    Log.d("FirebaseInstanceId", strValueOf.length() != 0 ? "Unexpected response action: ".concat(strValueOf) : new String("Unexpected response action: "));
                    return;
                }
                return;
            }
            String stringExtra = intent2.getStringExtra("registration_id");
            if (stringExtra == null) {
                stringExtra = intent2.getStringExtra("unregistered");
            }
            if (stringExtra == null) {
                String stringExtra2 = intent2.getStringExtra("error");
                if (stringExtra2 == null) {
                    String strValueOf2 = String.valueOf(intent2.getExtras());
                    StringBuilder sb = new StringBuilder(String.valueOf(strValueOf2).length() + 49);
                    sb.append("Unexpected response, no error or registration id ");
                    sb.append(strValueOf2);
                    Log.w("FirebaseInstanceId", sb.toString());
                    return;
                }
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String strValueOf3 = String.valueOf(stringExtra2);
                    Log.d("FirebaseInstanceId", strValueOf3.length() != 0 ? "Received InstanceID error ".concat(strValueOf3) : new String("Received InstanceID error "));
                }
                if (stringExtra2.startsWith("|")) {
                    String[] strArrSplit = stringExtra2.split("\\|");
                    if (strArrSplit.length <= 2 || !"ID".equals(strArrSplit[1])) {
                        String strValueOf4 = String.valueOf(stringExtra2);
                        Log.w("FirebaseInstanceId", strValueOf4.length() != 0 ? "Unexpected structured response ".concat(strValueOf4) : new String("Unexpected structured response "));
                        return;
                    }
                    String str = strArrSplit[2];
                    String strSubstring = strArrSplit[3];
                    if (strSubstring.startsWith(":")) {
                        strSubstring = strSubstring.substring(1);
                    }
                    zza(str, intent2.putExtra("error", strSubstring).getExtras());
                    return;
                }
                synchronized (this.zzcz) {
                    for (int i = 0; i < this.zzcz.size(); i++) {
                        zza(this.zzcz.keyAt(i), intent2.getExtras());
                    }
                }
                return;
            }
            Matcher matcher = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)").matcher(stringExtra);
            if (!matcher.matches()) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String strValueOf5 = String.valueOf(stringExtra);
                    Log.d("FirebaseInstanceId", strValueOf5.length() != 0 ? "Unexpected response string: ".concat(strValueOf5) : new String("Unexpected response string: "));
                    return;
                }
                return;
            }
            String strGroup = matcher.group(1);
            String strGroup2 = matcher.group(2);
            Bundle extras = intent2.getExtras();
            extras.putString("registration_id", strGroup2);
            zza(strGroup, extras);
            return;
        }
        Log.w("FirebaseInstanceId", "Dropping invalid message");
    }

    private static synchronized void zza(Context context, Intent intent) {
        if (zzcy == null) {
            Intent intent2 = new Intent();
            intent2.setPackage("com.google.example.invalidpackage");
            zzcy = PendingIntent.getBroadcast(context, 0, intent2, 0);
        }
        intent.putExtra(AbsoluteConst.XML_APP, zzcy);
    }

    private final void zza(String str, Bundle bundle) {
        synchronized (this.zzcz) {
            TaskCompletionSource<Bundle> taskCompletionSourceRemove = this.zzcz.remove(str);
            if (taskCompletionSourceRemove == null) {
                String strValueOf = String.valueOf(str);
                Log.w("FirebaseInstanceId", strValueOf.length() != 0 ? "Missing callback for ".concat(strValueOf) : new String("Missing callback for "));
            } else {
                taskCompletionSourceRemove.setResult(bundle);
            }
        }
    }

    final Bundle zzc(Bundle bundle) throws IOException {
        if (this.zzav.zzaf() >= 12000000) {
            try {
                return (Bundle) Tasks.await(zzab.zzc(this.zzag).zzb(1, bundle));
            } catch (InterruptedException | ExecutionException e) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String strValueOf = String.valueOf(e);
                    StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 22);
                    sb.append("Error making request: ");
                    sb.append(strValueOf);
                    Log.d("FirebaseInstanceId", sb.toString());
                }
                if ((e.getCause() instanceof zzak) && ((zzak) e.getCause()).getErrorCode() == 4) {
                    return zzd(bundle);
                }
                return null;
            }
        }
        return zzd(bundle);
    }

    private final Bundle zzd(Bundle bundle) throws IOException {
        Bundle bundleZze = zze(bundle);
        if (bundleZze == null || !bundleZze.containsKey("google.messenger")) {
            return bundleZze;
        }
        Bundle bundleZze2 = zze(bundle);
        if (bundleZze2 == null || !bundleZze2.containsKey("google.messenger")) {
            return bundleZze2;
        }
        return null;
    }

    private static synchronized String zzah() {
        int i;
        i = zzcm;
        zzcm = i + 1;
        return Integer.toString(i);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:8|(1:10)(1:11)|12|(1:14)|15|(5:(7:17|(0)(2:28|(1:30)(1:31))|65|32|33|ec|37)|65|32|33|ec)|19|66|20|(1:22)(1:23)) */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00b9, code lost:
    
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00c0, code lost:
    
        if (android.util.Log.isLoggable("FirebaseInstanceId", r3) != false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c2, code lost:
    
        android.util.Log.d("FirebaseInstanceId", "Messenger failed, fallback to startService");
        r1 = r1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ed A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.tasks.TaskCompletionSource, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v14, types: [java.util.concurrent.TimeUnit] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00d1 -> B:65:0x00dc). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00d7 -> B:65:0x00dc). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final android.os.Bundle zze(android.os.Bundle r9) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 295
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.zzas.zze(android.os.Bundle):android.os.Bundle");
    }
}
