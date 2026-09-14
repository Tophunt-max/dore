package io.dcloud.f.a.c.b;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.bun.miitmdid.core.ErrorCode;
import com.taobao.weex.el.parse.Operators;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* JADX INFO: loaded from: classes2.dex */
public class e {
    private static e b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f621a = "";

    private class a implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Context f622a;

        public a(Context context) {
            this.f622a = context;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            if (method.getName().equalsIgnoreCase("OnSupport") && objArr != null && objArr.length > 0) {
                ((Boolean) objArr[0]).booleanValue();
                Object obj2 = objArr.length > 1 ? objArr[1] : null;
                StringBuilder sb = new StringBuilder();
                if (obj2 == null) {
                    sb.append(Operators.OR);
                } else {
                    Object objA = e.a(obj2, "getOAID", null, new Object[0]);
                    Object objA2 = e.a(obj2, "getVAID", null, new Object[0]);
                    Object objA3 = e.a(obj2, "getAAID", null, new Object[0]);
                    sb.append(objA == null ? "" : objA);
                    sb.append("|");
                    if (objA2 == null) {
                        objA2 = "";
                    }
                    sb.append(objA2);
                    sb.append("|");
                    if (objA3 == null) {
                        objA3 = "";
                    }
                    sb.append(objA3);
                    e.this.f621a = String.valueOf(objA);
                    Context context = this.f622a;
                    if (context != null) {
                        io.dcloud.f.a.d.e.a(context, "dcloud-ads", "oaid", String.valueOf(objA));
                    }
                }
            }
            return null;
        }
    }

    private e() {
    }

    private boolean b(Context context) {
        int iA = a(context);
        return (iA == 1008612 || iA == 1008613 || iA == 1008611 || iA != 1008614) ? false : true;
    }

    public String c(Context context) {
        if (TextUtils.isEmpty(this.f621a)) {
            if (!b(context)) {
                return "";
            }
            if (context != null) {
                this.f621a = io.dcloud.f.a.d.e.a(context, "dcloud-ads", "oaid");
            }
        }
        return this.f621a;
    }

    public static e a() {
        if (b == null) {
            synchronized (e.class) {
                if (b == null) {
                    b = new e();
                }
            }
        }
        return b;
    }

    private int a(Context context) {
        Class<?> cls;
        try {
            Class<?> cls2 = Class.forName("com.bun.miitmdid.core.MdidSdkHelper");
            try {
                try {
                    cls = Class.forName("com.bun.supplier.IIdentifierListener");
                } catch (Exception unused) {
                    cls = Class.forName("com.bun.miitmdid.interfaces.IIdentifierListener");
                }
                Object objNewProxyInstance = Proxy.newProxyInstance(getClass().getClassLoader(), new Class[]{cls}, new a(context));
                Method declaredMethod = cls2.getDeclaredMethod("InitSdk", Context.class, Boolean.TYPE, cls);
                Object objInvoke = null;
                if (declaredMethod != null) {
                    declaredMethod.setAccessible(true);
                    objInvoke = declaredMethod.invoke(null, context, Boolean.TRUE, objNewProxyInstance);
                }
                return objInvoke instanceof Integer ? ((Integer) objInvoke).intValue() : ErrorCode.INIT_HELPER_CALL_ERROR;
            } catch (Exception unused2) {
                return ErrorCode.INIT_HELPER_CALL_ERROR;
            }
        } catch (ClassNotFoundException unused3) {
            throw new RuntimeException("not support");
        }
    }

    public static Object a(Object obj, String str, Class<?>[] clsArr, Object... objArr) {
        Method declaredMethod;
        if (obj == null) {
            return null;
        }
        try {
            Class<?> cls = obj.getClass();
            if (Build.VERSION.SDK_INT > 10) {
                declaredMethod = cls.getMethod(str, clsArr);
            } else {
                declaredMethod = cls.getDeclaredMethod(str, clsArr);
            }
            declaredMethod.setAccessible(true);
            if (objArr.length == 0) {
                objArr = null;
            }
            return declaredMethod.invoke(obj, objArr);
        } catch (Throwable unused) {
            return null;
        }
    }
}
