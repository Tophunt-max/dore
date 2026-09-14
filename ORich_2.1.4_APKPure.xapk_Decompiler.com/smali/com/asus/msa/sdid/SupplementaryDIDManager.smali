###### Class com.asus.msa.sdid.SupplementaryDIDManager (com.asus.msa.sdid.SupplementaryDIDManager)
.class public Lcom/asus/msa/sdid/SupplementaryDIDManager;
.super Ljava/lang/Object;


# static fields
.field public static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "SupplementaryDIDManager"


# instance fields
.field public isBinded:Z

.field public mContext:Landroid/content/Context;

.field public mDidService:Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;

.field public mListener:Lcom/asus/msa/sdid/IDIDBinderStatusListener;

.field public mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager;->isBinded:Z

    new-instance v0, Lcom/asus/msa/sdid/SupplementaryDIDManager$1;

    invoke-direct {v0, p0}, Lcom/asus/msa/sdid/SupplementaryDIDManager$1;-><init>(Lcom/asus/msa/sdid/SupplementaryDIDManager;)V

    iput-object v0, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static native synthetic access$000()Z
.end method

.method public static native synthetic access$102(Lcom/asus/msa/sdid/SupplementaryDIDManager;Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;)Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;
.end method

.method public static native synthetic access$200(Lcom/asus/msa/sdid/SupplementaryDIDManager;Z)V
.end method

.method private native notifyAllListeners(Z)V
.end method


# virtual methods
.method public native deInit()V
.end method

.method public native init(Lcom/asus/msa/sdid/IDIDBinderStatusListener;)V
.end method

.method public native showLog(Z)V
.end method

###### Class com.asus.msa.sdid.SupplementaryDIDManager.AnonymousClass1 (com.asus.msa.sdid.SupplementaryDIDManager$1)
.class public Lcom/asus/msa/sdid/SupplementaryDIDManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/msa/sdid/SupplementaryDIDManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/asus/msa/sdid/SupplementaryDIDManager;


# direct methods
.method public constructor <init>(Lcom/asus/msa/sdid/SupplementaryDIDManager;)V
    .registers 2

    iput-object p1, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager$1;->a:Lcom/asus/msa/sdid/SupplementaryDIDManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public native onServiceDisconnected(Landroid/content/ComponentName;)V
.end method
