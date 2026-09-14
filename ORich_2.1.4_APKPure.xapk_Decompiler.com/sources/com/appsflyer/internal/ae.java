package com.appsflyer.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.appsflyer.AFLogger;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class ae {
    public static c AFInAppEventType = null;
    public static long AFKeystoreWrapper = 500;

    public interface c {
        void AFInAppEventParameterName(Activity activity);

        void valueOf(Context context);
    }

    /* JADX INFO: renamed from: com.appsflyer.internal.ae$4, reason: invalid class name */
    final class AnonymousClass4 implements Application.ActivityLifecycleCallbacks {
        final /* synthetic */ c AFInAppEventType;
        boolean AFKeystoreWrapper = true;
        boolean valueOf;
        private /* synthetic */ Executor values;

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
        }

        AnonymousClass4(Executor executor, c cVar) {
            this.values = executor;
            this.AFInAppEventType = cVar;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(final Activity activity) {
            this.values.execute(new Runnable() { // from class: com.appsflyer.internal.ae.4.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (!AnonymousClass4.this.valueOf) {
                        try {
                            AnonymousClass4.this.AFInAppEventType.AFInAppEventParameterName(activity);
                        } catch (Exception e) {
                            AFLogger.values("Listener thrown an exception: ", e);
                        }
                    }
                    AnonymousClass4.this.AFKeystoreWrapper = false;
                    AnonymousClass4.this.valueOf = true;
                }
            });
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(final Activity activity) {
            this.values.execute(new Runnable() { // from class: com.appsflyer.internal.ae.4.4
                @Override // java.lang.Runnable
                public final void run() {
                    AnonymousClass4.this.AFKeystoreWrapper = true;
                    final Context applicationContext = activity.getApplicationContext();
                    try {
                        new Timer().schedule(new TimerTask() { // from class: com.appsflyer.internal.ae.4.4.2
                            @Override // java.util.TimerTask, java.lang.Runnable
                            public final void run() {
                                if (AnonymousClass4.this.valueOf && AnonymousClass4.this.AFKeystoreWrapper) {
                                    AnonymousClass4.this.valueOf = false;
                                    try {
                                        AnonymousClass4.this.AFInAppEventType.valueOf(applicationContext);
                                    } catch (Exception e) {
                                        AFLogger.valueOf("Listener threw exception! ", e);
                                    }
                                }
                            }
                        }, ae.AFKeystoreWrapper);
                    } catch (Throwable th) {
                        AFLogger.valueOf("Background task failed with a throwable: ", th);
                    }
                }
            });
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(final Activity activity, Bundle bundle) {
            this.values.execute(new Runnable() { // from class: com.appsflyer.internal.ae.4.5
                @Override // java.lang.Runnable
                public final void run() {
                    j.AFInAppEventType();
                    Intent intent = activity.getIntent();
                    if (j.AFKeystoreWrapper(intent) == null || intent == j.AFInAppEventType) {
                        return;
                    }
                    j.AFInAppEventType = intent;
                }
            });
        }
    }

    static void valueOf(Context context, c cVar, Executor executor) {
        AFInAppEventType = cVar;
        AnonymousClass4 anonymousClass4 = new AnonymousClass4(executor, cVar);
        if (context instanceof Activity) {
            anonymousClass4.onActivityResumed((Activity) context);
        }
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(anonymousClass4);
    }
}
