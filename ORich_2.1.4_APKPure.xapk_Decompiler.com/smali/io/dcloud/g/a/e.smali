###### Class io.dcloud.g.a.e (io.dcloud.g.a.e)
.class Lio/dcloud/g/a/e;
.super Lio/dcloud/g/a/f;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IApp;
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# static fields
.field public static B1:Ljava/lang/String; = "webapp"


# instance fields
.field A:Ljava/lang/String;

.field A0:Lorg/json/JSONObject;

.field A1:Z

.field B:Ljava/lang/String;

.field B0:Lorg/json/JSONObject;

.field C:Ljava/lang/String;

.field C0:Lorg/json/JSONObject;

.field D:Ljava/lang/String;

.field D0:Lorg/json/JSONObject;

.field E:Ljava/lang/String;

.field E0:Lorg/json/JSONObject;

.field F:Ljava/lang/String;

.field F0:Lorg/json/JSONObject;

.field G:Ljava/lang/String;

.field G0:Lorg/json/JSONObject;

.field H:Ljava/lang/String;

.field H0:Ljava/lang/String;

.field I:Z

.field I0:Ljava/lang/String;

.field J:Z

.field J0:Landroid/content/Intent;

.field K:Z

.field K0:Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;

.field L:Z

.field L0:Ljava/lang/String;

.field M:Z

.field private M0:Ljava/lang/String;

.field N:Z

.field private N0:Ljava/lang/String;

.field O:Z

.field O0:Z

.field private P:Ljava/lang/String;

.field private P0:Z

.field Q:Z

.field private Q0:Z

.field private R:B

.field private R0:Ljava/lang/String;

.field private S:Z

.field private S0:Ljava/lang/String;

.field private T:Z

.field private T0:Ljava/lang/String;

.field private U:Z

.field private U0:Ljava/lang/String;

.field private V:Z

.field private V0:Ljava/lang/String;

.field private W:I

.field protected W0:Z

.field private X:I

.field private X0:Z

.field private Y:I

.field private Y0:Z

.field private Z:Ljava/lang/String;

.field private Z0:Ljava/lang/String;

.field private a0:Ljava/lang/String;

.field private a1:Ljava/lang/String;

.field private b0:Ljava/lang/String;

.field private b1:Z

.field private c0:Ljava/lang/String;

.field c1:J

.field private d0:Ljava/lang/String;

.field d1:Z

.field private e0:Ljava/lang/String;

.field e1:Z

.field f0:Z

.field f1:Z

.field private g0:Ljava/lang/String;

.field g1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h0:Ljava/lang/String;

.field h1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field i0:Ljava/lang/String;

.field i1:Ljava/lang/String;

.field j0:Ljava/lang/String;

.field j1:Ljava/lang/String;

.field k0:Z

.field private k1:Ljava/lang/String;

.field l0:Ljava/lang/String;

.field private l1:Z

.field m0:Ljava/lang/String;

.field private m1:Ljava/lang/String;

.field n0:Ljava/lang/String;

.field private n1:Z

.field o:Lio/dcloud/g/a/g;

.field private o0:Ljava/lang/String;

.field private o1:I

.field p:Lio/dcloud/common/util/BaseInfo$BaseAppInfo;

.field p0:Ljava/lang/String;

.field private p1:Lio/dcloud/common/DHInterface/IConfusionMgr;

.field q:B

.field private q0:Ljava/lang/String;

.field q1:Lio/dcloud/common/DHInterface/IWebviewStateListener;

.field r:Z

.field private r0:Lorg/json/JSONObject;

.field r1:Lorg/json/JSONObject;

.field s:Z

.field private s0:Ljava/lang/String;

.field private s1:Z

.field t:Z

.field private t0:Z

.field private t1:Ljava/lang/String;

.field u:Lio/dcloud/g/a/a;

.field private u0:Z

.field private u1:Ljava/lang/String;

.field v:Ljava/lang/String;

.field private v0:Ljava/lang/String;

.field private v1:Ljava/lang/String;

.field w:Ljava/lang/String;

.field private w0:Ljava/lang/String;

.field private w1:Ljava/lang/String;

.field x:Ljava/lang/String;

.field x0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field x1:Z

.field y:Ljava/lang/String;

.field y0:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/DHInterface/ISysEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field y1:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field z:Ljava/lang/String;

.field z0:Lorg/json/JSONObject;

.field z1:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lio/dcloud/g/a/a;Ljava/lang/String;B)V
    .registers 11

    .line 1
    invoke-direct {p0}, Lio/dcloud/g/a/f;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    .line 6
    iput-object v0, p0, Lio/dcloud/g/a/e;->p:Lio/dcloud/common/util/BaseInfo$BaseAppInfo;

    const/4 v1, 0x1

    .line 10
    iput-byte v1, p0, Lio/dcloud/g/a/e;->q:B

    const/4 v2, 0x0

    .line 14
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->r:Z

    .line 18
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->s:Z

    .line 20
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->t:Z

    .line 21
    iput-object v0, p0, Lio/dcloud/g/a/e;->u:Lio/dcloud/g/a/a;

    .line 25
    iput-object v0, p0, Lio/dcloud/g/a/e;->v:Ljava/lang/String;

    const-string v3, ""

    .line 29
    iput-object v3, p0, Lio/dcloud/g/a/e;->w:Ljava/lang/String;

    .line 30
    iput-object v3, p0, Lio/dcloud/g/a/e;->x:Ljava/lang/String;

    .line 31
    iput-object v3, p0, Lio/dcloud/g/a/e;->y:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lio/dcloud/g/a/e;->z:Ljava/lang/String;

    .line 39
    iput-object v3, p0, Lio/dcloud/g/a/e;->A:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lio/dcloud/g/a/e;->B:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lio/dcloud/g/a/e;->C:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lio/dcloud/g/a/e;->D:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lio/dcloud/g/a/e;->E:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lio/dcloud/g/a/e;->F:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lio/dcloud/g/a/e;->G:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lio/dcloud/g/a/e;->H:Ljava/lang/String;

    .line 71
    iput-boolean v1, p0, Lio/dcloud/g/a/e;->I:Z

    .line 72
    iput-boolean v1, p0, Lio/dcloud/g/a/e;->J:Z

    .line 76
    iput-boolean v1, p0, Lio/dcloud/g/a/e;->K:Z

    .line 80
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->L:Z

    .line 84
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->M:Z

    .line 88
    iput-boolean v1, p0, Lio/dcloud/g/a/e;->N:Z

    .line 92
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->O:Z

    .line 93
    iput-object v0, p0, Lio/dcloud/g/a/e;->P:Ljava/lang/String;

    .line 97
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->Q:Z

    .line 98
    iput-byte v1, p0, Lio/dcloud/g/a/e;->R:B

    .line 100
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->S:Z

    .line 104
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->T:Z

    .line 108
    iput-boolean v1, p0, Lio/dcloud/g/a/e;->U:Z

    .line 112
    iput-boolean v1, p0, Lio/dcloud/g/a/e;->V:Z

    const/16 v4, 0x2710

    .line 116
    iput v4, p0, Lio/dcloud/g/a/e;->W:I

    .line 120
    iput v2, p0, Lio/dcloud/g/a/e;->X:I

    .line 121
    iput v2, p0, Lio/dcloud/g/a/e;->Y:I

    .line 125
    iput-object v0, p0, Lio/dcloud/g/a/e;->Z:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lio/dcloud/g/a/e;->a0:Ljava/lang/String;

    .line 139
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->f0:Z

    .line 143
    iput-object v0, p0, Lio/dcloud/g/a/e;->g0:Ljava/lang/String;

    .line 147
    iput-object v0, p0, Lio/dcloud/g/a/e;->h0:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Lio/dcloud/g/a/e;->i0:Ljava/lang/String;

    .line 153
    iput-object v0, p0, Lio/dcloud/g/a/e;->j0:Ljava/lang/String;

    .line 157
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->k0:Z

    const-string v4, "accept"

    .line 161
    iput-object v4, p0, Lio/dcloud/g/a/e;->l0:Ljava/lang/String;

    const-string v4, "file:///android_asset/data/dcloud_error.html"

    .line 167
    iput-object v4, p0, Lio/dcloud/g/a/e;->m0:Ljava/lang/String;

    .line 172
    iput-object v0, p0, Lio/dcloud/g/a/e;->n0:Ljava/lang/String;

    .line 176
    iput-object v0, p0, Lio/dcloud/g/a/e;->o0:Ljava/lang/String;

    .line 180
    iput-object v0, p0, Lio/dcloud/g/a/e;->p0:Ljava/lang/String;

    const-string v4, "-1"

    .line 185
    iput-object v4, p0, Lio/dcloud/g/a/e;->q0:Ljava/lang/String;

    .line 186
    iput-object v0, p0, Lio/dcloud/g/a/e;->r0:Lorg/json/JSONObject;

    .line 187
    iput-object v3, p0, Lio/dcloud/g/a/e;->s0:Ljava/lang/String;

    .line 188
    iput-boolean v1, p0, Lio/dcloud/g/a/e;->t0:Z

    .line 189
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->u0:Z

    const-string v4, "uni-v3"

    .line 194
    iput-object v4, p0, Lio/dcloud/g/a/e;->v0:Ljava/lang/String;

    const-string v4, "fast"

    .line 198
    iput-object v4, p0, Lio/dcloud/g/a/e;->w0:Ljava/lang/String;

    .line 202
    iput-object v0, p0, Lio/dcloud/g/a/e;->x0:Ljava/util/ArrayList;

    .line 206
    iput-object v0, p0, Lio/dcloud/g/a/e;->y0:Ljava/util/HashMap;

    .line 210
    iput-object v0, p0, Lio/dcloud/g/a/e;->z0:Lorg/json/JSONObject;

    .line 215
    iput-object v0, p0, Lio/dcloud/g/a/e;->A0:Lorg/json/JSONObject;

    .line 220
    iput-object v0, p0, Lio/dcloud/g/a/e;->B0:Lorg/json/JSONObject;

    .line 222
    iput-object v0, p0, Lio/dcloud/g/a/e;->C0:Lorg/json/JSONObject;

    .line 223
    iput-object v0, p0, Lio/dcloud/g/a/e;->D0:Lorg/json/JSONObject;

    .line 224
    iput-object v0, p0, Lio/dcloud/g/a/e;->E0:Lorg/json/JSONObject;

    .line 225
    iput-object v0, p0, Lio/dcloud/g/a/e;->F0:Lorg/json/JSONObject;

    .line 226
    iput-object v0, p0, Lio/dcloud/g/a/e;->G0:Lorg/json/JSONObject;

    .line 229
    iput-object v0, p0, Lio/dcloud/g/a/e;->H0:Ljava/lang/String;

    .line 230
    iput-object v0, p0, Lio/dcloud/g/a/e;->I0:Ljava/lang/String;

    .line 234
    iput-object v0, p0, Lio/dcloud/g/a/e;->J0:Landroid/content/Intent;

    .line 235
    iput-object v0, p0, Lio/dcloud/g/a/e;->K0:Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;

    .line 237
    iput-object v0, p0, Lio/dcloud/g/a/e;->L0:Ljava/lang/String;

    const-string v4, "none"

    .line 241
    iput-object v4, p0, Lio/dcloud/g/a/e;->N0:Ljava/lang/String;

    .line 245
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->O0:Z

    .line 246
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->P0:Z

    .line 247
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->Q0:Z

    const-string v5, "default"

    .line 248
    iput-object v5, p0, Lio/dcloud/g/a/e;->R0:Ljava/lang/String;

    .line 252
    iput-object v0, p0, Lio/dcloud/g/a/e;->S0:Ljava/lang/String;

    .line 254
    iput-object v0, p0, Lio/dcloud/g/a/e;->T0:Ljava/lang/String;

    .line 255
    iput-object v0, p0, Lio/dcloud/g/a/e;->U0:Ljava/lang/String;

    .line 259
    iput-object v3, p0, Lio/dcloud/g/a/e;->V0:Ljava/lang/String;

    .line 261
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->W0:Z

    .line 262
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->X0:Z

    .line 263
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->Y0:Z

    .line 264
    iput-object v0, p0, Lio/dcloud/g/a/e;->Z0:Ljava/lang/String;

    .line 265
    iput-object v0, p0, Lio/dcloud/g/a/e;->a1:Ljava/lang/String;

    .line 267
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->b1:Z

    const-wide/16 v5, 0x0

    .line 272
    iput-wide v5, p0, Lio/dcloud/g/a/e;->c1:J

    .line 276
    iput-boolean v1, p0, Lio/dcloud/g/a/e;->d1:Z

    .line 278
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->e1:Z

    .line 280
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->f1:Z

    .line 282
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lio/dcloud/g/a/e;->g1:Ljava/util/ArrayList;

    .line 283
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lio/dcloud/g/a/e;->h1:Ljava/util/ArrayList;

    .line 285
    iput-object v0, p0, Lio/dcloud/g/a/e;->i1:Ljava/lang/String;

    .line 286
    iput-object v0, p0, Lio/dcloud/g/a/e;->j1:Ljava/lang/String;

    .line 288
    iput-object v3, p0, Lio/dcloud/g/a/e;->k1:Ljava/lang/String;

    .line 292
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->l1:Z

    .line 293
    iput-object v0, p0, Lio/dcloud/g/a/e;->m1:Ljava/lang/String;

    .line 294
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->n1:Z

    .line 296
    iput v1, p0, Lio/dcloud/g/a/e;->o1:I

    .line 309
    iput-object v0, p0, Lio/dcloud/g/a/e;->q1:Lio/dcloud/common/DHInterface/IWebviewStateListener;

    .line 1228
    iput-object v0, p0, Lio/dcloud/g/a/e;->r1:Lorg/json/JSONObject;

    .line 1488
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->s1:Z

    .line 1499
    iput-object v4, p0, Lio/dcloud/g/a/e;->t1:Ljava/lang/String;

    const-string v3, "force"

    .line 1512
    iput-object v3, p0, Lio/dcloud/g/a/e;->u1:Ljava/lang/String;

    .line 2536
    iput-object v0, p0, Lio/dcloud/g/a/e;->v1:Ljava/lang/String;

    .line 2537
    iput-object v0, p0, Lio/dcloud/g/a/e;->w1:Ljava/lang/String;

    .line 2997
    iput-boolean v1, p0, Lio/dcloud/g/a/e;->x1:Z

    .line 3111
    iput-object v0, p0, Lio/dcloud/g/a/e;->y1:Ljava/util/HashMap;

    .line 3112
    iput-object v0, p0, Lio/dcloud/g/a/e;->z1:Ljava/lang/String;

    .line 3198
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->A1:Z

    .line 3199
    iput-object p1, p0, Lio/dcloud/g/a/e;->u:Lio/dcloud/g/a/a;

    .line 3200
    iput-object p2, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    .line 3201
    invoke-virtual {p0, p3}, Lio/dcloud/g/a/e;->b(B)V

    .line 3202
    invoke-static {}, Lio/dcloud/g/b/b;->c()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/g/a/e;->p1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    .line 3203
    new-instance p1, Lio/dcloud/g/a/g;

    invoke-direct {p1}, Lio/dcloud/g/a/g;-><init>()V

    iput-object p1, p0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    .line 3204
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x2

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lio/dcloud/g/a/e;->x0:Ljava/util/ArrayList;

    .line 3205
    invoke-static {p2}, Lio/dcloud/common/util/AppRuntime;->isUniApp(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/g/a/e;->n1:Z

    return-void
.end method

.method static synthetic a(Lio/dcloud/g/a/e;B)B
    .registers 2

    .line 2
    iput-byte p1, p0, Lio/dcloud/g/a/e;->R:B

    return p1
.end method

.method private a(B)Ljava/lang/String;
    .registers 3

    .line 1233
    iget-byte p1, p0, Lio/dcloud/g/a/e;->R:B

    const/4 v0, 0x1

    if-ne p1, v0, :cond_23

    .line 1234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sBaseResAppsFullPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->APP_WWW_FS_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3a

    :cond_23
    if-nez p1, :cond_39

    .line 1236
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/g/a/e;->g0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3a

    :cond_39
    const/4 p1, 0x0

    :goto_3a
    return-object p1
.end method

.method static synthetic a(Lio/dcloud/g/a/e;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/g/a/e;->g0:Ljava/lang/String;

    return-object p0
.end method

.method private a(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .registers 4

    .line 621
    :try_start_0
    iget-boolean v0, p0, Lio/dcloud/g/a/e;->n1:Z

    if-nez v0, :cond_12

    .line 622
    new-instance v0, Lio/dcloud/common/adapter/io/UnicodeInputStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lio/dcloud/common/adapter/io/UnicodeInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object p1, v0

    .line 624
    :cond_12
    invoke-static {p1}, Lio/dcloud/common/util/IOUtil;->getBytes(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 625
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 626
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_26

    :catch_21
    move-exception p1

    .line 629
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_26
    return-object p1
.end method

.method private a()V
    .registers 6

    .line 799
    iget-boolean v0, p0, Lio/dcloud/g/a/e;->n1:Z

    if-eqz v0, :cond_5

    return-void

    .line 800
    :cond_5
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-nez v0, :cond_14

    .line 801
    invoke-static {}, Lio/dcloud/g/b/a;->f()Lio/dcloud/g/b/a;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lio/dcloud/g/b/a;->a(Landroid/content/Context;)V

    .line 802
    :cond_14
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->r()Z

    move-result v0

    if-nez v0, :cond_48

    .line 803
    invoke-static {}, Lio/dcloud/g/b/e;->a()Lio/dcloud/g/b/e;

    move-result-object v0

    const-string v1, "commit"

    invoke-virtual {v0, v1}, Lio/dcloud/g/b/e;->a(Ljava/lang/String;)Lio/dcloud/common/DHInterface/IPdrModule;

    move-result-object v0

    if-eqz v0, :cond_48

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 805
    iget-object v2, p0, Lio/dcloud/g/a/e;->I0:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    iget-object v3, p0, Lio/dcloud/g/a/e;->u:Lio/dcloud/g/a/a;

    iget-object v3, v3, Lio/dcloud/g/a/a;->f:Lorg/json/JSONObject;

    if-eqz v3, :cond_3f

    const-string v4, "version"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_41

    :cond_3f
    const-string v3, "0.1"

    :goto_41
    aput-object v3, v1, v2

    const-string v2, "start_up"

    invoke-interface {v0, v2, v1}, Lio/dcloud/common/DHInterface/IPdrModule;->execute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    :cond_48
    return-void
.end method

.method private a(I)Z
    .registers 10

    const/4 v0, 0x0

    .line 734
    sput v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogCount:I

    .line 735
    sget-object v1, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->sUsePermissionWebviews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 736
    iget-object v1, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    iget-object v2, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/dcloud/common/adapter/util/PermissionUtil;->removeTempPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 737
    sget-object v1, Lio/dcloud/g/a/e;->B1:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start0 mAppid==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object v1, p0, Lio/dcloud/g/a/e;->v:Ljava/lang/String;

    sput-object v1, Lio/dcloud/common/util/BaseInfo;->sCurrentAppOriginalAppid:Ljava/lang/String;

    .line 739
    iget-object v1, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/util/BaseInfo;->putStartupTimeData(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lio/dcloud/common/util/BaseInfo;->sProcessId:J

    .line 741
    sget-object v1, Lio/dcloud/g/a/e;->B1:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lio/dcloud/g/a/e;->R:B

    const/4 v4, 0x1

    if-ne v3, v4, :cond_53

    const-string v3, " APP_RUNNING_MODE"

    goto :goto_55

    :cond_53
    const-string v3, " FS_RUNNING_MODE"

    :goto_55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->u()V

    const/4 v1, 0x3

    .line 743
    invoke-virtual {p0, v1}, Lio/dcloud/g/a/e;->setStatus(B)V

    .line 744
    iget-object v2, p0, Lio/dcloud/g/a/e;->K0:Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;

    if-eqz v2, :cond_6d

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;->onStart()V

    .line 745
    :cond_6d
    sget-object v2, Lio/dcloud/g/a/e;->B1:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLaunchPath="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lio/dcloud/g/a/e;->h0:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "webapp start task begin success appid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mLaunchPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/dcloud/g/a/e;->h0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "download_manager"

    invoke-static {v3, v2}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    sget-object v2, Lio/dcloud/common/util/TestUtil;->START_STREAM_APP:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "webapp start appid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/dcloud/common/util/TestUtil;->print(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "start0"

    .line 748
    invoke-static {v4, v2}, Lio/dcloud/common/util/BaseInfo;->setLoadingLaunchePage(ZLjava/lang/String;)V

    .line 751
    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "__launch_path__"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz v2, :cond_fb

    .line 752
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_fb

    .line 753
    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v3, "about:blank"

    .line 755
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f8

    .line 756
    invoke-virtual {p0, v5, v2}, Lio/dcloud/g/a/e;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 758
    :cond_f8
    iput-boolean v4, p0, Lio/dcloud/g/a/e;->k0:Z

    goto :goto_118

    .line 759
    :cond_fb
    iget-object v2, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-static {v2}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_112

    iget-object v2, p0, Lio/dcloud/g/a/e;->j0:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_112

    .line 760
    iget-object v2, p0, Lio/dcloud/g/a/e;->j0:Ljava/lang/String;

    invoke-virtual {p0, v5, v2}, Lio/dcloud/g/a/e;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_118

    .line 762
    :cond_112
    iget-object v2, p0, Lio/dcloud/g/a/e;->h0:Ljava/lang/String;

    invoke-virtual {p0, v5, v2}, Lio/dcloud/g/a/e;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 764
    :goto_118
    invoke-direct {p0, p0}, Lio/dcloud/g/a/e;->a(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v3

    if-eqz v3, :cond_13c

    new-instance v3, Ljava/io/File;

    sget-object v6, Lio/dcloud/common/util/BaseInfo;->sConfigXML:Ljava/lang/String;

    .line 765
    invoke-virtual {p0, v6}, Lio/dcloud/g/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_13c

    .line 768
    iget-object v2, p0, Lio/dcloud/g/a/e;->i0:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13a

    iget-object v2, p0, Lio/dcloud/g/a/e;->j1:Ljava/lang/String;

    goto :goto_13c

    :cond_13a
    iget-object v2, p0, Lio/dcloud/g/a/e;->i0:Ljava/lang/String;

    .line 770
    :cond_13c
    :goto_13c
    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_15a

    .line 771
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".html"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15a

    .line 772
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 775
    :cond_15a
    iget-boolean v3, p0, Lio/dcloud/g/a/e;->l1:Z

    if-eqz v3, :cond_164

    const-string v2, "__uniappview.html"

    .line 776
    invoke-virtual {p0, v5, v2}, Lio/dcloud/g/a/e;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 779
    :cond_164
    iget-object v3, p0, Lio/dcloud/g/a/e;->u:Lio/dcloud/g/a/a;

    sget-object v5, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v0

    aput-object v2, v6, v4

    iget-boolean v0, p0, Lio/dcloud/g/a/e;->O0:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v6, v2

    iget-object v0, p0, Lio/dcloud/g/a/e;->R0:Ljava/lang/String;

    aput-object v0, v6, v1

    invoke-virtual {v3, v5, p1, v6}, Lio/dcloud/g/a/a;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_183

    goto :goto_18b

    .line 780
    :cond_183
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    :goto_18b
    return v4
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;)Z
    .registers 3

    .line 781
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->getOriginalDirectPage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "direct_page"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method public static a(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)Z
    .registers 2

    .line 812
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyDown:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-eq p0, v0, :cond_e

    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyUp:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-eq p0, v0, :cond_e

    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyLongPress:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-eq p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private a(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)Z
    .registers 7

    .line 810
    instance-of v0, p1, Lio/dcloud/common/DHInterface/IBoot;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lio/dcloud/g/a/e;->u:Lio/dcloud/g/a/a;

    const/4 v3, 0x0

    .line 811
    invoke-virtual {v0, v3, v1, p1}, Lio/dcloud/g/a/a;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v2}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v0

    if-nez v0, :cond_2d

    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onStart:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-eq p2, v0, :cond_27

    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-eq p2, v0, :cond_27

    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onPause:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-eq p2, v0, :cond_27

    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onResume:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p2, v0, :cond_2d

    :cond_27
    instance-of p1, p1, Lio/dcloud/common/DHInterface/ReceiveSystemEventVoucher;

    if-eqz p1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :cond_2d
    :goto_2d
    return v1
.end method

.method private a(Lorg/json/JSONObject;Lio/dcloud/g/a/g;)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p1, :cond_1e

    const-string v1, "control"

    .line 1246
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x0

    .line 1248
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1249
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "uni-v3"

    .line 1250
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    :cond_1e
    const/4 v2, 0x1

    :cond_1f
    if-nez v2, :cond_2d

    .line 1256
    iput-boolean v0, p2, Lio/dcloud/g/a/g;->a:Z

    .line 1257
    sget-object p1, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_COMPONENTS_MODE_NOT_SUPPORT:Ljava/lang/String;

    const/16 v0, 0x4e2

    invoke-static {v0, p1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    :cond_2d
    return v2
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_1a

    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    .line 159
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/g/a/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1a
    return-object p0
.end method

.method private b()V
    .registers 4

    .line 167
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->r()Z

    move-result v0

    if-nez v0, :cond_16

    .line 168
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v1

    new-instance v2, Lio/dcloud/g/a/e$d;

    invoke-direct {v2, p0, v0}, Lio/dcloud/g/a/e$d;-><init>(Lio/dcloud/g/a/e;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    :cond_16
    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sBaseFsSitMapPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/_sitemap.json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d()V
    .registers 1

    return-void
.end method

.method private e()V
    .registers 6

    const-string v0, "homeButton"

    const-string v1, "webviewid"

    .line 1
    iget-object v2, p0, Lio/dcloud/g/a/e;->G0:Lorg/json/JSONObject;

    if-eqz v2, :cond_5b

    .line 3
    :try_start_8
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 5
    iget-object v3, p0, Lio/dcloud/g/a/e;->G0:Lorg/json/JSONObject;

    const-string v4, "direct_page"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    :cond_19
    iget-object v1, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_1f} :catch_57

    const-string v2, "titleNView"

    if-eqz v1, :cond_2c

    .line 8
    :try_start_23
    iget-object v0, p0, Lio/dcloud/g/a/e;->G0:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/g/a/e;->F0:Lorg/json/JSONObject;

    goto :goto_5b

    :cond_2c
    const/4 v1, 0x0

    .line 11
    iget-object v3, p0, Lio/dcloud/g/a/e;->G0:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 12
    iget-object v1, p0, Lio/dcloud/g/a/e;->G0:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :cond_3b
    if-nez v1, :cond_47

    .line 15
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 16
    iget-object v3, p0, Lio/dcloud/g/a/e;->G0:Lorg/json/JSONObject;

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_47
    const-string v2, "autoBackButton"

    const/4 v3, 0x1

    .line 18
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 19
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 20
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_56} :catch_57

    goto :goto_5b

    :catch_57
    move-exception v0

    .line 24
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5b
    :goto_5b
    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method private f()V
    .registers 6

    const-string v0, "wap2app__template/"

    .line 1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "wap2app_temp/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/adapter/io/DHFile;->rename(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2a} :catch_50

    const-string v2, "data/wap2app"

    .line 2
    :try_start_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/dcloud/common/adapter/io/DHFile;->copyDir(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne v1, v0, :cond_54

    .line 4
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/g/a/e$a;

    invoke-direct {v1, p0}, Lio/dcloud/g/a/e$a;-><init>(Lio/dcloud/g/a/e;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_4f} :catch_50

    goto :goto_54

    :catch_50
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_54
    :goto_54
    return-void
.end method

.method private h()Ljava/lang/String;
    .registers 2

    const-string v0, "UWV/BnpHVVhMahB0EU1XA15hAEFOAWlGVHBkcgluSF0HFhlQZx15Yhhjb3xCHgRfWxV+cQhPS1ICFxRzdkUfeyo2YTNkODhmYS00YmEwLTQ3OWYtOTQyMi1lNWFhYmUxNTg5N2IxMjQ="

    return-object v0
.end method

.method private i()Lorg/json/JSONObject;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "_www/__template.json"

    .line 1
    invoke-virtual {p0, v1}, Lio/dcloud/g/a/e;->obtainResInStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 3
    invoke-direct {p0, v1}, Lio/dcloud/g/a/e;->a(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v0

    .line 4
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    :goto_15
    return-object v0
.end method

.method private j()Lorg/json/JSONObject;
    .registers 12

    const-string v0, "version"

    const-string v1, "wap2app__template.zip"

    const/4 v2, 0x0

    .line 1
    :try_start_5
    sget-boolean v3, Lio/dcloud/common/util/BaseInfo;->sCoverApkRuning:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7} :catch_195

    const/4 v4, 0x1

    const-string v5, "__template.json"

    const-string v6, "wap2app__template/"

    const/4 v7, 0x0

    if-eqz v3, :cond_79

    .line 2
    :try_start_f
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_79

    .line 6
    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sBaseConfigTemplatePath:Ljava/lang/String;

    invoke-static {v3}, Lio/dcloud/common/adapter/util/PlatformUtil;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 7
    invoke-direct {p0, v3}, Lio/dcloud/g/a/e;->a(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v8

    .line 8
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 9
    invoke-static {v3}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v3

    .line 15
    invoke-direct {p0, v3}, Lio/dcloud/g/a/e;->a(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v10

    .line 16
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v3}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 18
    sget-object v3, Lio/dcloud/common/util/BaseInfo;->mWap2appTemplateFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 19
    sget-object v3, Lio/dcloud/common/util/BaseInfo;->mW2AE:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 21
    invoke-static {v9, v0}, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 22
    invoke-direct {p0}, Lio/dcloud/g/a/e;->f()V

    move-object v2, v8

    const/4 v7, 0x1

    goto :goto_79

    :cond_78
    move-object v2, v10

    .line 30
    :cond_79
    :goto_79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "wap2app_temp/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/dcloud/common/adapter/io/DHFile;->rename(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_b7} :catch_195

    .line 33
    :try_start_b7
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/util/ZipUtils;->upZipFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_e1} :catch_ed
    .catchall {:try_start_b7 .. :try_end_e1} :catchall_eb

    .line 38
    :try_start_e1
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/g/a/e$b;

    invoke-direct {v1, p0}, Lio/dcloud/g/a/e$b;-><init>(Lio/dcloud/g/a/e;)V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_ea} :catch_195

    goto :goto_fb

    :catchall_eb
    move-exception v0

    goto :goto_ff

    :catch_ed
    move-exception v0

    .line 39
    :try_start_ee
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_eb

    .line 41
    :try_start_f1
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/g/a/e$b;

    invoke-direct {v1, p0}, Lio/dcloud/g/a/e$b;-><init>(Lio/dcloud/g/a/e;)V

    move v4, v7

    .line 38
    :goto_fb
    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    goto :goto_130

    .line 41
    :goto_ff
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v1

    new-instance v3, Lio/dcloud/g/a/e$b;

    invoke-direct {v3, p0}, Lio/dcloud/g/a/e$b;-><init>(Lio/dcloud/g/a/e;)V

    invoke-virtual {v1, v3}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    .line 52
    throw v0

    .line 53
    :cond_10c
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12f

    .line 54
    invoke-direct {p0}, Lio/dcloud/g/a/e;->f()V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_12e} :catch_195

    goto :goto_130

    :cond_12f
    move v4, v7

    :goto_130
    const-string v0, "__w2a__template__"

    if-nez v4, :cond_14c

    .line 58
    :try_start_134
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sWap2AppTemplateVersion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14c

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->mWap2appTemplateFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_14c

    iget-object v1, p0, Lio/dcloud/g/a/e;->p1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    invoke-interface {v1, v0}, Lio/dcloud/common/DHInterface/IConfusionMgr;->getData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_199

    :cond_14c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_199

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v1

    .line 60
    invoke-direct {p0, v1}, Lio/dcloud/g/a/e;->a(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v2

    .line 61
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 62
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->mWap2appTemplateFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 63
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->mW2AE:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 64
    iget-object v1, p0, Lio/dcloud/g/a/e;->p1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    invoke-interface {v1, v0}, Lio/dcloud/common/DHInterface/IConfusionMgr;->removeData(Ljava/lang/String;)V
    :try_end_194
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_194} :catch_195

    goto :goto_199

    :catch_195
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_199
    :goto_199
    return-object v2
.end method

.method private m()V
    .registers 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/g/a/e;->y1:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Authorize"

    const/4 v3, 0x0

    .line 3
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/g/a/e;->z1:Ljava/lang/String;

    if-eqz v0, :cond_63

    const-string v1, "&"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 6
    array-length v1, v0

    if-lez v1, :cond_63

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 7
    :goto_3e
    array-length v4, v0

    if-ge v3, v4, :cond_63

    .line 8
    aget-object v4, v0, v3

    .line 9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_60

    const-string v5, "="

    .line 10
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 11
    iget-object v5, p0, Lio/dcloud/g/a/e;->y1:Ljava/util/HashMap;

    aget-object v6, v4, v1

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_63
    return-void
.end method

.method private y()V
    .registers 17

    move-object/from16 v1, p0

    const-string v0, "confusion"

    const-string v2, "files"

    const-string v3, "__template.json"

    .line 1
    iget-object v4, v1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-static {v4}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    return-void

    .line 2
    :cond_11
    invoke-direct/range {p0 .. p0}, Lio/dcloud/g/a/e;->j()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "version"

    if-nez v4, :cond_1c

    .line 3
    sget-object v6, Lio/dcloud/common/util/BaseInfo;->sWap2AppTemplateVersion:Ljava/lang/String;

    goto :goto_20

    :cond_1c
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5
    :goto_20
    :try_start_20
    invoke-direct/range {p0 .. p0}, Lio/dcloud/g/a/e;->i()Lorg/json/JSONObject;

    move-result-object v7
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_24} :catch_1ee

    const-string v8, "wap2app__template/"

    const/4 v10, 0x1

    if-eqz v7, :cond_5b

    .line 8
    :try_start_29
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5b

    .line 10
    invoke-static {v5, v6}, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5b

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I

    .line 13
    sget-object v4, Lio/dcloud/common/util/BaseInfo;->mWap2appTemplateFiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 14
    sget-object v4, Lio/dcloud/common/util/BaseInfo;->mW2AE:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    move-object v6, v5

    move-object v4, v7

    const/4 v5, 0x1

    goto :goto_5c

    :cond_5b
    const/4 v5, 0x0

    .line 20
    :goto_5c
    sget-object v7, Lio/dcloud/common/util/BaseInfo;->mWap2appTemplateFiles:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_18a

    if-eqz v4, :cond_15f

    .line 21
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15f

    .line 22
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 24
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/g/a/e;->obtainRunningAppMode()B

    move-result v11

    if-ne v11, v10, :cond_7c

    const/4 v11, 0x1

    goto :goto_7d

    :cond_7c
    const/4 v11, 0x0

    :goto_7d
    const/4 v12, 0x0

    :goto_7e
    if-ge v12, v7, :cond_f4

    .line 26
    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v13

    .line 27
    sget-object v14, Lio/dcloud/common/util/BaseInfo;->mWap2appTemplateFiles:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_89} :catch_1ee

    if-eqz v5, :cond_f1

    const-string v14, "/www/"

    if-eqz v11, :cond_c0

    .line 30
    :try_start_8f
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lio/dcloud/common/util/BaseInfo;->sBaseResAppsPath:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Lio/dcloud/common/adapter/io/DHFile;->copyAssetsFile(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_f1

    .line 32
    :cond_c0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v9, v13, v10, v14}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)I

    :cond_f1
    :goto_f1
    add-int/lit8 v12, v12, 0x1

    goto :goto_7e

    :cond_f4
    if-eqz v5, :cond_18a

    .line 36
    sget-object v2, Lio/dcloud/common/util/BaseInfo;->mWap2appTemplateFiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_fc} :catch_1ee

    if-nez v2, :cond_18a

    const-string v2, "/www/__template.json"

    if-eqz v11, :cond_130

    .line 38
    :try_start_102
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lio/dcloud/common/util/BaseInfo;->sBaseResAppsPath:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/dcloud/common/adapter/io/DHFile;->copyAssetsFile(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_18a

    .line 40
    :cond_130
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-static {v2, v3, v10, v7}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)I

    goto :goto_18a

    :cond_15f
    const/4 v7, 0x0

    .line 44
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18a

    const/4 v9, 0x0

    .line 47
    :goto_17d
    array-length v3, v2

    if-ge v9, v3, :cond_18a

    .line 48
    sget-object v3, Lio/dcloud/common/util/BaseInfo;->mWap2appTemplateFiles:Ljava/util/ArrayList;

    aget-object v7, v2, v9

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_187} :catch_1ee

    add-int/lit8 v9, v9, 0x1

    goto :goto_17d

    :cond_18a
    :goto_18a
    const-string v2, "__w2a__template__"

    if-nez v5, :cond_196

    .line 53
    :try_start_18e
    iget-object v3, v1, Lio/dcloud/g/a/e;->p1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IConfusionMgr;->getData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1cb

    :cond_196
    if-eqz v4, :cond_1cb

    .line 54
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1cb

    .line 56
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 58
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1ae

    .line 60
    sget-object v3, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    .line 62
    :cond_1ae
    iget-object v4, v1, Lio/dcloud/g/a/e;->p1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    invoke-interface {v4, v3, v0}, Lio/dcloud/common/DHInterface/IConfusionMgr;->handleEncryption(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1b8
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_1b8} :catch_1ee

    if-eqz v3, :cond_1bc

    const-string v0, "{}"

    .line 66
    :cond_1bc
    :try_start_1bc
    iget-object v3, v1, Lio/dcloud/g/a/e;->p1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IConfusionMgr;->removeData(Ljava/lang/String;)V

    .line 67
    iget-object v3, v1, Lio/dcloud/g/a/e;->p1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v2, v4}, Lio/dcloud/common/DHInterface/IConfusionMgr;->recordEncryptionResources(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 71
    :cond_1cb
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "wap2app__template/__template.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 73
    sput-wide v2, Lio/dcloud/common/util/BaseInfo;->sTemplateModifyTime:J

    .line 75
    sput-object v6, Lio/dcloud/common/util/BaseInfo;->sWap2AppTemplateVersion:Ljava/lang/String;

    .line 76
    iput-object v6, v1, Lio/dcloud/g/a/e;->z:Ljava/lang/String;
    :try_end_1ed
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1ed} :catch_1ee

    goto :goto_1f2

    :catch_1ee
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1f2
    return-void
.end method


# virtual methods
.method a(Lio/dcloud/common/DHInterface/IWebviewStateListener;)Lio/dcloud/common/DHInterface/IFrameView;
    .registers 7

    .line 806
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->u()V

    .line 807
    iget-object v0, p0, Lio/dcloud/g/a/e;->u:Lio/dcloud/g/a/a;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    iget-object v3, p0, Lio/dcloud/g/a/e;->h0:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lio/dcloud/g/a/e;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/16 p1, 0x11

    invoke-virtual {v0, v1, p1, v2}, Lio/dcloud/g/a/a;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/DHInterface/IFrameView;

    return-object p1
.end method

.method a(Lio/dcloud/common/DHInterface/IWebviewStateListener;Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)Lio/dcloud/common/DHInterface/IFrameView;
    .registers 8

    .line 808
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->u()V

    .line 809
    iget-object v0, p0, Lio/dcloud/g/a/e;->u:Lio/dcloud/g/a/a;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    iget-object v3, p0, Lio/dcloud/g/a/e;->h0:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lio/dcloud/g/a/e;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 p1, 0x3

    aput-object p2, v2, p1

    const/16 p1, 0x11

    invoke-virtual {v0, v1, p1, v2}, Lio/dcloud/g/a/a;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/DHInterface/IFrameView;

    return-object p1
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/dcloud/g/a/e;->g0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method a(Landroid/app/Activity;)V
    .registers 6

    .line 630
    invoke-super {p0, p1}, Lio/dcloud/g/a/f;->a(Landroid/app/Activity;)V

    .line 631
    iget-object v0, p0, Lio/dcloud/g/a/f;->k:Lio/dcloud/common/util/AppStatusBarManager;

    if-eqz v0, :cond_14

    .line 632
    iget-boolean v1, p0, Lio/dcloud/g/a/e;->W0:Z

    invoke-virtual {v0, p1, v1}, Lio/dcloud/common/util/AppStatusBarManager;->checkImmersedStatusBar(Landroid/content/Context;Z)Z

    .line 633
    iget-object v0, p0, Lio/dcloud/g/a/f;->k:Lio/dcloud/common/util/AppStatusBarManager;

    invoke-virtual {p0}, Lio/dcloud/g/a/f;->isFullScreen()Z

    move-result v1

    iput-boolean v1, v0, Lio/dcloud/common/util/AppStatusBarManager;->isFullScreen:Z

    .line 636
    :cond_14
    iget-object v0, p0, Lio/dcloud/g/a/f;->j:Lio/dcloud/common/adapter/util/ViewRect;

    const-string v1, "{}"

    invoke-static {v1}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    .line 637
    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    const-string v2, "StatusBarHeight"

    invoke-static {v0, v1, v2}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/dcloud/g/a/f;->f:I

    const/4 v0, 0x4

    .line 638
    invoke-virtual {p0, v0}, Lio/dcloud/g/a/f;->updateScreenInfo(I)V

    .line 639
    iput-boolean v1, p0, Lio/dcloud/g/a/e;->s1:Z

    .line 651
    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object v0

    .line 652
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->r()Z

    move-result v1

    if-nez v1, :cond_85

    if-eqz v0, :cond_85

    .line 653
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 654
    iget-object v1, p0, Lio/dcloud/g/a/e;->w:Ljava/lang/String;

    const-string v2, "v"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    iget-object v1, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    const-string v2, "appid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    iget-object v1, p0, Lio/dcloud/g/a/e;->p0:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    iget-object v1, p0, Lio/dcloud/g/a/e;->I0:Ljava/lang/String;

    const-string v2, "adid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    iget-object v1, p0, Lio/dcloud/g/a/e;->T0:Ljava/lang/String;

    const-string v2, "bg"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    iget-object v1, p0, Lio/dcloud/g/a/e;->U0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lio/dcloud/g/a/e;->convert2AbsFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "img"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    const-string v3, "save"

    invoke-static {v1, v2, v3, v0}, Lio/dcloud/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    :cond_85
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_137

    .line 665
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_a2

    const-string v2, "from_short_cut_start"

    .line 666
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a2

    const/4 v2, 0x1

    .line 667
    iput-boolean v2, p0, Lio/dcloud/g/a/e;->s1:Z

    :cond_a2
    if-eqz v1, :cond_b2

    const-string v2, "create_shortcut"

    .line 669
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 670
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/g/a/e;->u1:Ljava/lang/String;

    :cond_b2
    if-eqz v1, :cond_c2

    const-string v2, "shortcutQuit"

    .line 672
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 673
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/g/a/e;->t1:Ljava/lang/String;

    :cond_c2
    if-eqz v1, :cond_d2

    const-string v2, "__scq"

    .line 675
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 676
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/g/a/e;->t1:Ljava/lang/String;

    :cond_d2
    const-string v1, "__sc"

    .line 678
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 679
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/g/a/e;->u1:Ljava/lang/String;

    .line 682
    :cond_e0
    iget-object v1, p0, Lio/dcloud/g/a/e;->u1:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_137

    .line 683
    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->getLaunchType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "force"

    .line 684
    iput-object v1, p0, Lio/dcloud/g/a/e;->u1:Ljava/lang/String;

    const-string v2, "scheme"

    .line 685
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fd

    const-string v0, "query"

    .line 686
    iput-object v0, p0, Lio/dcloud/g/a/e;->u1:Ljava/lang/String;

    goto :goto_137

    .line 687
    :cond_fd
    iget-boolean v0, p0, Lio/dcloud/g/a/e;->L:Z

    if-eqz v0, :cond_104

    .line 688
    iput-object v1, p0, Lio/dcloud/g/a/e;->u1:Ljava/lang/String;

    goto :goto_137

    :cond_104
    const-string v0, "pdr"

    .line 690
    invoke-static {p1, v0}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "test_runing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 692
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_133

    const-string v2, "__am=t"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 693
    iput-object v1, p0, Lio/dcloud/g/a/e;->u1:Ljava/lang/String;

    goto :goto_137

    :cond_133
    const-string v0, "none"

    .line 695
    iput-object v0, p0, Lio/dcloud/g/a/e;->u1:Ljava/lang/String;

    .line 701
    :cond_137
    :goto_137
    :try_start_137
    invoke-static {p1}, Lio/dcloud/common/util/ADUtils;->runThreadCheckADDownload(Landroid/app/Activity;)V
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_13a} :catch_13b

    goto :goto_13f

    :catch_13b
    move-exception p1

    .line 703
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_13f
    return-void
.end method

.method a(Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 5

    .line 705
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lio/dcloud/g/a/e;->f0:Z

    if-eqz v0, :cond_10

    :cond_a
    iget-byte v0, p0, Lio/dcloud/g/a/e;->R:B

    if-ne v0, v2, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_20

    .line 707
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/g/a/e$c;

    invoke-direct {v1, p0, p1}, Lio/dcloud/g/a/e$c;-><init>(Lio/dcloud/g/a/e;Lio/dcloud/common/DHInterface/ICallBack;)V

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;Z)V

    goto :goto_24

    :cond_20
    const/4 v0, 0x0

    .line 733
    invoke-interface {p1, v1, v0}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_24
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 6

    .line 1237
    iget-object v0, p0, Lio/dcloud/g/a/e;->y1:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    iget-object v0, p0, Lio/dcloud/g/a/e;->z1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "="

    if-eqz v0, :cond_28

    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/g/a/e;->z1:Ljava/lang/String;

    goto :goto_46

    .line 1241
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/dcloud/g/a/e;->z1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/g/a/e;->z1:Ljava/lang/String;

    .line 1244
    :goto_46
    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1245
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/g/a/e;->z1:Ljava/lang/String;

    const-string v0, "Authorize"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method a(Ljava/io/InputStream;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 64

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    .line 3
    iput-boolean v4, v1, Lio/dcloud/g/a/e;->e1:Z

    .line 5
    iget-object v5, v1, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    const/4 v6, 0x1

    if-eqz v5, :cond_16

    .line 7
    iget-boolean v7, v5, Lio/dcloud/g/a/g;->d:Z

    if-eqz v7, :cond_16

    const/4 v7, 0x1

    goto :goto_17

    :cond_16
    const/4 v7, 0x0

    .line 8
    :goto_17
    iget-object v8, v1, Lio/dcloud/g/a/e;->h1:Ljava/util/ArrayList;

    sget-object v9, Lio/dcloud/common/util/AppStreamUtil;->AppStreamSchemeWhiteDefaultList:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_26

    .line 12
    sget-object v8, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    :cond_26
    const-string v9, ""

    if-eqz v0, :cond_6f

    .line 16
    :try_start_2a
    iget-boolean v10, v1, Lio/dcloud/g/a/e;->n1:Z

    if-nez v10, :cond_3c

    .line 17
    new-instance v10, Lio/dcloud/common/adapter/io/UnicodeInputStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v0, v11}, Lio/dcloud/common/adapter/io/UnicodeInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, v10

    .line 19
    :cond_3c
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 21
    iget-object v10, v1, Lio/dcloud/g/a/e;->p1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    invoke-interface {v10, v8, v0}, Lio/dcloud/common/DHInterface/IConfusionMgr;->handleEncryption(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4b

    .line 23
    iput-boolean v6, v1, Lio/dcloud/g/a/e;->P0:Z

    goto :goto_70

    .line 27
    :cond_4b
    iput-boolean v4, v1, Lio/dcloud/g/a/e;->P0:Z

    .line 28
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_52} :catch_53

    goto :goto_70

    :catch_53
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 33
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseConfig error="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    :cond_6f
    move-object v10, v9

    .line 38
    :goto_70
    :try_start_70
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_75} :catch_ae9

    const-string v0, "version"

    .line 51
    invoke-static {v12, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v10, "name"

    .line 52
    invoke-static {v0, v10}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "code"

    .line 53
    invoke-static {v0, v14}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 57
    iget-object v15, v1, Lio/dcloud/g/a/e;->l0:Ljava/lang/String;

    .line 63
    invoke-static {v8}, Lio/dcloud/common/util/LoadAppUtils;->getAppSignatureSHA1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_cc

    if-eqz v3, :cond_9c

    const-string v11, "force"

    .line 67
    invoke-static {v3, v11}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_9d

    :cond_9c
    const/4 v3, 0x0

    :goto_9d
    if-eqz v3, :cond_a0

    goto :goto_cd

    .line 73
    :cond_a0
    iget-object v11, v1, Lio/dcloud/g/a/e;->w:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_cd

    iget-object v11, v1, Lio/dcloud/g/a/e;->w:Ljava/lang/String;

    invoke-static {v13, v11}, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_cd

    .line 74
    iget-boolean v0, v5, Lio/dcloud/g/a/g;->c:Z

    if-eqz v0, :cond_bf

    .line 75
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_WWW_MANIFEST_VERSION_NOT_MATCH:Ljava/lang/String;

    const/16 v2, -0x4cc

    invoke-static {v2, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    goto :goto_c9

    .line 77
    :cond_bf
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGT_MANIFEST_VERSION_NOT_MATCH:Ljava/lang/String;

    const/16 v2, -0x4b5

    invoke-static {v2, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    .line 79
    :goto_c9
    iput-boolean v6, v5, Lio/dcloud/g/a/g;->a:Z

    return v4

    :cond_cc
    const/4 v3, 0x0

    :cond_cd
    :goto_cd
    const-string v11, "id"

    .line 88
    invoke-static {v12, v11}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lio/dcloud/common/util/BaseInfo;->sCurrentAppOriginalAppid:Ljava/lang/String;

    .line 89
    sget-boolean v16, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    if-eqz v16, :cond_e5

    sget-object v16, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    if-eqz v16, :cond_e5

    invoke-static/range {v16 .. v16}, Lio/dcloud/common/util/BaseInfo;->isBase(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_e5

    const/4 v4, 0x1

    goto :goto_134

    .line 92
    :cond_e5
    invoke-static {v2, v11}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_f5

    iget-object v4, v1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-static {v4, v11}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f5

    const/4 v4, 0x1

    goto :goto_f6

    :cond_f5
    const/4 v4, 0x0

    :goto_f6
    if-nez v4, :cond_133

    .line 94
    iput-boolean v6, v5, Lio/dcloud/g/a/g;->a:Z

    .line 95
    iget-boolean v0, v5, Lio/dcloud/g/a/g;->c:Z

    if-eqz v0, :cond_109

    .line 96
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_WWW_MANIFEST_APPID_NOT_MATCH:Ljava/lang/String;

    const/16 v3, -0x4ca

    invoke-static {v3, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    goto :goto_113

    .line 98
    :cond_109
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGT_MANIFEST_APPID_NOT_MATCH:Ljava/lang/String;

    const/16 v3, -0x4b4

    invoke-static {v3, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    .line 100
    :goto_113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appid config is wrong pExpectAppid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";appid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Appmgr"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_131
    const/4 v2, 0x0

    return v2

    :cond_133
    move-object v2, v11

    .line 105
    :goto_134
    invoke-static {v12, v10}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 108
    invoke-static {}, Lio/dcloud/g/b/g;->a()Z

    move-result v18

    move/from16 p1, v4

    if-nez v18, :cond_165

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/g/a/e;->getConfusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object v0

    move-object/from16 v18, v15

    invoke-direct/range {p0 .. p0}, Lio/dcloud/g/a/e;->h()Ljava/lang/String;

    move-result-object v15

    move-object/from16 p2, v6

    const/16 v6, 0x3c

    move-object/from16 p3, v11

    const/4 v11, 0x1

    invoke-interface {v0, v15, v11, v6}, Lio/dcloud/common/DHInterface/IConfusionMgr;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16b

    :cond_165
    move-object/from16 p2, v6

    move-object/from16 p3, v11

    move-object/from16 v18, v15

    :goto_16b
    move-object v4, v0

    const-string v0, "description"

    .line 121
    invoke-static {v12, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v11, "developer"

    .line 124
    invoke-static {v12, v11}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 125
    invoke-static {v11, v10}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v15, "email"

    .line 126
    invoke-static {v11, v15}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v15

    const-string v15, "url"

    .line 127
    invoke-static {v11, v15}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    const-string v11, "license"

    .line 129
    invoke-static {v12, v11}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    move-object/from16 v20, v10

    .line 130
    invoke-static {v11, v15}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 131
    invoke-static {v11, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "launch_path"

    .line 133
    invoke-static {v12, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "launch_path_w2a"

    move-object/from16 v21, v10

    .line 134
    invoke-static {v12, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 135
    iget-boolean v0, v1, Lio/dcloud/g/a/e;->e1:Z

    if-nez v0, :cond_1bd

    iget-object v0, v1, Lio/dcloud/g/a/e;->h0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1bb

    iget-object v0, v1, Lio/dcloud/g/a/e;->h0:Ljava/lang/String;

    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1bb

    goto :goto_1bd

    :cond_1bb
    const/4 v0, 0x0

    goto :goto_1be

    :cond_1bd
    :goto_1bd
    const/4 v0, 0x1

    :goto_1be
    iput-boolean v0, v1, Lio/dcloud/g/a/e;->e1:Z

    if-nez v0, :cond_1d5

    .line 136
    iget-object v0, v1, Lio/dcloud/g/a/e;->j0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d3

    iget-object v0, v1, Lio/dcloud/g/a/e;->j0:Ljava/lang/String;

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d3

    goto :goto_1d5

    :cond_1d3
    const/4 v0, 0x0

    goto :goto_1d6

    :cond_1d5
    :goto_1d5
    const/4 v0, 0x1

    :goto_1d6
    iput-boolean v0, v1, Lio/dcloud/g/a/e;->e1:Z

    const-string v0, "baseUrl"

    move-object/from16 v22, v10

    .line 137
    invoke-static {v12, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 138
    iget-object v0, v1, Lio/dcloud/g/a/e;->o0:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v23, v10

    const/16 v17, 0x1

    xor-int/lit8 v10, v0, 0x1

    const-string v0, "plus"

    move/from16 v24, v10

    .line 143
    invoke-static {v12, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v0, "confusion"

    .line 144
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_23b

    move-object/from16 v25, v11

    .line 145
    invoke-static {v10, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-nez v11, :cond_22d

    .line 148
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v26, v6

    const-string v6, "BQ81KwABAA"

    .line 149
    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_218

    const/4 v6, 0x1

    .line 150
    iput-boolean v6, v1, Lio/dcloud/g/a/e;->P0:Z

    .line 151
    iput-boolean v6, v1, Lio/dcloud/g/a/e;->Q0:Z

    goto :goto_219

    :cond_218
    const/4 v6, 0x1

    .line 154
    :goto_219
    iget-object v11, v1, Lio/dcloud/g/a/e;->p1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    iget-object v6, v1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v6, v0}, Lio/dcloud/common/DHInterface/IConfusionMgr;->recordEncryptionV3Resources(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23f

    const/4 v6, 0x1

    .line 155
    iput-boolean v6, v1, Lio/dcloud/g/a/e;->P0:Z

    .line 156
    iput-boolean v6, v1, Lio/dcloud/g/a/e;->Q0:Z

    goto :goto_23f

    :cond_22d
    move-object/from16 v26, v6

    .line 159
    iget-boolean v0, v1, Lio/dcloud/g/a/e;->P0:Z

    if-eqz v0, :cond_23f

    .line 160
    iget-object v0, v1, Lio/dcloud/g/a/e;->p1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    iget-object v6, v1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-interface {v0, v6, v11}, Lio/dcloud/common/DHInterface/IConfusionMgr;->recordEncryptionResources(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_23f

    :cond_23b
    move-object/from16 v26, v6

    move-object/from16 v25, v11

    :cond_23f
    :goto_23f
    const-string v0, "tabBar"

    .line 165
    invoke-static {v10, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v11, "statusbar"

    .line 167
    invoke-static {v10, v11}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v27, v6

    const-string v6, "none"

    move-object/from16 v28, v14

    const-string v14, "background"

    if-eqz v0, :cond_2c6

    .line 169
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_26a

    move-object/from16 v29, v13

    .line 170
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 171
    invoke-static {v13}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_26c

    .line 172
    iput-object v13, v1, Lio/dcloud/g/a/e;->S0:Ljava/lang/String;

    goto :goto_26c

    :cond_26a
    move-object/from16 v29, v13

    :cond_26c
    :goto_26c
    const-string v13, "style"

    .line 175
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_27f

    move/from16 v30, v3

    .line 176
    iget-object v3, v1, Lio/dcloud/g/a/e;->V0:Ljava/lang/String;

    invoke-virtual {v0, v13, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/dcloud/g/a/e;->V0:Ljava/lang/String;

    goto :goto_281

    :cond_27f
    move/from16 v30, v3

    :goto_281
    const-string v3, "immersed"

    .line 179
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2c3

    .line 180
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v31, v7

    const/16 v7, 0x13

    if-lt v13, v7, :cond_2cc

    .line 181
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lio/dcloud/g/a/f;->l:Ljava/lang/String;

    const-string v13, "supportedDevice"

    .line 182
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2bf

    iget-object v7, v1, Lio/dcloud/g/a/f;->l:Ljava/lang/String;

    const-string v13, "suggestedDevice"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2aa

    goto :goto_2bf

    .line 184
    :cond_2aa
    iget-object v7, v1, Lio/dcloud/g/a/f;->l:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b6

    const/4 v7, 0x0

    .line 185
    iput-boolean v7, v1, Lio/dcloud/g/a/e;->W0:Z

    goto :goto_2cc

    .line 187
    :cond_2b6
    iget-boolean v7, v1, Lio/dcloud/g/a/e;->W0:Z

    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lio/dcloud/g/a/e;->W0:Z

    goto :goto_2cc

    :cond_2bf
    :goto_2bf
    const/4 v3, 0x1

    .line 188
    iput-boolean v3, v1, Lio/dcloud/g/a/e;->W0:Z

    goto :goto_2cc

    :cond_2c3
    move/from16 v31, v7

    goto :goto_2cc

    :cond_2c6
    move/from16 v30, v3

    move/from16 v31, v7

    move-object/from16 v29, v13

    :cond_2cc
    :goto_2cc
    const-string v0, "launchwebview"

    .line 198
    invoke-static {v10, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v7, "replacewebapi"

    const-string v13, "normal"

    move-object/from16 v32, v12

    const-string v12, "geolocation"

    const/16 v33, 0x0

    if-eqz v3, :cond_395

    const-string v0, "overrideurl"

    .line 203
    invoke-static {v3, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    const-string v0, "overrideresource"

    .line 204
    invoke-static {v3, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object/from16 v35, v4

    if-eqz v0, :cond_300

    .line 206
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v36, v8

    :try_start_2f5
    const-string v8, "0"

    .line 208
    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2fa
    .catch Lorg/json/JSONException; {:try_start_2f5 .. :try_end_2fa} :catch_2fb

    goto :goto_304

    :catch_2fb
    move-exception v0

    .line 210
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_304

    :cond_300
    move-object/from16 v36, v8

    move-object/from16 v4, v33

    .line 214
    :goto_304
    iget-boolean v0, v1, Lio/dcloud/g/a/e;->d1:Z

    const-string v8, "injection"

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v8, "plusrequire"

    .line 215
    invoke-virtual {v3, v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move/from16 v37, v0

    const-string v0, "titleNView"

    .line 216
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_323

    const-string v0, "titleNView"

    .line 217
    invoke-static {v3, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_334

    :cond_323
    const-string v0, "navigationbar"

    .line 219
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_332

    const-string v0, "navigationbar"

    .line 220
    invoke-static {v3, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_334

    :cond_332
    move-object/from16 v0, v33

    .line 222
    :goto_334
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_34d

    move-object/from16 v38, v0

    .line 223
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_35c

    .line 224
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_35c

    .line 225
    invoke-virtual {v0, v12, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_359

    :cond_34d
    move-object/from16 v38, v0

    .line 227
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35c

    .line 228
    invoke-virtual {v3, v12, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_359
    move-object/from16 v39, v0

    goto :goto_35e

    :cond_35c
    move-object/from16 v39, v6

    .line 230
    :goto_35e
    iget-boolean v0, v1, Lio/dcloud/g/a/e;->W0:Z

    if-eqz v0, :cond_386

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_386

    move-object v0, v4

    const/4 v4, 0x1

    .line 231
    iput-boolean v4, v1, Lio/dcloud/g/a/e;->X0:Z

    .line 232
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_383

    .line 233
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_383

    move-object/from16 v40, v0

    .line 234
    iget-object v0, v1, Lio/dcloud/g/a/e;->S0:Ljava/lang/String;

    invoke-virtual {v4, v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/dcloud/g/a/e;->Z0:Ljava/lang/String;

    goto :goto_388

    :cond_383
    move-object/from16 v40, v0

    goto :goto_388

    :cond_386
    move-object/from16 v40, v4

    :goto_388
    move-object/from16 v0, v34

    move/from16 v4, v37

    move-object/from16 v34, v39

    move-object/from16 v39, v3

    move-object/from16 v37, v8

    move-object/from16 v8, v40

    goto :goto_3a5

    :cond_395
    move-object/from16 v35, v4

    move-object/from16 v36, v8

    move-object/from16 v39, v3

    move-object/from16 v34, v6

    move-object/from16 v37, v13

    move-object/from16 v0, v33

    move-object v8, v0

    move-object/from16 v38, v8

    const/4 v4, 0x1

    :goto_3a5
    const-string v3, "appWhitelist"

    .line 239
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_3dd

    .line 240
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move/from16 v40, v4

    move-object/from16 v41, v8

    const/4 v4, 0x0

    .line 241
    :goto_3b6
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_3e1

    .line 242
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    .line 243
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_3d6

    move-object/from16 v42, v3

    iget-object v3, v1, Lio/dcloud/g/a/e;->g1:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d8

    .line 244
    iget-object v3, v1, Lio/dcloud/g/a/e;->g1:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d8

    :cond_3d6
    move-object/from16 v42, v3

    :cond_3d8
    :goto_3d8
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, v42

    goto :goto_3b6

    :cond_3dd
    move/from16 v40, v4

    move-object/from16 v41, v8

    :cond_3e1
    const-string v3, "schemeWhitelist"

    .line 248
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_415

    .line 249
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 250
    :goto_3ee
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_415

    .line 251
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    .line 252
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_40e

    move-object/from16 v42, v3

    iget-object v3, v1, Lio/dcloud/g/a/e;->h1:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_410

    .line 253
    iget-object v3, v1, Lio/dcloud/g/a/e;->h1:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_410

    :cond_40e
    move-object/from16 v42, v3

    :cond_410
    :goto_410
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, v42

    goto :goto_3ee

    :cond_415
    const-string v3, "secondwebview"

    .line 257
    invoke-static {v10, v3}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_466

    const-string v4, "plusrequire"

    .line 261
    invoke-virtual {v3, v4, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 262
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_43a

    .line 263
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_444

    .line 264
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_444

    .line 265
    invoke-virtual {v7, v12, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_444

    .line 267
    :cond_43a
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_444

    .line 268
    invoke-virtual {v3, v12, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 270
    :cond_444
    :goto_444
    iget-boolean v7, v1, Lio/dcloud/g/a/e;->W0:Z

    if-eqz v7, :cond_467

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_467

    const/4 v7, 0x1

    .line 271
    iput-boolean v7, v1, Lio/dcloud/g/a/e;->Y0:Z

    .line 272
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_467

    .line 273
    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_467

    .line 274
    iget-object v8, v1, Lio/dcloud/g/a/e;->S0:Ljava/lang/String;

    invoke-virtual {v7, v14, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lio/dcloud/g/a/e;->a1:Ljava/lang/String;

    goto :goto_467

    :cond_466
    move-object v4, v13

    .line 280
    :cond_467
    :goto_467
    iget-object v7, v1, Lio/dcloud/g/a/e;->u:Lio/dcloud/g/a/a;

    invoke-virtual {v7}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lio/dcloud/common/util/BaseInfo;->isBase(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_47b

    const-string v7, "ramcachemode"

    .line 281
    invoke-static {v10, v7}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 283
    iput-object v7, v1, Lio/dcloud/g/a/e;->M0:Ljava/lang/String;

    :cond_47b
    if-eqz v10, :cond_4a9

    .line 288
    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v7}, Lio/dcloud/common/adapter/util/MobilePhoneModel;->checkPhoneBanAcceleration(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_496

    iget-object v7, v1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-static {v7}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_494

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/g/a/e;->r()Z

    move-result v7

    if-eqz v7, :cond_494

    goto :goto_496

    :cond_494
    const/4 v7, 0x0

    goto :goto_497

    :cond_496
    :goto_496
    const/4 v7, 0x1

    :goto_497
    const-string v8, "hardwareAccelerated"

    invoke-virtual {v10, v8, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v1, Lio/dcloud/g/a/e;->O0:Z

    .line 289
    iget-object v7, v1, Lio/dcloud/g/a/e;->N0:Ljava/lang/String;

    const-string v8, "popGesture"

    invoke-virtual {v10, v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lio/dcloud/g/a/e;->N0:Ljava/lang/String;

    :cond_4a9
    const-string v7, "cache"

    .line 292
    invoke-static {v10, v7}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_4c1

    const-string v8, "mode"

    .line 294
    invoke-static {v7, v8}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 295
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4bf

    iget-object v7, v1, Lio/dcloud/g/a/e;->R0:Ljava/lang/String;

    :cond_4bf
    iput-object v7, v1, Lio/dcloud/g/a/e;->R0:Ljava/lang/String;

    :cond_4c1
    const-string v7, "cers"

    .line 298
    invoke-static {v10, v7}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "crash"

    .line 299
    invoke-static {v7, v8}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-boolean v11, v1, Lio/dcloud/g/a/e;->I:Z

    const/4 v12, 0x0

    invoke-static {v8, v11, v12}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v8

    const-string v11, "jserror"

    .line 300
    invoke-static {v7, v11}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-boolean v11, v1, Lio/dcloud/g/a/e;->J:Z

    invoke-static {v7, v11, v12}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v7

    const-string v11, "compatible"

    .line 302
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "compilerVersion"

    move-object/from16 v42, v6

    const-string v6, "uni-app"

    if-eqz v11, :cond_544

    .line 303
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_544

    .line 304
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 305
    invoke-direct {v1, v6, v5}, Lio/dcloud/g/a/e;->a(Lorg/json/JSONObject;Lio/dcloud/g/a/g;)Z

    move-result v43

    if-nez v43, :cond_500

    const/4 v4, 0x0

    return v4

    :cond_500
    move-object/from16 v43, v4

    const/4 v4, 0x1

    .line 308
    iput-boolean v4, v1, Lio/dcloud/g/a/e;->n1:Z

    const-string v4, "uni-v3"

    .line 309
    iput-object v4, v1, Lio/dcloud/g/a/e;->v0:Ljava/lang/String;

    const-string v4, "ignoreVersion"

    move-object/from16 v44, v3

    const/4 v3, 0x0

    .line 312
    invoke-virtual {v11, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lio/dcloud/g/a/e;->u0:Z

    .line 313
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "runtimeVersion"

    .line 314
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lio/dcloud/g/a/e;->s0:Ljava/lang/String;

    .line 315
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lio/dcloud/g/a/e;->q0:Ljava/lang/String;

    const-string v4, "nvueLaunchMode"

    .line 316
    invoke-virtual {v6, v4, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lio/dcloud/g/a/e;->w0:Ljava/lang/String;

    .line 317
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57a

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lio/dcloud/g/a/e;->q0:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57a

    const/4 v3, 0x0

    .line 318
    iput-boolean v3, v1, Lio/dcloud/g/a/e;->t0:Z

    goto :goto_57a

    :cond_544
    move-object/from16 v44, v3

    move-object/from16 v43, v4

    const/4 v3, 0x0

    .line 320
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_578

    .line 321
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 322
    invoke-direct {v1, v4, v5}, Lio/dcloud/g/a/e;->a(Lorg/json/JSONObject;Lio/dcloud/g/a/g;)Z

    move-result v6

    if-nez v6, :cond_55a

    return v3

    :cond_55a
    const/4 v3, 0x1

    .line 325
    iput-boolean v3, v1, Lio/dcloud/g/a/e;->n1:Z

    .line 326
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/dcloud/g/a/e;->q0:Ljava/lang/String;

    const-string v3, "uni-v3"

    .line 327
    iput-object v3, v1, Lio/dcloud/g/a/e;->v0:Ljava/lang/String;

    const-string v3, "nvue"

    .line 328
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v1, Lio/dcloud/g/a/e;->r0:Lorg/json/JSONObject;

    const-string v3, "nvueLaunchMode"

    .line 329
    invoke-virtual {v4, v3, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/dcloud/g/a/e;->w0:Ljava/lang/String;

    goto :goto_57a

    .line 331
    :cond_578
    iput-boolean v3, v1, Lio/dcloud/g/a/e;->n1:Z

    .line 333
    :cond_57a
    :goto_57a
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v3

    if-eqz v3, :cond_582

    const/4 v3, 0x1

    goto :goto_59a

    :cond_582
    const-string v3, "runmode"

    .line 337
    invoke-static {v10, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_594

    iget-boolean v4, v1, Lio/dcloud/g/a/e;->n1:Z

    if-eqz v4, :cond_594

    const-string v3, "liberate"

    :cond_594
    const-string v4, "liberate"

    .line 341
    invoke-static {v3, v4}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    :goto_59a
    const-string v4, "useragent"

    .line 344
    invoke-static {v10, v4}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "value"

    .line 345
    invoke-static {v4, v6}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v11, "concatenate"

    .line 346
    invoke-static {v4, v11}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v11, v1, Lio/dcloud/g/a/e;->M:Z

    const/4 v12, 0x0

    invoke-static {v4, v11, v12}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v4

    const-string v11, "useragent_android"

    .line 350
    invoke-static {v10, v11}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v13, "value"

    .line 351
    invoke-static {v11, v13}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v45, v6

    const-string v6, "concatenate"

    .line 352
    invoke-static {v11, v6}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4, v12}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v4

    .line 353
    invoke-static {v13}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5d3

    move-object v6, v13

    goto :goto_5d5

    :cond_5d3
    move-object/from16 v6, v45

    :goto_5d5
    const-string v11, "splashscreen"

    .line 358
    invoke-static {v10, v11}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_775

    .line 361
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "pdr"

    invoke-static {v12, v13}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 362
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v45, v0

    iget-object v0, v1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "__update_splash_autoclose"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61c

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "__update_splash_autoclose"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x1

    invoke-interface {v12, v0, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_61a
    move v13, v0

    goto :goto_635

    :cond_61c
    const-string v0, "autoclose"

    .line 365
    invoke-static {v11, v0}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_633

    const-string v0, "autoclose"

    .line 366
    invoke-static {v11, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_61a

    :cond_633
    const/4 v0, 0x0

    const/4 v13, 0x1

    :goto_635
    if-eqz v13, :cond_684

    move/from16 v46, v13

    .line 370
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v47, v4

    iget-object v4, v1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "__update_splash_delay"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66f

    .line 371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "__update_splash_delay"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    invoke-interface {v12, v4, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    :goto_66c
    move/from16 v48, v4

    goto :goto_68b

    :cond_66f
    const-string v4, "delay"

    .line 373
    invoke-static {v11, v4}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_688

    const-string v4, "delay"

    .line 374
    invoke-static {v11, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v13, v1, Lio/dcloud/g/a/e;->X:I

    invoke-static {v4, v13}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_66c

    :cond_684
    move/from16 v47, v4

    move/from16 v46, v13

    :cond_688
    const/4 v4, 0x0

    const/16 v48, 0x0

    .line 378
    :goto_68b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v49, v3

    iget-object v3, v1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "__update_splash_autoclose_w2a"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6be

    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "__update_splash_autoclose_w2a"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_6d4

    :cond_6be
    const-string v3, "autoclose_w2a"

    .line 381
    invoke-static {v11, v3}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6d4

    const-string v0, "autoclose_w2a"

    .line 382
    invoke-static {v11, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_6d4
    :goto_6d4
    if-eqz v0, :cond_723

    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "__update_splash_delay_w2a"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_707

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "__update_splash_delay_w2a"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_71b

    :cond_707
    const-string v3, "delay_w2a"

    .line 389
    invoke-static {v11, v3}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_71b

    const-string v3, "delay_w2a"

    .line 390
    invoke-static {v11, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Lio/dcloud/g/a/e;->Y:I

    invoke-static {v3, v4}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v4

    :cond_71b
    :goto_71b
    int-to-float v3, v4

    .line 393
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/g/a/e;->k()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_724

    :cond_723
    move v3, v4

    :goto_724
    const-string v4, "waiting"

    .line 396
    invoke-static {v11, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v12, v1, Lio/dcloud/g/a/e;->T:Z

    const/4 v13, 0x0

    invoke-static {v4, v12, v13}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v4

    const-string v12, "event"

    .line 398
    invoke-static {v11, v12}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "target"

    move/from16 v50, v0

    const-string v0, "default"

    .line 399
    invoke-virtual {v11, v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v13, "ads"

    .line 401
    invoke-static {v11, v13}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_765

    const-string v13, "#ffffff"

    .line 403
    invoke-virtual {v11, v14, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "image"

    .line 404
    invoke-virtual {v11, v14, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move v14, v4

    move/from16 v11, v48

    const/4 v4, 0x1

    move-object/from16 v48, v13

    move/from16 v13, v46

    move-object/from16 v46, v9

    move v9, v3

    move/from16 v3, v50

    move-object/from16 v50, v0

    goto :goto_789

    :cond_765
    move v9, v3

    move v14, v4

    move/from16 v13, v46

    move/from16 v11, v48

    move/from16 v3, v50

    const/4 v4, 0x1

    move-object/from16 v50, v0

    move-object/from16 v46, v33

    move-object/from16 v48, v46

    goto :goto_789

    :cond_775
    move-object/from16 v45, v0

    move/from16 v49, v3

    move/from16 v47, v4

    move-object/from16 v12, v33

    move-object/from16 v46, v12

    move-object/from16 v48, v46

    move-object/from16 v50, v48

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    :goto_789
    const-string v0, "error"

    .line 409
    invoke-static {v10, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_79c

    .line 412
    invoke-static {v0, v15}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v51

    if-nez v51, :cond_79c

    .line 413
    invoke-static {v0, v15}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_79e

    :cond_79c
    const-string v0, "file:///android_asset/data/dcloud_error.html"

    :goto_79e
    const-string v15, "ssl"

    .line 418
    invoke-static {v10, v15}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v51, v12

    if-eqz v15, :cond_7b7

    const-string v12, "untrustedca"

    .line 420
    invoke-static {v15, v12}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7b7

    const-string v12, "untrustedca"

    .line 421
    invoke-static {v15, v12}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_7b9

    :cond_7b7
    move-object/from16 v15, v18

    :goto_7b9
    const-string v12, "stream"

    .line 427
    invoke-static {v10, v12}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    move/from16 v18, v9

    .line 429
    iget-object v9, v1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-static {v9}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v1, Lio/dcloud/g/a/e;->L:Z

    move/from16 v52, v11

    if-eqz v12, :cond_7ec

    const-string v11, "competent"

    .line 431
    invoke-virtual {v12, v11, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v1, Lio/dcloud/g/a/e;->L:Z

    const-string v9, "shortcut"

    .line 432
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lio/dcloud/g/a/e;->u1:Ljava/lang/String;

    const-string v9, "shortcutQuit"

    .line 433
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lio/dcloud/g/a/e;->t1:Ljava/lang/String;

    const-string v9, "authority"

    .line 434
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    goto :goto_7ee

    :cond_7ec
    move-object/from16 v9, v33

    .line 436
    :goto_7ee
    iget-boolean v11, v1, Lio/dcloud/g/a/e;->L:Z

    if-nez v11, :cond_7f6

    .line 437
    invoke-static {v2}, Lio/dcloud/common/util/BaseInfo;->createAppTestFile(Ljava/lang/String;)V

    goto :goto_7f9

    .line 439
    :cond_7f6
    invoke-static {v2}, Lio/dcloud/common/util/BaseInfo;->removeTestFile(Ljava/lang/String;)V

    .line 441
    :goto_7f9
    sget-object v11, Lio/dcloud/g/a/e;->B1:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v53, v9

    iget-object v9, v1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " app competent="

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v1, Lio/dcloud/g/a/e;->L:Z

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-boolean v9, v1, Lio/dcloud/g/a/e;->n1:Z

    if-nez v9, :cond_879

    invoke-static {}, Lio/dcloud/g/b/g;->a()Z

    move-result v9

    if-nez v9, :cond_879

    .line 445
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/g/a/e;->getConfusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object v9

    const-string v11, "lkdg}lWixxcmq"

    invoke-interface {v9, v11}, Lio/dcloud/common/DHInterface/IConfusionMgr;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 447
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_870

    .line 448
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 449
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v35

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lio/dcloud/common/util/Md5Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 450
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_870

    .line 451
    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_870

    const/4 v9, 0x1

    goto :goto_871

    :cond_870
    const/4 v9, 0x0

    :goto_871
    if-nez v9, :cond_87b

    const/4 v0, 0x4

    .line 457
    invoke-virtual {v1, v0}, Lio/dcloud/g/a/e;->setStatus(B)V

    goto/16 :goto_131

    :cond_879
    move/from16 v9, p1

    :cond_87b
    const-string v11, "ads"

    .line 462
    invoke-static {v10, v11}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    const-string v11, "adid"

    .line 465
    invoke-static {v10, v11}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "wap2app"

    .line 474
    invoke-static {v10, v12}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    move/from16 p1, v9

    if-eqz v12, :cond_89b

    const-string v9, "launchError"

    move-object/from16 v35, v11

    const-string v11, "tip"

    .line 476
    invoke-virtual {v12, v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    goto :goto_89d

    :cond_89b
    move-object/from16 v35, v11

    :goto_89d
    move-object/from16 v9, v33

    .line 486
    iget-object v11, v1, Lio/dcloud/g/a/e;->J0:Landroid/content/Intent;

    if-eqz v11, :cond_8bb

    const-string v12, "unimp_direct_data"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8bb

    const/4 v11, 0x1

    .line 487
    iput-boolean v11, v1, Lio/dcloud/g/a/e;->l1:Z

    .line 488
    iget-object v11, v1, Lio/dcloud/g/a/e;->J0:Landroid/content/Intent;

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lio/dcloud/g/a/e;->m1:Ljava/lang/String;

    .line 489
    iget-object v11, v1, Lio/dcloud/g/a/e;->J0:Landroid/content/Intent;

    invoke-virtual {v11, v12}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_8bb
    const-string v11, "arguments"

    .line 502
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8cd

    const-string v11, "arguments"

    .line 503
    invoke-static {v10, v11}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lio/dcloud/g/a/e;->setRuntimeArgs(Ljava/lang/String;)V

    goto :goto_8e4

    .line 504
    :cond_8cd
    iget-object v10, v1, Lio/dcloud/g/a/e;->J0:Landroid/content/Intent;

    if-eqz v10, :cond_8e4

    const-string v11, "unimp_run_arguments"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8e4

    .line 505
    iget-object v10, v1, Lio/dcloud/g/a/e;->J0:Landroid/content/Intent;

    const-string v11, "unimp_run_arguments"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lio/dcloud/g/a/e;->setRuntimeArgs(Ljava/lang/String;)V

    :cond_8e4
    :goto_8e4
    const-string v10, "fullscreen"

    move-object/from16 v11, v32

    .line 510
    invoke-static {v11, v10}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-boolean v12, v1, Lio/dcloud/g/a/f;->h:Z

    move-object/from16 v32, v9

    const/4 v9, 0x0

    invoke-static {v10, v12, v9}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v10

    .line 511
    sget-object v9, Lio/dcloud/g/a/e;->B1:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v15

    iget-object v15, v1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " app fullScreen="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 516
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/g/a/e;->r()Z

    move-result v12

    const-string v15, "permissions"

    .line 517
    invoke-static {v11, v15}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_a17

    .line 519
    invoke-virtual {v11}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v15

    if-eqz v15, :cond_a17

    move/from16 v36, v10

    .line 521
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move/from16 v55, p1

    move/from16 v56, v3

    move/from16 v54, v14

    const/4 v14, 0x0

    .line 522
    :goto_937
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v14, v3, :cond_9ec

    .line 523
    invoke-static {v15, v14}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 524
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v57, v15

    const-string v15, "push"

    .line 525
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_96a

    .line 526
    invoke-static {v11, v3}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    move/from16 v58, v13

    const-string v13, "cover"

    .line 527
    invoke-static {v15, v13}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 528
    sget-boolean v15, Lio/dcloud/common/adapter/util/PlatformUtil;->APS_COVER:Z

    move/from16 v59, v4

    const/4 v4, 0x0

    invoke-static {v13, v15, v4}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v13

    sput-boolean v13, Lio/dcloud/common/adapter/util/PlatformUtil;->APS_COVER:Z

    goto :goto_9b4

    :cond_96a
    move/from16 v59, v4

    move/from16 v58, v13

    const-string v4, "webview"

    .line 529
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97c

    const-string v4, "ui"

    .line 530
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9b4

    :cond_97c
    const-string v4, "ui"

    .line 531
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_994

    const-string v4, "webview"

    .line 532
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "nativeui"

    .line 533
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "navigator"

    .line 534
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9b4

    :cond_994
    const-string v4, "maps"

    .line 535
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9b4

    const-string v4, "Maps"

    .line 536
    invoke-static {v11, v4}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_9b4

    const-string v13, "coordType"

    .line 537
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9b4

    const-string v13, "coordType"

    .line 538
    invoke-static {v4, v13}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lio/dcloud/g/a/e;->k1:Ljava/lang/String;

    :cond_9b4
    :goto_9b4
    if-eqz v31, :cond_9e2

    if-nez v30, :cond_9e2

    if-nez v12, :cond_9e2

    .line 542
    invoke-static {v2, v3}, Lio/dcloud/common/core/permission/PermissionControler;->checkSafePermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9e2

    iget-object v4, v1, Lio/dcloud/g/a/e;->u:Lio/dcloud/g/a/a;

    sget-object v13, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v15, 0x9

    invoke-virtual {v4, v13, v15, v3}, Lio/dcloud/g/a/a;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_9e2

    .line 544
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_9dd

    const-string v4, ","

    .line 545
    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 547
    :cond_9dd
    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v55, 0x0

    :cond_9e2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v15, v57

    move/from16 v13, v58

    move/from16 v4, v59

    goto/16 :goto_937

    :cond_9ec
    move/from16 v59, v4

    move/from16 v58, v13

    if-nez v55, :cond_a23

    if-eqz v31, :cond_a23

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_5PRUNTIME_LACK_MODULE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, -0x4cd

    invoke-static {v2, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    const/4 v2, 0x1

    .line 553
    iput-boolean v2, v5, Lio/dcloud/g/a/g;->a:Z

    goto/16 :goto_131

    :cond_a17
    move/from16 v56, v3

    move/from16 v59, v4

    move/from16 v36, v10

    move/from16 v58, v13

    move/from16 v54, v14

    move/from16 v55, p1

    :cond_a23
    if-eqz v55, :cond_ae4

    .line 561
    iget-object v3, v1, Lio/dcloud/g/a/e;->p:Lio/dcloud/common/util/BaseInfo$BaseAppInfo;

    if-eqz v3, :cond_a2d

    iget-object v4, v1, Lio/dcloud/g/a/e;->w:Ljava/lang/String;

    iput-object v4, v3, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->mAppVer:Ljava/lang/String;

    :cond_a2d
    move-object/from16 v3, v29

    .line 562
    iput-object v3, v1, Lio/dcloud/g/a/e;->w:Ljava/lang/String;

    move-object/from16 v3, v28

    .line 563
    iput-object v3, v1, Lio/dcloud/g/a/e;->x:Ljava/lang/String;

    .line 564
    iput-object v9, v1, Lio/dcloud/g/a/e;->x0:Ljava/util/ArrayList;

    .line 565
    iput-object v2, v1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    move-object/from16 v2, p3

    .line 566
    iput-object v2, v1, Lio/dcloud/g/a/e;->v:Ljava/lang/String;

    move-object/from16 v2, p2

    .line 567
    iput-object v2, v1, Lio/dcloud/g/a/e;->p0:Ljava/lang/String;

    .line 568
    iput-boolean v8, v1, Lio/dcloud/g/a/e;->I:Z

    .line 569
    iput-boolean v7, v1, Lio/dcloud/g/a/e;->J:Z

    move-object/from16 v2, v26

    .line 570
    iput-object v2, v1, Lio/dcloud/g/a/e;->B:Ljava/lang/String;

    move-object/from16 v2, v20

    .line 571
    iput-object v2, v1, Lio/dcloud/g/a/e;->C:Ljava/lang/String;

    move-object/from16 v2, v19

    .line 572
    iput-object v2, v1, Lio/dcloud/g/a/e;->D:Ljava/lang/String;

    move-object/from16 v2, v21

    .line 573
    iput-object v2, v1, Lio/dcloud/g/a/e;->F:Ljava/lang/String;

    move-object/from16 v2, v25

    .line 574
    iput-object v2, v1, Lio/dcloud/g/a/e;->h0:Ljava/lang/String;

    move-object/from16 v2, v22

    .line 575
    iput-object v2, v1, Lio/dcloud/g/a/e;->j0:Ljava/lang/String;

    move-object/from16 v2, v23

    .line 576
    iput-object v2, v1, Lio/dcloud/g/a/e;->o0:Ljava/lang/String;

    .line 577
    iput-object v6, v1, Lio/dcloud/g/a/e;->H:Ljava/lang/String;

    .line 578
    iput-object v0, v1, Lio/dcloud/g/a/e;->m0:Ljava/lang/String;

    move/from16 v0, v59

    .line 579
    iput-boolean v0, v1, Lio/dcloud/g/a/e;->S:Z

    move/from16 v0, v58

    .line 580
    iput-boolean v0, v1, Lio/dcloud/g/a/e;->U:Z

    move/from16 v0, v56

    .line 581
    iput-boolean v0, v1, Lio/dcloud/g/a/e;->V:Z

    move/from16 v3, v49

    .line 582
    iput-boolean v3, v1, Lio/dcloud/g/a/e;->f0:Z

    move/from16 v4, v54

    .line 584
    iput-boolean v4, v1, Lio/dcloud/g/a/e;->T:Z

    move/from16 v0, v47

    .line 585
    iput-boolean v0, v1, Lio/dcloud/g/a/e;->M:Z

    move/from16 v0, v36

    .line 586
    iput-boolean v0, v1, Lio/dcloud/g/a/f;->h:Z

    move/from16 v2, v24

    .line 587
    iput-boolean v2, v1, Lio/dcloud/g/a/e;->Q:Z

    move-object/from16 v15, v33

    .line 588
    iput-object v15, v1, Lio/dcloud/g/a/e;->l0:Ljava/lang/String;

    .line 589
    sput-object v15, Lio/dcloud/common/util/BaseInfo;->untrustedca:Ljava/lang/String;

    move/from16 v0, v52

    .line 590
    iput v0, v1, Lio/dcloud/g/a/e;->X:I

    move/from16 v3, v18

    .line 591
    iput v3, v1, Lio/dcloud/g/a/e;->Y:I

    move-object/from16 v12, v51

    .line 592
    iput-object v12, v1, Lio/dcloud/g/a/e;->Z:Ljava/lang/String;

    move-object/from16 v0, v50

    .line 593
    iput-object v0, v1, Lio/dcloud/g/a/e;->a0:Ljava/lang/String;

    move-object/from16 v0, v45

    .line 594
    iput-object v0, v1, Lio/dcloud/g/a/e;->z0:Lorg/json/JSONObject;

    move-object/from16 v0, v41

    .line 595
    iput-object v0, v1, Lio/dcloud/g/a/e;->B0:Lorg/json/JSONObject;

    move/from16 v0, v40

    .line 596
    iput-boolean v0, v1, Lio/dcloud/g/a/e;->d1:Z

    move-object/from16 v0, v44

    .line 597
    iput-object v0, v1, Lio/dcloud/g/a/e;->C0:Lorg/json/JSONObject;

    move-object/from16 v2, v39

    .line 598
    iput-object v2, v1, Lio/dcloud/g/a/e;->D0:Lorg/json/JSONObject;

    move-object/from16 v0, v38

    .line 599
    iput-object v0, v1, Lio/dcloud/g/a/e;->F0:Lorg/json/JSONObject;

    move-object/from16 v9, v53

    .line 600
    iput-object v9, v1, Lio/dcloud/g/a/e;->E0:Lorg/json/JSONObject;

    move-object/from16 v0, v35

    .line 602
    iput-object v0, v1, Lio/dcloud/g/a/e;->I0:Ljava/lang/String;

    move-object/from16 v13, v37

    .line 603
    iput-object v13, v1, Lio/dcloud/g/a/e;->b0:Ljava/lang/String;

    move-object/from16 v13, v43

    .line 604
    iput-object v13, v1, Lio/dcloud/g/a/e;->c0:Ljava/lang/String;

    move-object/from16 v6, v34

    .line 605
    iput-object v6, v1, Lio/dcloud/g/a/e;->d0:Ljava/lang/String;

    move-object/from16 v6, v42

    .line 606
    iput-object v6, v1, Lio/dcloud/g/a/e;->e0:Ljava/lang/String;

    move-object/from16 v13, v48

    .line 607
    iput-object v13, v1, Lio/dcloud/g/a/e;->T0:Ljava/lang/String;

    move-object/from16 v9, v46

    .line 608
    iput-object v9, v1, Lio/dcloud/g/a/e;->U0:Ljava/lang/String;

    move-object/from16 v0, v32

    .line 609
    iput-object v0, v1, Lio/dcloud/g/a/e;->H0:Ljava/lang/String;

    move-object/from16 v2, v27

    .line 610
    iput-object v2, v1, Lio/dcloud/g/a/e;->A0:Lorg/json/JSONObject;

    .line 611
    invoke-direct/range {p0 .. p0}, Lio/dcloud/g/a/e;->m()V

    .line 612
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/g/a/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    :cond_ae4
    xor-int/lit8 v0, v55, 0x1

    .line 614
    iput-boolean v0, v5, Lio/dcloud/g/a/g;->a:Z

    return v55

    :catch_ae9
    move-exception v0

    .line 615
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x1

    .line 616
    iput-boolean v2, v5, Lio/dcloud/g/a/g;->a:Z

    .line 617
    iget-boolean v0, v5, Lio/dcloud/g/a/g;->c:Z

    if-eqz v0, :cond_aff

    .line 618
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_WWW_MANIFEST_ERROR_MALFORMED:Ljava/lang/String;

    const/16 v2, -0x4ca

    invoke-static {v2, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    goto :goto_b09

    .line 620
    :cond_aff
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGT_MANIFEST_ERROR_MALFORMED:Ljava/lang/String;

    const/16 v2, -0x4b3

    invoke-static {v2, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    :goto_b09
    const/4 v2, 0x0

    return v2
.end method

.method a(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 16

    const-string v0, "IO Error"

    .line 813
    iget-object v1, p0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lio/dcloud/g/a/g;->c:Z

    .line 814
    iput-boolean v2, v1, Lio/dcloud/g/a/g;->d:Z

    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v3, Lio/dcloud/common/adapter/util/DeviceInfo;->sSeparatorChar:C

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->APP_WWW_FS_DIR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 817
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_unzip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 818
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_backup"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v6, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 819
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_backup1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v7, Ljava/io/File;->separatorChar:C

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 825
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x5

    const/4 v8, 0x0

    .line 829
    :try_start_8b
    invoke-static {v3}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z

    .line 830
    invoke-static {v7, v3}, Lio/dcloud/common/util/ZipUtils;->upZipFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/io/FileNotFoundException; {:try_start_8b .. :try_end_91} :catch_1b7
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_91} :catch_198
    .catchall {:try_start_8b .. :try_end_91} :catchall_195

    .line 847
    :try_start_91
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lio/dcloud/common/util/BaseInfo;->WGTU_UPDATE_XML:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v7
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_aa} :catch_179
    .catchall {:try_start_91 .. :try_end_aa} :catchall_195

    if-nez v7, :cond_c0

    .line 849
    :try_start_ac
    iget-object p2, p0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    const/16 v9, -0x4c5

    sget-object v10, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_UPDATE_NOT_EXIST:Ljava/lang/String;

    invoke-static {v9, v10}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p2, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    .line 850
    iget-object p2, p0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    iput-boolean v2, p2, Lio/dcloud/g/a/g;->a:Z
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_bc} :catch_177
    .catchall {:try_start_ac .. :try_end_bc} :catchall_2b9

    .line 896
    invoke-static {v7}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return v5

    .line 897
    :cond_c0
    :try_start_c0
    invoke-static {v7}, Lio/dcloud/common/util/XmlUtil;->XML_Parser(Ljava/io/InputStream;)Lio/dcloud/common/util/XmlUtil$DHNode;

    move-result-object v9
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c4} :catch_177
    .catchall {:try_start_c0 .. :try_end_c4} :catchall_2b9

    if-eqz v9, :cond_171

    if-eqz v9, :cond_16b

    :try_start_c8
    const-string v10, "appid"

    .line 907
    invoke-static {v9, v10}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "basis"

    .line 908
    invoke-static {v9, v11}, Lio/dcloud/common/util/XmlUtil;->getElement(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Lio/dcloud/common/util/XmlUtil$DHNode;

    move-result-object v11

    const-string v12, "version"

    .line 909
    invoke-static {v11, v12}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 910
    sget-boolean v12, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    if-nez v12, :cond_f7

    iget-object v12, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e7

    goto :goto_f7

    .line 931
    :cond_e7
    iget-object p2, p0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    const/16 v9, -0x4c7

    sget-object v10, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_UPDATE_APPID_NOT_MATCH:Ljava/lang/String;

    invoke-static {v9, v10}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p2, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    :goto_f3
    move-object v10, v8

    const/4 p2, 0x0

    goto/16 :goto_16d

    .line 932
    :cond_f7
    :goto_f7
    iget-object v10, p0, Lio/dcloud/g/a/e;->w:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_115

    const-string v10, "force"

    invoke-virtual {p2, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_108

    goto :goto_115

    .line 948
    :cond_108
    iget-object p2, p0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    const/16 v9, -0x4c8

    sget-object v10, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_UPDATE_VERSION_NOT_MATCH:Ljava/lang/String;

    invoke-static {v9, v10}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p2, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    goto :goto_f3

    .line 949
    :cond_115
    :goto_115
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lio/dcloud/common/util/BaseInfo;->APP_WWW_FS_DIR:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_126} :catch_192
    .catchall {:try_start_c8 .. :try_end_126} :catchall_2b9

    .line 950
    :try_start_126
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lio/dcloud/common/util/BaseInfo;->sConfigXML:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 951
    invoke-static {v11}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_155

    .line 952
    invoke-static {v11}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v11

    .line 953
    iget-object v12, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {p0, v11, v12, p2}, Lio/dcloud/g/a/e;->a(Ljava/io/InputStream;Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p2

    .line 954
    invoke-static {v11}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    const-string v11, "remove"

    .line 961
    invoke-static {v9, v11}, Lio/dcloud/common/util/XmlUtil;->getElement(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Lio/dcloud/common/util/XmlUtil$DHNode;

    move-result-object v8

    goto :goto_16d

    .line 962
    :cond_155
    iget-object p2, p0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    const/16 v9, -0x4c9

    sget-object v11, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_WWW_MANIFEST_NOT_EXIST:Ljava/lang/String;

    invoke-static {v9, v11}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p2, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    .line 963
    iget-object p2, p0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    iput-boolean v2, p2, Lio/dcloud/g/a/g;->a:Z
    :try_end_165
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_165} :catch_169
    .catchall {:try_start_126 .. :try_end_165} :catchall_2b9

    .line 982
    invoke-static {v7}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return v5

    :catch_169
    move-exception p2

    goto :goto_1cd

    :cond_16b
    move-object v10, v8

    const/4 p2, 0x1

    :goto_16d
    invoke-static {v7}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    goto :goto_1dc

    .line 983
    :cond_171
    :try_start_171
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    throw p2
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_171 .. :try_end_177} :catch_177
    .catchall {:try_start_171 .. :try_end_177} :catchall_2b9

    :catch_177
    move-exception p2

    goto :goto_17b

    :catch_179
    move-exception p2

    move-object v7, v8

    .line 985
    :goto_17b
    :try_start_17b
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 986
    iget-object p2, p0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    const/16 v9, -0x4c6

    sget-object v10, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_UPDATE_ERROR_MALFORMED:Ljava/lang/String;

    invoke-static {v9, v10}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p2, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    .line 987
    iget-object p2, p0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    iput-boolean v2, p2, Lio/dcloud/g/a/g;->a:Z
    :try_end_18e
    .catch Ljava/io/IOException; {:try_start_17b .. :try_end_18e} :catch_192
    .catchall {:try_start_17b .. :try_end_18e} :catchall_2b9

    .line 1024
    invoke-static {v7}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return v5

    :catch_192
    move-exception p2

    move-object v10, v8

    goto :goto_1cd

    :catchall_195
    move-exception p1

    goto/16 :goto_2bb

    :catch_198
    move-exception p2

    .line 1025
    :try_start_199
    invoke-static {p2}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/Throwable;)V

    .line 1026
    invoke-static {v3}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z

    .line 1027
    iget-object p2, p0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    const/16 v7, -0x4b1

    sget-object v9, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGT_OR_WGTU_ERROR_MALFORMED:Ljava/lang/String;

    invoke-static {v7, v9}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    .line 1028
    iget-object p2, p0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    iput-boolean v2, p2, Lio/dcloud/g/a/g;->a:Z
    :try_end_1af
    .catch Ljava/io/IOException; {:try_start_199 .. :try_end_1af} :catch_1b3
    .catchall {:try_start_199 .. :try_end_1af} :catchall_195

    .line 1083
    invoke-static {v8}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return v5

    :catch_1b3
    move-exception p2

    move-object v7, v8

    move-object v10, v7

    goto :goto_1cd

    .line 1084
    :catch_1b7
    :try_start_1b7
    invoke-static {v3}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z

    .line 1085
    iget-object p2, p0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    const/4 v7, -0x4

    sget-object v9, Lio/dcloud/common/constant/DOMException;->MSG_FILE_NOT_EXIST:Ljava/lang/String;

    invoke-static {v7, v9}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    .line 1086
    iget-object p2, p0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    iput-boolean v2, p2, Lio/dcloud/g/a/g;->a:Z
    :try_end_1c9
    .catch Ljava/io/IOException; {:try_start_1b7 .. :try_end_1c9} :catch_1b3
    .catchall {:try_start_1b7 .. :try_end_1c9} :catchall_195

    .line 1148
    invoke-static {v8}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return v5

    .line 1149
    :goto_1cd
    :try_start_1cd
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 1151
    iget-object p2, p0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    invoke-static {p1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p2, Lio/dcloud/g/a/g;->b:Ljava/lang/String;
    :try_end_1d8
    .catchall {:try_start_1cd .. :try_end_1d8} :catchall_2b9

    .line 1153
    invoke-static {v7}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    const/4 p2, 0x0

    :goto_1dc
    if-eqz p2, :cond_2ac

    .line 1160
    :try_start_1de
    invoke-static {v4}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I

    .line 1161
    iget-byte p2, p0, Lio/dcloud/g/a/e;->R:B

    if-ne p2, v2, :cond_1eb

    .line 1162
    iget-object p2, p0, Lio/dcloud/g/a/e;->g0:Ljava/lang/String;

    invoke-static {p2, v4}, Lio/dcloud/common/adapter/io/DHFile;->copyDir(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f2

    :cond_1eb
    if-nez p2, :cond_1f2

    .line 1164
    invoke-static {v1, v4, v2, v5}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)I

    const/4 p2, 0x1

    goto :goto_1f3

    :cond_1f2
    :goto_1f2
    const/4 p2, 0x0

    :goto_1f3
    const-string v7, "item"

    .line 1169
    invoke-static {v8, v7}, Lio/dcloud/common/util/XmlUtil;->getElements(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_229

    .line 1170
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_229

    .line 1171
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_206
    if-ge v9, v8, :cond_229

    .line 1173
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/dcloud/common/util/XmlUtil$DHNode;

    const-string v12, "path"

    .line 1174
    invoke-static {v11, v12}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1175
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I

    add-int/lit8 v9, v9, 0x1

    goto :goto_206

    .line 1179
    :cond_229
    invoke-static {v10, v4, v2, v5}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v7

    if-eq v2, v7, :cond_23f

    .line 1180
    invoke-static {v4}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I

    .line 1181
    iget-object p2, p0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    invoke-static {p1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    .line 1182
    iget-object p1, p0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    iput-boolean v2, p1, Lio/dcloud/g/a/g;->a:Z
    :try_end_23e
    .catch Ljava/lang/Exception; {:try_start_1de .. :try_end_23e} :catch_28f

    return v5

    .line 1186
    :cond_23f
    :try_start_23f
    invoke-static {v3}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I

    if-eqz p2, :cond_25b

    .line 1188
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1189
    invoke-static {v1, v7}, Lio/dcloud/common/adapter/io/DHFile;->rename(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_25b
    sget-object v7, Lio/dcloud/common/util/BaseInfo;->APP_WWW_FS_DIR:Ljava/lang/String;

    invoke-static {v4, v7}, Lio/dcloud/common/adapter/io/DHFile;->rename(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_265

    .line 1193
    invoke-static {v6}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I
    :try_end_265
    .catch Ljava/io/IOException; {:try_start_23f .. :try_end_265} :catch_27e
    .catch Ljava/lang/Exception; {:try_start_23f .. :try_end_265} :catch_28f

    .line 1201
    :cond_265
    :try_start_265
    invoke-virtual {p0, v5}, Lio/dcloud/g/a/e;->b(B)V

    .line 1202
    invoke-virtual {p0, v1}, Lio/dcloud/g/a/e;->setAppDataPath(Ljava/lang/String;)V

    .line 1203
    new-instance p1, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;

    iget-object p2, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    iget-object v0, p0, Lio/dcloud/g/a/e;->w:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lio/dcloud/g/a/e;->p:Lio/dcloud/common/util/BaseInfo$BaseAppInfo;

    .line 1204
    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->saveToBundleData(Landroid/content/Context;)V

    goto :goto_2b8

    :catch_27e
    move-exception p2

    .line 1205
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 1206
    iget-object p2, p0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    invoke-static {p1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    .line 1207
    iget-object p1, p0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    iput-boolean v2, p1, Lio/dcloud/g/a/g;->a:Z
    :try_end_28e
    .catch Ljava/lang/Exception; {:try_start_265 .. :try_end_28e} :catch_28f

    return v5

    :catch_28f
    move-exception p1

    .line 1215
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1217
    :try_start_293
    invoke-static {v3}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I
    :try_end_296
    .catch Ljava/io/IOException; {:try_start_293 .. :try_end_296} :catch_297

    goto :goto_29b

    :catch_297
    move-exception p1

    .line 1219
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1221
    :goto_29b
    iget-object p1, p0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    sget-object p2, Lio/dcloud/common/constant/DOMException;->MSG_UNKNOWN_ERROR:Ljava/lang/String;

    const/16 v0, -0x63

    invoke-static {v0, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    .line 1222
    iget-object p1, p0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    iput-boolean v2, p1, Lio/dcloud/g/a/g;->a:Z

    return v5

    .line 1226
    :cond_2ac
    iget-object p1, p0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    iput-boolean v2, p1, Lio/dcloud/g/a/g;->a:Z

    .line 1228
    :try_start_2b0
    invoke-static {v3}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I
    :try_end_2b3
    .catch Ljava/io/IOException; {:try_start_2b0 .. :try_end_2b3} :catch_2b4

    goto :goto_2b8

    :catch_2b4
    move-exception p1

    .line 1230
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2b8
    return v5

    :catchall_2b9
    move-exception p1

    move-object v8, v7

    .line 1231
    :goto_2bb
    invoke-static {v8}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 1232
    throw p1
.end method

.method a(Z)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 782
    iput-object v0, p0, Lio/dcloud/g/a/e;->m1:Ljava/lang/String;

    .line 783
    iget-object p1, p0, Lio/dcloud/g/a/e;->u:Lio/dcloud/g/a/a;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v2, 0x4c

    invoke-virtual {p1, v1, v2, p0}, Lio/dcloud/g/a/a;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 786
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sSeparatorChar:C

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->REAL_PRIVATE_WWW_DIR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dcloud/g/a/e;->setAppDataPath(Ljava/lang/String;)V

    .line 787
    iget-object p1, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lio/dcloud/g/a/e;->b(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_59

    .line 790
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->clearUseRejectedCache()V

    .line 791
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->showSplash()V

    .line 792
    iget-object p1, p0, Lio/dcloud/g/a/e;->u:Lio/dcloud/g/a/a;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v2, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {p1, v1, v3, v2}, Lio/dcloud/g/a/a;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 794
    sget-object p1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppReStart:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {p0, p1, v0}, Lio/dcloud/g/a/e;->callSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 796
    iput-boolean p1, p0, Lio/dcloud/g/a/e;->b1:Z

    const-string p1, "run_5app_time_key"

    .line 797
    invoke-static {p1}, Lio/dcloud/common/util/TestUtil;->record(Ljava/lang/String;)V

    const/16 p1, 0xa

    .line 798
    invoke-direct {p0, p1}, Lio/dcloud/g/a/e;->a(I)Z

    move-result p1

    :cond_59
    return p1
.end method

.method public addAllFeaturePermission()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/core/permission/PermissionControler;->registerRootPermission(Ljava/lang/String;)V

    return-void
.end method

.method public addFeaturePermission(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->x0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyMani()V
    .registers 4

    .line 1
    :try_start_0
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sConfigXML:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/dcloud/g/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lio/dcloud/g/a/e;->a(Ljava/io/InputStream;Ljava/lang/String;Lorg/json/JSONObject;)Z
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_19
    return-void
.end method

.method public applySmartUpdate()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/g/a/e;->a(Z)Z

    return-void
.end method

.method b(B)V
    .registers 2

    .line 157
    iput-byte p1, p0, Lio/dcloud/g/a/e;->R:B

    return-void
.end method

.method b(Ljava/io/InputStream;)V
    .registers 2

    return-void
.end method

.method b(Z)V
    .registers 3

    .line 160
    iget-object v0, p0, Lio/dcloud/g/a/f;->b:Lio/dcloud/common/DHInterface/IWebAppRootView;

    invoke-interface {v0, p0}, Lio/dcloud/common/DHInterface/IWebAppRootView;->onAppUnActive(Lio/dcloud/common/DHInterface/IApp;)V

    if-eqz p1, :cond_11

    .line 162
    sget-object p1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppPause:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {p0, p1, p0}, Lio/dcloud/g/a/e;->callSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    .line 163
    sget-object p1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppBackground:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {p0, p1, p0}, Lio/dcloud/g/a/e;->callSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    .line 165
    :cond_11
    iget-object p1, p0, Lio/dcloud/g/a/e;->K0:Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;

    if-eqz p1, :cond_19

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;->onPause(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IApp;)V

    :cond_19
    const/4 p1, 0x2

    .line 166
    invoke-virtual {p0, p1}, Lio/dcloud/g/a/e;->setStatus(B)V

    return-void
.end method

.method b(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_2
    iput-object p1, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lio/dcloud/g/a/e;->p1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    invoke-interface {v2, p1}, Lio/dcloud/common/DHInterface/IConfusionMgr;->removeData(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->l()V

    .line 7
    iget-byte v2, p0, Lio/dcloud/g/a/e;->R:B

    const/4 v3, 0x1

    if-eqz v2, :cond_2d

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->mBaseAppInfoSet:Ljava/util/HashMap;

    if-eqz v2, :cond_1e

    iget-object v4, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_2d

    .line 15
    :cond_1e
    iget-byte v2, p0, Lio/dcloud/g/a/e;->R:B

    if-ne v2, v3, :cond_4b

    .line 16
    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sConfigXML:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lio/dcloud/g/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_4b

    .line 17
    :cond_2d
    :goto_2d
    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sConfigXML:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lio/dcloud/g/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_4b

    .line 19
    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sConfigXML:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lio/dcloud/g/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 21
    iput-byte v3, p0, Lio/dcloud/g/a/e;->R:B

    .line 33
    :cond_4b
    :goto_4b
    iget-object v2, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-static {v2}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 34
    invoke-direct {p0}, Lio/dcloud/g/a/e;->y()V

    const/4 v2, 0x0

    goto :goto_59

    :cond_58
    const/4 v2, 0x1

    :goto_59
    if-nez v1, :cond_a2

    .line 39
    iget-object p1, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-static {p1}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 40
    iget-object p1, p0, Lio/dcloud/g/a/e;->i1:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_69} :catch_bf
    .catchall {:try_start_2 .. :try_end_69} :catchall_bd

    if-nez p1, :cond_6f

    .line 75
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return v3

    .line 76
    :cond_6f
    :try_start_6f
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->r()Z

    move-result p1

    if-eqz p1, :cond_81

    iget-object p1, p0, Lio/dcloud/g/a/e;->n0:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_7b} :catch_bf
    .catchall {:try_start_6f .. :try_end_7b} :catchall_bd

    if-nez p1, :cond_81

    .line 107
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return v3

    .line 108
    :cond_81
    :try_start_81
    iget-object p1, p0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    iput-boolean v3, p1, Lio/dcloud/g/a/g;->a:Z

    .line 109
    iget-boolean p2, p1, Lio/dcloud/g/a/g;->c:Z

    if-eqz p2, :cond_94

    const/16 p2, -0x4c9

    .line 110
    sget-object v2, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_WWW_MANIFEST_NOT_EXIST:Ljava/lang/String;

    invoke-static {p2, v2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    goto :goto_9e

    :cond_94
    const/16 p2, -0x4b2

    .line 112
    sget-object v2, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGT_MANIFEST_NOT_EXIST:Ljava/lang/String;

    invoke-static {p2, v2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lio/dcloud/g/a/g;->b:Ljava/lang/String;
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_9e} :catch_bf
    .catchall {:try_start_81 .. :try_end_9e} :catchall_bd

    .line 135
    :goto_9e
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return v0

    .line 136
    :cond_a2
    :try_start_a2
    invoke-virtual {p0, v1, p1, p2}, Lio/dcloud/g/a/e;->a(Ljava/io/InputStream;Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v2, :cond_ab

    .line 138
    invoke-direct {p0}, Lio/dcloud/g/a/e;->y()V

    .line 147
    :cond_ab
    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object p1

    if-eqz p1, :cond_ba

    .line 149
    iget-object p2, p0, Lio/dcloud/g/a/e;->p0:Ljava/lang/String;

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IActivityHandler;->updateSplash(Ljava/lang/String;)V

    .line 151
    :cond_ba
    iput-boolean v3, p0, Lio/dcloud/g/a/e;->r:Z
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_bc} :catch_bf
    .catchall {:try_start_a2 .. :try_end_bc} :catchall_bd

    goto :goto_c5

    :catchall_bd
    move-exception p1

    goto :goto_c9

    :catch_bf
    move-exception p1

    :try_start_c0
    const-string p2, "parseConfig"

    .line 153
    invoke-static {p2, p1}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c5
    .catchall {:try_start_c0 .. :try_end_c5} :catchall_bd

    .line 155
    :goto_c5
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return v0

    :goto_c9
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 156
    throw p1
.end method

.method c()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    if-eqz v0, :cond_16

    instance-of v1, v0, Lio/dcloud/WebAppActivity;

    if-eqz v1, :cond_16

    .line 2
    check-cast v0, Lio/dcloud/WebAppActivity;

    iget-object v1, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/dcloud/WebAppActivity;->onAppActive(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    check-cast v0, Lio/dcloud/WebAppActivity;

    invoke-virtual {v0, p0}, Lio/dcloud/WebAppActivity;->onAppActive(Lio/dcloud/common/DHInterface/IApp;)V

    .line 5
    :cond_16
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->diyStatusBarState()V

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0, v0}, Lio/dcloud/g/a/e;->setStatus(B)V

    .line 7
    iget-object v0, p0, Lio/dcloud/g/a/f;->b:Lio/dcloud/common/DHInterface/IWebAppRootView;

    invoke-interface {v0, p0}, Lio/dcloud/common/DHInterface/IWebAppRootView;->onAppActive(Lio/dcloud/common/DHInterface/IApp;)V

    .line 8
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppForeground:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/dcloud/common/constant/IntentConst;->obtainArgs(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/dcloud/g/a/e;->callSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    return-void
.end method

.method c(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 12

    .line 9
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainAppDataPath()Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_backup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-byte v5, p0, Lio/dcloud/g/a/e;->R:B

    if-ne v5, v3, :cond_5f

    .line 15
    :try_start_24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v7, Ljava/io/File;->separatorChar:C

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v7, Lio/dcloud/common/util/BaseInfo;->APP_WWW_FS_DIR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_41} :catch_5d

    .line 16
    :try_start_41
    invoke-static {v6}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I

    .line 17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-virtual {v6, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_5c} :catch_87

    goto :goto_72

    :catch_5d
    move-exception p2

    goto :goto_6f

    :cond_5f
    if-nez v5, :cond_71

    .line 19
    :try_start_61
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_6e} :catch_5d

    goto :goto_71

    :goto_6f
    move-object v6, v0

    goto :goto_88

    :cond_71
    :goto_71
    move-object v6, v0

    .line 23
    :goto_72
    :try_start_72
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-static {v2, v6}, Lio/dcloud/common/util/ZipUtils;->upZipFile(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, v4}, Lio/dcloud/g/a/e;->b(B)V

    .line 26
    invoke-virtual {p0, v6}, Lio/dcloud/g/a/e;->setAppDataPath(Ljava/lang/String;)V

    .line 27
    iget-object v2, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {p0, v2, p2}, Lio/dcloud/g/a/e;->b(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v4
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_86} :catch_87

    goto :goto_a8

    :catch_87
    move-exception p2

    .line 29
    :goto_88
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    iget-object v2, p0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    iput-boolean v3, v2, Lio/dcloud/g/a/g;->a:Z

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v8, 0xa

    .line 31
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v7, v3

    const-string p2, "{code:%d,message:\'%s\'}"

    invoke-static {p2, v7}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    :goto_a8
    if-nez v4, :cond_de

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unZipWebApp failed pFilePath="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "appmgr"

    invoke-static {p2, p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, v5}, Lio/dcloud/g/a/e;->b(B)V

    .line 36
    invoke-virtual {p0, v0}, Lio/dcloud/g/a/e;->setAppDataPath(Ljava/lang/String;)V

    .line 38
    :try_start_c6
    invoke-static {v6}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_ca

    goto :goto_ce

    :catch_ca
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_ce
    if-nez v5, :cond_fa

    .line 43
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_fa

    :cond_de
    if-nez v5, :cond_e8

    .line 48
    :try_start_e0
    invoke-static {v1}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e3} :catch_e4

    goto :goto_e8

    :catch_e4
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 53
    :cond_e8
    :goto_e8
    new-instance p1, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;

    iget-object p2, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    iget-object v0, p0, Lio/dcloud/g/a/e;->w:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lio/dcloud/g/a/e;->p:Lio/dcloud/common/util/BaseInfo$BaseAppInfo;

    .line 54
    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->saveToBundleData(Landroid/content/Context;)V

    :cond_fa
    :goto_fa
    return v4
.end method

.method public callSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->y0:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4
    iget-object v2, p0, Lio/dcloud/g/a/e;->y0:Ljava/util/HashMap;

    sget-object v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->AllSystemEvent:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_20

    .line 8
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_20
    if-eqz v2, :cond_25

    .line 11
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_25
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2b
    if-ltz v0, :cond_4a

    .line 15
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/DHInterface/ISysEventListener;

    .line 16
    invoke-direct {p0, v2, p1}, Lio/dcloud/g/a/e;->a(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 17
    invoke-interface {v2, p1, p2}, Lio/dcloud/common/DHInterface/ISysEventListener;->onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_47

    .line 18
    invoke-static {p1}, Lio/dcloud/g/a/e;->a(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)Z

    move-result v2

    if-nez v2, :cond_47

    goto :goto_4a

    :cond_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_2b

    :cond_4a
    :goto_4a
    return v1
.end method

.method public checkIsCustomPath()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/g/a/e;->k0:Z

    return v0
.end method

.method public checkOrLoadlaunchWebview()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->u:Lio/dcloud/g/a/a;

    if-eqz v0, :cond_46

    .line 2
    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainAppId()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v0, v1, v3, v2}, Lio/dcloud/g/a/a;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkOrLoadlaunchWebview "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/dcloud/g/a/e;->manifestBeParsed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ";adaFrameView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Direct_page"

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->manifestBeParsed()Z

    if-eqz v0, :cond_46

    .line 5
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->manifestBeParsed()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 6
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->checkIfNeedLoadOriginalUrl()V

    :cond_46
    return-void
.end method

.method public checkPrivateDir(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainAppDataPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_13

    :cond_b
    const-string v0, "_www"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    :goto_13
    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method

.method public checkPrivateDirAndCopy2Temp(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainRunningAppMode()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5a

    .line 2
    invoke-virtual {p0, p1}, Lio/dcloud/g/a/e;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->APP_WWW_FS_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/dcloud/g/a/e;->g0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainAppTempPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->exists(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 10
    invoke-static {v0, p1}, Lio/dcloud/common/adapter/io/DHFile;->copyAssetsFile(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_5a
    return-object p1
.end method

.method public checkSchemeWhite(Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->r()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 4
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 5
    iget-object v0, p0, Lio/dcloud/g/a/e;->h1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "*"

    .line 6
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_3f
    return v1

    :cond_40
    const/4 p1, 0x0

    return p1
.end method

.method public checkWhiteUrl(Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lio/dcloud/g/a/e;->g1:Ljava/util/ArrayList;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lio/dcloud/g/a/e;->g1:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    :cond_18
    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public clearRuntimeArgs()V
    .registers 2

    const-string v0, ""

    .line 1
    iput-object v0, p0, Lio/dcloud/g/a/e;->A:Ljava/lang/String;

    return-void
.end method

.method public convert2AbsFullPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0, p1}, Lio/dcloud/g/a/e;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x1

    .line 1
    :try_start_1
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 3
    iget-byte v1, p0, Lio/dcloud/g/a/e;->R:B

    if-ne v1, v0, :cond_12

    invoke-static {p2}, Lio/dcloud/common/adapter/util/PlatformUtil;->isResFileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-object p2

    .line 5
    :cond_12
    invoke-static {p2}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_16} :catch_19

    if-eqz v1, :cond_1d

    return-object p2

    :catch_19
    move-exception v1

    .line 10
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 13
    :cond_1d
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    return-object p2

    :cond_24
    const-string v1, "?"

    .line 16
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_31

    .line 17
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_31
    const-string v1, "_documents/"

    .line 19
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0xb

    if-eqz v1, :cond_52

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDocumentFullPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_234

    :cond_52
    const-string v1, "_documents"

    .line 21
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v4, 0xa

    if-eqz v1, :cond_73

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDocumentFullPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_234

    :cond_73
    const-string v1, "_doc/"

    .line 23
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v5, 0x5

    if-eqz v1, :cond_95

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainAppDocPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_234

    :cond_95
    const-string v1, "_doc"

    .line 25
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v6, 0x4

    if-eqz v1, :cond_b7

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainAppDocPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_234

    :cond_b7
    const-string v1, "_downloads/"

    .line 27
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDownloadFullPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_234

    :cond_d6
    const-string v1, "_downloads"

    .line 29
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDownloadFullPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_234

    :cond_f5
    const-string v1, "_www/"

    .line 31
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "/"

    if-eqz v1, :cond_140

    .line 32
    iget-byte p1, p0, Lio/dcloud/g/a/e;->R:B

    if-ne p1, v0, :cond_127

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sBaseResAppsPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->APP_WWW_FS_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_234

    :cond_127
    if-nez p1, :cond_234

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/dcloud/g/a/e;->g0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_234

    :cond_140
    const-string v1, "_www"

    .line 37
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_189

    .line 38
    iget-byte p1, p0, Lio/dcloud/g/a/e;->R:B

    if-ne p1, v0, :cond_170

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sBaseResAppsPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->APP_WWW_FS_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_234

    :cond_170
    if-nez p1, :cond_234

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/dcloud/g/a/e;->g0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_234

    :cond_189
    const-string v1, "file://"

    .line 43
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x7

    if-eqz v4, :cond_198

    .line 44
    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_234

    :cond_198
    const-string v4, "content://"

    .line 46
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a2

    goto/16 :goto_234

    .line 48
    :cond_1a2
    sget-object v4, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1ab

    return-object p2

    :cond_1ab
    const-string v4, "http://localhost"

    .line 50
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c9

    const/16 p1, 0x10

    .line 51
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    add-int/2addr p2, v0

    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lio/dcloud/g/a/e;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_234

    .line 56
    :cond_1c9
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d4

    if-nez p1, :cond_1d2

    goto :goto_1d4

    :cond_1d2
    const/4 v0, 0x0

    goto :goto_1de

    .line 58
    :cond_1d4
    :goto_1d4
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1de

    .line 59
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1de
    :goto_1de
    if-eqz p1, :cond_1f9

    const-string v3, "file:///android_asset/"

    .line 63
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1ef

    const/16 v1, 0x16

    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1f9

    .line 65
    :cond_1ef
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f9

    .line 66
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1f9
    :goto_1f9
    if-eqz p1, :cond_202

    if-nez v0, :cond_202

    .line 70
    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->standardizedURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_234

    :cond_202
    if-eqz v0, :cond_234

    const-string v0, "/www/"

    .line 73
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainAppDataPath()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_221

    .line 74
    invoke-static {p1, v1}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_221

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_221

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 77
    :cond_221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/dcloud/g/a/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_234
    :goto_234
    return-object p2
.end method

.method public convert2LocalFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/dcloud/g/a/e;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-byte p2, p0, Lio/dcloud/g/a/e;->R:B

    const/4 v0, 0x1

    if-eq p2, v0, :cond_11

    sget-boolean v1, Lio/dcloud/common/adapter/util/DeviceInfo;->isPrivateDirectory:Z

    if-eqz v1, :cond_e

    goto :goto_11

    :cond_e
    if-nez p2, :cond_40

    return-object p1

    :cond_11
    :goto_11
    if-ne p2, v0, :cond_18

    .line 5
    invoke-static {p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    goto :goto_1c

    .line 7
    :cond_18
    invoke-static {p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    :goto_1c
    if-eqz p2, :cond_40

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainAppTempPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    :try_start_35
    invoke-static {p2, p1}, Lio/dcloud/common/adapter/io/DHFile;->writeFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    .line 13
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception p2

    .line 15
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_40
    :goto_40
    return-object p1
.end method

.method public convert2RelPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainAppDataPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainAppDocPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 3
    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sDocumentFullPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 4
    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sDownloadFullPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 6
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainAppDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_135

    const-string v5, "_www"

    if-eqz v4, :cond_3f

    .line 7
    :try_start_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_139

    .line 8
    :cond_3f
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainAppDataPath()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v0, -0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_139

    .line 12
    :cond_69
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainAppDocPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_71} :catch_135

    const-string v4, "_doc"

    if-eqz v0, :cond_8c

    .line 13
    :try_start_75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_139

    .line 14
    :cond_8c
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainAppDocPath()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_139

    .line 18
    :cond_b1
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDocumentFullPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_b7} :catch_135

    const-string v1, "_documents"

    if-eqz v0, :cond_d1

    .line 19
    :try_start_bb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_139

    .line 20
    :cond_d1
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDocumentFullPath:Ljava/lang/String;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_139

    .line 24
    :cond_f3
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDownloadFullPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_f9} :catch_135

    const-string v1, "_downloads"

    if-eqz v0, :cond_113

    .line 25
    :try_start_fd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_139

    .line 26
    :cond_113
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDownloadFullPath:Ljava/lang/String;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_139

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_134} :catch_135

    goto :goto_139

    :catch_135
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_139
    :goto_139
    return-object p1
.end method

.method public convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p2

    .line 2
    :cond_7
    iget-boolean v0, p0, Lio/dcloud/g/a/e;->Q:Z

    const-string v1, "http://"

    if-eqz v0, :cond_26

    .line 3
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_159

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/dcloud/g/a/e;->o0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_159

    :cond_26
    const-string v0, "file://"

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_159

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_159

    const-string v1, "https://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_159

    .line 9
    :try_start_3c
    invoke-static {p2}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/dcloud/g/a/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_57} :catch_58

    return-object p1

    :catch_58
    move-exception v1

    .line 13
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 15
    :cond_5c
    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_159

    :cond_75
    const-string v1, "/"

    .line 19
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_84

    .line 21
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_85

    :cond_84
    const/4 v2, 0x0

    :goto_85
    const-string v1, "_www"

    .line 23
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x4

    if-eqz v1, :cond_ab

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainWebviewBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/g/a/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_159

    :cond_ab
    const-string v1, "_documents"

    .line 25
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v5, 0xa

    if-eqz v1, :cond_d3

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDocumentFullPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/g/a/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_159

    :cond_d3
    const-string v1, "_doc"

    .line 27
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fa

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainAppDocPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/g/a/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_159

    :cond_fa
    const-string v1, "_downloads"

    .line 29
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDownloadFullPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/g/a/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_159

    :cond_11f
    if-eqz p1, :cond_128

    if-nez v2, :cond_128

    .line 32
    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->standardizedURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_159

    .line 34
    :cond_128
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainWebviewBaseUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/www/"

    if-eqz p1, :cond_146

    .line 36
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_146

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_146

    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 39
    :cond_146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/dcloud/g/a/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_159
    :goto_159
    return-object p2
.end method

.method d(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->r1:Lorg/json/JSONObject;

    if-nez v0, :cond_7

    .line 2
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->n()V

    .line 4
    :cond_7
    iget-object v0, p0, Lio/dcloud/g/a/e;->r1:Lorg/json/JSONObject;

    if-eqz v0, :cond_1c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 5
    iget-object v0, p0, Lio/dcloud/g/a/e;->r1:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lio/dcloud/common/util/PdrUtil;->getSitemapParameters(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method public deleteAppTemp()V
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/g/a/e$e;

    invoke-direct {v1, p0}, Lio/dcloud/g/a/e$e;-><init>(Lio/dcloud/g/a/e;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public diyStatusBarState()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/f;->k:Lio/dcloud/common/util/AppStatusBarManager;

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lio/dcloud/g/a/f;->isFullScreen()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/util/AppStatusBarManager;->setFullScreen(Landroid/app/Activity;Z)V

    .line 5
    iget-object v0, p0, Lio/dcloud/g/a/f;->k:Lio/dcloud/common/util/AppStatusBarManager;

    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v2, p0, Lio/dcloud/g/a/e;->W0:Z

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/util/AppStatusBarManager;->checkImmersedStatusBar(Landroid/content/Context;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->isImmersive:Z

    .line 8
    iget-object v2, p0, Lio/dcloud/g/a/f;->k:Lio/dcloud/common/util/AppStatusBarManager;

    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lio/dcloud/common/util/AppStatusBarManager;->setImmersive(Landroid/app/Activity;Z)V

    goto :goto_37

    .line 10
    :cond_2c
    sput-boolean v1, Lio/dcloud/common/util/BaseInfo;->isImmersive:Z

    .line 11
    iget-object v0, p0, Lio/dcloud/g/a/f;->k:Lio/dcloud/common/util/AppStatusBarManager;

    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lio/dcloud/common/util/AppStatusBarManager;->setImmersive(Landroid/app/Activity;Z)V

    .line 13
    :goto_37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_70

    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 14
    iget-object v0, p0, Lio/dcloud/g/a/e;->S0:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 16
    iget-object v0, p0, Lio/dcloud/g/a/e;->S0:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 17
    iget-object v0, p0, Lio/dcloud/g/a/e;->S0:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v1

    .line 19
    :cond_5b
    iget-object v0, p0, Lio/dcloud/g/a/f;->k:Lio/dcloud/common/util/AppStatusBarManager;

    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lio/dcloud/common/util/AppStatusBarManager;->setStatusBarColor(Landroid/app/Activity;I)V

    goto :goto_70

    .line 21
    :cond_65
    iget-object v0, p0, Lio/dcloud/g/a/f;->k:Lio/dcloud/common/util/AppStatusBarManager;

    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lio/dcloud/common/util/BaseInfo;->mDeStatusBarBackground:I

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/util/AppStatusBarManager;->setStatusBarColor(Landroid/app/Activity;I)V

    .line 24
    :cond_70
    :goto_70
    iget-object v0, p0, Lio/dcloud/g/a/f;->k:Lio/dcloud/common/util/AppStatusBarManager;

    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/g/a/e;->V0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/util/AppStatusBarManager;->setStatusBarMode(Landroid/app/Activity;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lio/dcloud/g/a/f;->k:Lio/dcloud/common/util/AppStatusBarManager;

    invoke-virtual {v0}, Lio/dcloud/common/util/AppStatusBarManager;->isFullScreenOrImmersive()Z

    move-result v0

    if-eqz v0, :cond_87

    const/4 v0, 0x2

    .line 26
    invoke-virtual {p0, v0}, Lio/dcloud/g/a/f;->updateScreenInfo(I)V

    :cond_87
    return-void
.end method

.method f(Ljava/lang/String;)Z
    .registers 4

    .line 17
    iget-boolean v0, p0, Lio/dcloud/g/a/e;->r:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lio/dcloud/g/a/e;->t:Z

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 18
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Webapp start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    if-eqz v0, :cond_36

    instance-of v1, v0, Lio/dcloud/WebAppActivity;

    if-eqz v1, :cond_36

    .line 20
    check-cast v0, Lio/dcloud/WebAppActivity;

    iget-object v1, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/dcloud/WebAppActivity;->onAppStart(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    check-cast v0, Lio/dcloud/WebAppActivity;

    invoke-virtual {v0, p0}, Lio/dcloud/WebAppActivity;->onAppStart(Lio/dcloud/common/DHInterface/IApp;)V

    .line 23
    :cond_36
    iget-object v0, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppStatus;->setAppStatus(Ljava/lang/String;I)V

    .line 24
    sget v0, Lio/dcloud/common/util/BaseInfo;->s_Runing_App_Count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lio/dcloud/common/util/BaseInfo;->s_Runing_App_Count:I

    .line 25
    iput-boolean v1, p0, Lio/dcloud/g/a/e;->s:Z

    .line 26
    iget-boolean v0, p0, Lio/dcloud/g/a/e;->r:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lio/dcloud/g/a/e;->t:Z

    .line 27
    invoke-virtual {p0, p1}, Lio/dcloud/g/a/e;->setRuntimeArgs(Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 32
    invoke-direct {p0, p1}, Lio/dcloud/g/a/e;->a(I)Z

    move-result p1

    return p1
.end method

.method public forceShortCut()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->u1:Ljava/lang/String;

    return-object v0
.end method

.method public g()V
    .registers 4

    .line 6
    iget-object v0, p0, Lio/dcloud/g/a/e;->x0:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    iput-object v1, p0, Lio/dcloud/g/a/e;->x0:Ljava/util/ArrayList;

    .line 10
    :cond_a
    iget-object v0, p0, Lio/dcloud/g/a/e;->y0:Ljava/util/HashMap;

    if-eqz v0, :cond_13

    .line 11
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 12
    iput-object v1, p0, Lio/dcloud/g/a/e;->y0:Ljava/util/HashMap;

    .line 14
    :cond_13
    iget-object v0, p0, Lio/dcloud/g/a/e;->p1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    iget-object v2, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-interface {v0, v2}, Lio/dcloud/common/DHInterface/IConfusionMgr;->removeData(Ljava/lang/String;)V

    .line 15
    iput-object v1, p0, Lio/dcloud/g/a/e;->u:Lio/dcloud/g/a/a;

    .line 16
    iput-object v1, p0, Lio/dcloud/g/a/e;->p:Lio/dcloud/common/util/BaseInfo$BaseAppInfo;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lio/dcloud/g/a/e;->b1:Z

    return-void
.end method

.method g(Ljava/lang/String;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppStatus;->setAppStatus(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {p0, p1}, Lio/dcloud/g/a/e;->setRuntimeArgs(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 3
    invoke-virtual {p0, p1}, Lio/dcloud/g/a/e;->setStatus(B)V

    .line 4
    iget-object v0, p0, Lio/dcloud/g/a/e;->u:Lio/dcloud/g/a/a;

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, p1, v3

    iget-object v3, p0, Lio/dcloud/g/a/e;->n0:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lio/dcloud/g/a/e;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, p1, v4

    iget-boolean v3, p0, Lio/dcloud/g/a/e;->O0:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p1, v1

    const/16 v1, 0x29

    invoke-virtual {v0, v2, v1, p1}, Lio/dcloud/g/a/a;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_31

    goto :goto_39

    .line 5
    :cond_31
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    :goto_39
    return v4
.end method

.method public getConfusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->p1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    return-object v0
.end method

.method public getDirectPage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->i1:Ljava/lang/String;

    return-object v0
.end method

.method public getIAppStatusListener()Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->K0:Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;

    return-object v0
.end method

.method public getOriginalDirectPage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->j1:Ljava/lang/String;

    return-object v0
.end method

.method public getPathByType(B)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_7

    .line 1
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainAppDataPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 3
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainAppDocPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f
    const/4 v0, 0x2

    if-ne p1, v0, :cond_15

    .line 5
    sget-object p1, Lio/dcloud/common/util/BaseInfo;->sDocumentFullPath:Ljava/lang/String;

    return-object p1

    :cond_15
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1b

    .line 7
    sget-object p1, Lio/dcloud/common/util/BaseInfo;->sDownloadFullPath:Ljava/lang/String;

    return-object p1

    :cond_1b
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3c

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sBaseResAppsPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->APP_WWW_FS_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3c
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPopGesture()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->N0:Ljava/lang/String;

    return-object v0
.end method

.method public getQuitModel()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/g/a/e;->o1:I

    return v0
.end method

.method public isOnAppRunningMode()Z
    .registers 3

    .line 1
    iget-byte v0, p0, Lio/dcloud/g/a/e;->R:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public k()F
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    const-string v1, "Device"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/core/permission/PermissionControler;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 2
    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/NetworkTypeUtil;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_22

    const/high16 v0, 0x447a0000    # 1000.0f

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method l()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->g0:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "/"

    if-nez v0, :cond_12

    iget-object v0, p0, Lio/dcloud/g/a/e;->g0:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/adapter/util/DeviceInfo;->startsWithSdcard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 2
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->REAL_PRIVATE_WWW_DIR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/g/a/e;->setAppDataPath(Ljava/lang/String;)V

    .line 5
    :cond_30
    iget-object v0, p0, Lio/dcloud/g/a/e;->v1:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lio/dcloud/g/a/e;->v1:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/adapter/util/DeviceInfo;->startsWithSdcard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 7
    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sBaseFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->REAL_PRIVATE_DOC_DIR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/g/a/e;->setAppDocPath(Ljava/lang/String;)V

    .line 9
    :cond_5e
    iget-object v0, p0, Lio/dcloud/g/a/e;->w1:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, p0, Lio/dcloud/g/a/e;->w1:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/adapter/util/DeviceInfo;->startsWithSdcard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 10
    :cond_6e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->APP_WEB_CHACHE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/g/a/e;->w1:Ljava/lang/String;

    :cond_8b
    return-void
.end method

.method public manifestBeParsed()Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/dcloud/g/a/e;->r:Z

    if-nez v0, :cond_d

    sget-object v0, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;->WEBVIEW:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sRuntimeMode:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method n()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/dcloud/g/a/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 6
    :try_start_11
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 7
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lio/dcloud/g/a/e;->r1:Lorg/json/JSONObject;

    const-string v0, "version"

    .line 9
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/g/a/e;->y:Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_29} :catch_2a

    goto :goto_5a

    :catch_2a
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5a

    .line 14
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data/sitemap/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->getFileContent(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 16
    iget-object v2, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-direct {p0, v2}, Lio/dcloud/g/a/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/dcloud/common/adapter/io/DHFile;->writeFile([BILjava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->n()V

    :cond_5a
    :goto_5a
    return-void
.end method

.method public needRefreshApp()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/g/a/e;->f1:Z

    return v0
.end method

.method public needReload()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/g/a/e;->e1:Z

    return v0
.end method

.method public o()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->r()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lio/dcloud/g/a/e;->r:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lio/dcloud/g/a/e;->L:Z

    goto :goto_e

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public obtainAdaptationJs()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->P:Ljava/lang/String;

    if-nez v0, :cond_2e

    iget-object v0, p0, Lio/dcloud/g/a/e;->G:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2
    iget-object v0, p0, Lio/dcloud/g/a/e;->G:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/dcloud/g/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainRunningAppMode()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x0

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x2

    :goto_1c
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->getFileContent(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lio/dcloud/g/a/e;->P:Ljava/lang/String;

    goto :goto_2e

    :cond_2a
    const-string v0, ""

    .line 6
    iput-object v0, p0, Lio/dcloud/g/a/e;->P:Ljava/lang/String;

    .line 9
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lio/dcloud/g/a/e;->P:Ljava/lang/String;

    return-object v0
.end method

.method public obtainAppDataPath()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->g0:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_18

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/www/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_18
    return-object v0
.end method

.method public obtainAppDocPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->v1:Ljava/lang/String;

    return-object v0
.end method

.method public obtainAppId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    return-object v0
.end method

.method public obtainAppInfo()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "appid"

    .line 3
    :try_start_7
    iget-object v2, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_c} :catch_22

    const-string v1, "versionName"

    .line 4
    :try_start_e
    iget-object v2, p0, Lio/dcloud/g/a/e;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_13} :catch_22

    const-string v1, "name"

    .line 5
    :try_start_15
    iget-object v2, p0, Lio/dcloud/g/a/e;->p0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1a} :catch_22

    const-string v1, "versionCode"

    .line 6
    :try_start_1c
    iget-object v2, p0, Lio/dcloud/g/a/e;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception v1

    .line 8
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 10
    :goto_26
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public obtainAppLog()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sBaseFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/log/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public obtainAppName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->p0:Ljava/lang/String;

    return-object v0
.end method

.method public obtainAppStatus()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lio/dcloud/g/a/e;->q:B

    return v0
.end method

.method public obtainAppTempPath()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sBaseFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public obtainAppVersionName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->w:Ljava/lang/String;

    return-object v0
.end method

.method public obtainAppWebCachePath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->w1:Ljava/lang/String;

    return-object v0
.end method

.method public obtainAuthority(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sGlobalAuthority:Ljava/lang/String;

    if-eqz v0, :cond_d

    const-string v1, "*"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_44

    .line 2
    :cond_d
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->r()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 3
    iget-object v0, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/dcloud/g/a/e;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    const-string v0, "undetermined"

    .line 5
    iget-object v1, p0, Lio/dcloud/g/a/e;->E0:Lorg/json/JSONObject;

    if-eqz v1, :cond_46

    .line 6
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 7
    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 10
    iget-object p1, p0, Lio/dcloud/g/a/e;->E0:Lorg/json/JSONObject;

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    :cond_44
    :goto_44
    const-string v0, "authorized"

    :cond_46
    :goto_46
    return-object v0
.end method

.method public obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "adid"

    .line 1
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 2
    iget-object p1, p0, Lio/dcloud/g/a/e;->I0:Ljava/lang/String;

    :goto_b
    move-object v1, p1

    goto/16 :goto_2e3

    :cond_e
    const-string v0, "launchError"

    .line 3
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4
    iget-object p1, p0, Lio/dcloud/g/a/e;->H0:Ljava/lang/String;

    goto :goto_b

    :cond_19
    const-string v0, "autoclose"

    .line 5
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 6
    iget-boolean p1, p0, Lio/dcloud/g/a/e;->U:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :cond_28
    const-string v0, "timeout"

    .line 7
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 8
    iget p1, p0, Lio/dcloud/g/a/e;->W:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :cond_37
    const-string v0, "delay"

    .line 9
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 10
    iget p1, p0, Lio/dcloud/g/a/e;->X:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :cond_46
    const-string v0, "splashscreen"

    .line 11
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 12
    iget-boolean p1, p0, Lio/dcloud/g/a/e;->S:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :cond_55
    const-string v0, "waiting"

    .line 13
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 14
    iget-boolean p1, p0, Lio/dcloud/g/a/e;->T:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :cond_64
    const-string v0, "h5plus"

    .line 15
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 16
    iget-boolean p1, p0, Lio/dcloud/g/a/e;->N:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :cond_73
    const-string v0, "funSetUA"

    .line 17
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 18
    iget-boolean p1, p0, Lio/dcloud/g/a/e;->O:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :cond_82
    const-string v0, "useragent"

    .line 19
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 20
    iget-object p1, p0, Lio/dcloud/g/a/e;->H:Ljava/lang/String;

    goto/16 :goto_b

    :cond_8e
    const-string v0, "error"

    .line 21
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 22
    iget-object p1, p0, Lio/dcloud/g/a/e;->m0:Ljava/lang/String;

    goto/16 :goto_b

    :cond_9a
    const-string v0, "fullscreen"

    .line 23
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 24
    iget-boolean p1, p0, Lio/dcloud/g/a/f;->h:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_b

    :cond_aa
    const-string v0, "untrustedca"

    .line 25
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 26
    iget-object p1, p0, Lio/dcloud/g/a/e;->l0:Ljava/lang/String;

    goto/16 :goto_b

    :cond_b6
    const-string v0, "loadedTime"

    .line 27
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 28
    iget-object p1, p0, Lio/dcloud/g/a/e;->L0:Ljava/lang/String;

    goto/16 :goto_b

    :cond_c2
    const-string v0, "ramcachemode"

    .line 29
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 30
    iget-object p1, p0, Lio/dcloud/g/a/e;->M0:Ljava/lang/String;

    goto/16 :goto_b

    :cond_ce
    const-string v0, "jserror"

    .line 31
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_eb

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lio/dcloud/g/a/e;->J:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_b

    :cond_eb
    const-string v0, "crash"

    .line 33
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lio/dcloud/g/a/e;->I:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_b

    :cond_106
    const-string v0, "use_encryption"

    .line 35
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lio/dcloud/g/a/e;->P0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_b

    :cond_121
    const-string v0, "w2a_delay"

    .line 37
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 38
    iget p1, p0, Lio/dcloud/g/a/e;->Y:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_b

    :cond_131
    const-string v0, "w2a_autoclose"

    .line 39
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 40
    iget-boolean p1, p0, Lio/dcloud/g/a/e;->V:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_b

    :cond_141
    const-string v0, "wap2app_running_mode"

    .line 41
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lio/dcloud/g/a/e;->K:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_b

    :cond_15c
    const-string v0, "injection"

    .line 43
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_177

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lio/dcloud/g/a/e;->d1:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_b

    :cond_177
    const-string v0, "event"

    .line 45
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_183

    .line 46
    iget-object p1, p0, Lio/dcloud/g/a/e;->Z:Ljava/lang/String;

    goto/16 :goto_b

    :cond_183
    const-string v0, "target"

    .line 47
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18f

    .line 48
    iget-object p1, p0, Lio/dcloud/g/a/e;->a0:Ljava/lang/String;

    goto/16 :goto_b

    :cond_18f
    const-string v0, "L_plusrequire"

    .line 49
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19b

    .line 50
    iget-object p1, p0, Lio/dcloud/g/a/e;->b0:Ljava/lang/String;

    goto/16 :goto_b

    :cond_19b
    const-string v0, "S_pluserquire"

    .line 51
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a7

    .line 52
    iget-object p1, p0, Lio/dcloud/g/a/e;->c0:Ljava/lang/String;

    goto/16 :goto_b

    :cond_1a7
    const-string v0, "L_geolocation"

    .line 53
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b3

    .line 54
    iget-object p1, p0, Lio/dcloud/g/a/e;->d0:Ljava/lang/String;

    goto/16 :goto_b

    :cond_1b3
    const-string v0, "S_geolocation"

    .line 55
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1bf

    .line 56
    iget-object p1, p0, Lio/dcloud/g/a/e;->e0:Ljava/lang/String;

    goto/16 :goto_b

    :cond_1bf
    const-string v0, "StatusBarBackground"

    .line 57
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1da

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/dcloud/g/a/e;->S0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_b

    :cond_1da
    const-string v0, "status_bar_mode"

    .line 59
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e6

    .line 60
    iget-object p1, p0, Lio/dcloud/g/a/e;->V0:Ljava/lang/String;

    goto/16 :goto_b

    :cond_1e6
    const-string v0, "immersed"

    .line 61
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_201

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lio/dcloud/g/a/e;->W0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_b

    :cond_201
    const-string v0, "launch_is_statusbar"

    .line 63
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_211

    .line 64
    iget-boolean p1, p0, Lio/dcloud/g/a/e;->X0:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_b

    :cond_211
    const-string v0, "launch_statusbar_color"

    .line 65
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21d

    .line 66
    iget-object p1, p0, Lio/dcloud/g/a/e;->Z0:Ljava/lang/String;

    goto/16 :goto_b

    :cond_21d
    const-string v0, "second_is_statusbar"

    .line 67
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22d

    .line 68
    iget-boolean p1, p0, Lio/dcloud/g/a/e;->Y0:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_b

    :cond_22d
    const-string v0, "second_statusbar_color"

    .line 69
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_239

    .line 70
    iget-object p1, p0, Lio/dcloud/g/a/e;->a1:Ljava/lang/String;

    goto/16 :goto_b

    :cond_239
    const-string v0, "coordType"

    .line 71
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_245

    .line 72
    iget-object p1, p0, Lio/dcloud/g/a/e;->k1:Ljava/lang/String;

    goto/16 :goto_b

    :cond_245
    const-string v0, "uniapp_weex_js_service"

    .line 73
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_255

    .line 74
    iget-boolean p1, p0, Lio/dcloud/g/a/e;->b1:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_b

    :cond_255
    const-string v0, "appUniVersion"

    .line 75
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_261

    .line 76
    iget-object p1, p0, Lio/dcloud/g/a/e;->q0:Ljava/lang/String;

    goto/16 :goto_b

    :cond_261
    const-string v0, "control"

    .line 77
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_275

    .line 78
    iget-boolean p1, p0, Lio/dcloud/g/a/e;->n1:Z

    if-eqz p1, :cond_271

    .line 79
    iget-object p1, p0, Lio/dcloud/g/a/e;->v0:Ljava/lang/String;

    goto/16 :goto_b

    :cond_271
    const-string p1, "h5+"

    goto/16 :goto_b

    :cond_275
    const-string v0, "uni_nvue_data"

    .line 83
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_287

    .line 84
    iget-object p1, p0, Lio/dcloud/g/a/e;->r0:Lorg/json/JSONObject;

    if-nez p1, :cond_282

    goto :goto_2e3

    :cond_282
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2e3

    :cond_287
    const-string v0, "concatenate"

    .line 85
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a1

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lio/dcloud/g/a/e;->M:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2e3

    :cond_2a1
    const-string v0, "nvueLaunchMode"

    .line 89
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ac

    .line 90
    iget-object v1, p0, Lio/dcloud/g/a/e;->w0:Ljava/lang/String;

    goto :goto_2e3

    :cond_2ac
    const-string v0, "debugRefresh"

    .line 91
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b7

    .line 92
    iget-object v1, p0, Lio/dcloud/g/a/e;->m1:Ljava/lang/String;

    goto :goto_2e3

    :cond_2b7
    const-string v0, "uni_restart_to_direct"

    .line 93
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c6

    .line 94
    iget-boolean p1, p0, Lio/dcloud/g/a/e;->l1:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e3

    :cond_2c6
    const-string v0, "isUniapp"

    .line 95
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d5

    .line 96
    iget-boolean p1, p0, Lio/dcloud/g/a/e;->n1:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e3

    :cond_2d5
    const-string v0, "use_v3_encryption"

    .line 97
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2e3

    .line 98
    iget-boolean p1, p0, Lio/dcloud/g/a/e;->Q0:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    :cond_2e3
    :goto_2e3
    return-object v1
.end method

.method public obtainLaunchPageStateListener()Lio/dcloud/common/DHInterface/IWebviewStateListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->q1:Lio/dcloud/common/DHInterface/IWebviewStateListener;

    return-object v0
.end method

.method public obtainMgrData(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->u:Lio/dcloud/g/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lio/dcloud/g/a/a;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public obtainOriginalAppId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->v:Ljava/lang/String;

    return-object v0
.end method

.method public obtainResInStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0, p1}, Lio/dcloud/g/a/e;->obtainResInStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public obtainResInStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/dcloud/g/a/e;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-byte p2, p0, Lio/dcloud/g/a/e;->R:B

    const-string v0, "WebApp.obtainResInStream"

    const/4 v1, 0x1

    if-ne p2, v1, :cond_24

    .line 3
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 5
    :try_start_11
    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_1a

    goto :goto_34

    :catch_1a
    move-exception p1

    .line 7
    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_33

    .line 10
    :cond_1f
    invoke-static {p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_34

    :cond_24
    if-nez p2, :cond_33

    .line 14
    :try_start_26
    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2e} :catch_2f

    goto :goto_34

    :catch_2f
    move-exception p1

    .line 16
    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_33
    :goto_33
    const/4 p1, 0x0

    :goto_34
    return-object p1
.end method

.method public obtainRunningAppMode()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lio/dcloud/g/a/e;->R:B

    return v0
.end method

.method public obtainRuntimeArgs(Z)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_9

    .line 1
    iget-object p1, p0, Lio/dcloud/g/a/e;->A:Ljava/lang/String;

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_9
    iget-object p1, p0, Lio/dcloud/g/a/e;->A:Ljava/lang/String;

    return-object p1
.end method

.method public obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/f;->k:Lio/dcloud/common/util/AppStatusBarManager;

    return-object v0
.end method

.method public obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/g/a/e$f;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_2e

    const/4 p1, 0x0

    return-object p1

    .line 20
    :pswitch_d
    iget-object p1, p0, Lio/dcloud/g/a/e;->A0:Lorg/json/JSONObject;

    return-object p1

    .line 21
    :pswitch_10
    iget-object p1, p0, Lio/dcloud/g/a/e;->G0:Lorg/json/JSONObject;

    return-object p1

    .line 22
    :pswitch_13
    iget-object p1, p0, Lio/dcloud/g/a/e;->u:Lio/dcloud/g/a/a;

    iget-object p1, p1, Lio/dcloud/g/a/a;->f:Lorg/json/JSONObject;

    return-object p1

    .line 23
    :pswitch_18
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->n()V

    .line 24
    iget-object p1, p0, Lio/dcloud/g/a/e;->r1:Lorg/json/JSONObject;

    return-object p1

    .line 25
    :pswitch_1e
    iget-object p1, p0, Lio/dcloud/g/a/e;->F0:Lorg/json/JSONObject;

    return-object p1

    .line 26
    :pswitch_21
    iget-object p1, p0, Lio/dcloud/g/a/e;->D0:Lorg/json/JSONObject;

    return-object p1

    .line 27
    :pswitch_24
    iget-object p1, p0, Lio/dcloud/g/a/e;->C0:Lorg/json/JSONObject;

    return-object p1

    .line 28
    :pswitch_27
    iget-object p1, p0, Lio/dcloud/g/a/e;->B0:Lorg/json/JSONObject;

    return-object p1

    .line 29
    :pswitch_2a
    iget-object p1, p0, Lio/dcloud/g/a/e;->z0:Lorg/json/JSONObject;

    return-object p1

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_18
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public obtainVersionSitemap()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->y:Ljava/lang/String;

    return-object v0
.end method

.method public obtainWebAppIntent()Landroid/content/Intent;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->J0:Landroid/content/Intent;

    return-object v0
.end method

.method public obtainWebviewBaseUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-byte v0, p0, Lio/dcloud/g/a/e;->R:B

    invoke-direct {p0, v0}, Lio/dcloud/g/a/e;->a(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 5

    .line 1
    iget-byte v0, p0, Lio/dcloud/g/a/e;->q:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/dcloud/g/a/e;->callSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_19

    :cond_a
    const/4 p2, 0x1

    if-ne v0, p2, :cond_18

    .line 3
    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-eq p1, p2, :cond_15

    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, p2, :cond_18

    .line 4
    :cond_15
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->t()V

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method public onSplashClosed()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->diyStatusBarState()V

    return-void
.end method

.method public p()Z
    .registers 5

    .line 1
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->uniVersionV3:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string v0, "uni-jsframework-dev.js"

    .line 4
    sget-boolean v1, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-eqz v1, :cond_1b

    invoke-static {v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_1d

    :cond_1b
    const-string v0, "uni-jsframework.js"

    .line 9
    :goto_1d
    :try_start_1d
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Lorg/json/JSONObject;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "version"

    .line 12
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/BaseInfo;->uniVersionV3:Ljava/lang/String;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_49} :catch_4a
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_49} :catch_4a

    goto :goto_4f

    :catch_4a
    const-string v0, ""

    goto :goto_4f

    .line 15
    :cond_4d
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->uniVersionV3:Ljava/lang/String;

    .line 17
    :goto_4f
    iget-object v1, p0, Lio/dcloud/g/a/e;->s0:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_65

    iget-object v1, p0, Lio/dcloud/g/a/e;->s0:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_65

    iget-boolean v1, p0, Lio/dcloud/g/a/e;->t0:Z

    if-nez v1, :cond_65

    return v2

    .line 20
    :cond_65
    iget-boolean v1, p0, Lio/dcloud/g/a/e;->u0:Z

    if-nez v1, :cond_8f

    iget-boolean v1, p0, Lio/dcloud/g/a/e;->r:Z

    if-eqz v1, :cond_8f

    iget-object v1, p0, Lio/dcloud/g/a/e;->q0:Ljava/lang/String;

    const-string v3, "-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8f

    iget-object v1, p0, Lio/dcloud/g/a/e;->q0:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8f

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    iget-boolean v0, p0, Lio/dcloud/g/a/e;->n1:Z

    if-eqz v0, :cond_8f

    const/4 v0, 0x1

    return v0

    :cond_8f
    return v2
.end method

.method public q()Z
    .registers 3

    .line 1
    iget-byte v0, p0, Lio/dcloud/g/a/e;->q:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public r()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3
    iget-boolean v1, p0, Lio/dcloud/g/a/e;->A1:Z

    const-string v2, "is_stream_app"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lio/dcloud/g/a/e;->A1:Z

    .line 6
    :cond_11
    iget-boolean v0, p0, Lio/dcloud/g/a/e;->A1:Z

    return v0
.end method

.method public registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->y0:Ljava/util/HashMap;

    if-nez v0, :cond_c

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lio/dcloud/g/a/e;->y0:Ljava/util/HashMap;

    .line 4
    :cond_c
    iget-object v0, p0, Lio/dcloud/g/a/e;->y0:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_20

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p0, Lio/dcloud/g/a/e;->y0:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public s()Z
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onStop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appmgr"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/g/a/e;->K0:Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;->onStop()Z

    move-result v0

    goto :goto_22

    :cond_21
    const/4 v0, 0x1

    :goto_22
    return v0
.end method

.method public setAppDataPath(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-byte v0, p0, Lio/dcloud/g/a/e;->R:B

    const-string v1, "/"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_30

    .line 2
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sBaseResAppsPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3
    iput-object p1, p0, Lio/dcloud/g/a/e;->g0:Ljava/lang/String;

    goto :goto_5f

    .line 5
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sBaseResAppsPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->APP_WWW_FS_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/g/a/e;->g0:Ljava/lang/String;

    goto :goto_5f

    .line 8
    :cond_30
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 9
    iput-object p1, p0, Lio/dcloud/g/a/e;->g0:Ljava/lang/String;

    goto :goto_5f

    .line 10
    :cond_3e
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sCacheRootDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sCacheRootDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/g/a/e;->g0:Ljava/lang/String;

    goto :goto_5f

    .line 13
    :cond_5d
    iput-object p1, p0, Lio/dcloud/g/a/e;->g0:Ljava/lang/String;

    :goto_5f
    return-void
.end method

.method public setAppDocPath(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->appendByDeviceRootDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/g/a/e;->v1:Ljava/lang/String;

    return-void
.end method

.method public setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "autoclose"

    .line 1
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 2
    iget-boolean p1, p0, Lio/dcloud/g/a/e;->U:Z

    invoke-static {p2, p1, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/g/a/e;->U:Z

    goto/16 :goto_1bd

    :cond_13
    const-string v0, "commit"

    .line 3
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4
    invoke-direct {p0}, Lio/dcloud/g/a/e;->a()V

    goto/16 :goto_1bd

    :cond_20
    const-string v0, "timeout"

    .line 5
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 6
    iget p1, p0, Lio/dcloud/g/a/e;->W:I

    invoke-static {p2, p1}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lio/dcloud/g/a/e;->W:I

    goto/16 :goto_1bd

    :cond_32
    const-string v0, "delay"

    .line 7
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 8
    iget p1, p0, Lio/dcloud/g/a/e;->X:I

    invoke-static {p2, p1}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lio/dcloud/g/a/e;->X:I

    goto/16 :goto_1bd

    :cond_44
    const-string v0, "splashscreen"

    .line 9
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 10
    iget-boolean p1, p0, Lio/dcloud/g/a/e;->S:Z

    invoke-static {p2, p1, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/g/a/e;->S:Z

    goto/16 :goto_1bd

    :cond_56
    const-string v0, "waiting"

    .line 11
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 12
    iget-boolean p1, p0, Lio/dcloud/g/a/e;->T:Z

    invoke-static {p2, p1, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/g/a/e;->T:Z

    goto/16 :goto_1bd

    :cond_68
    const-string v0, "name"

    .line 13
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 14
    iput-object p2, p0, Lio/dcloud/g/a/e;->p0:Ljava/lang/String;

    goto/16 :goto_1bd

    .line 15
    :cond_74
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 16
    iput-object p2, p0, Lio/dcloud/g/a/e;->C:Ljava/lang/String;

    goto/16 :goto_1bd

    :cond_7e
    const-string v2, "email"

    .line 17
    invoke-static {p1, v2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 18
    iput-object p2, p0, Lio/dcloud/g/a/e;->D:Ljava/lang/String;

    goto/16 :goto_1bd

    :cond_8a
    const-string v2, "url"

    .line 19
    invoke-static {p1, v2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 20
    iput-object p2, p0, Lio/dcloud/g/a/e;->F:Ljava/lang/String;

    goto/16 :goto_1bd

    .line 21
    :cond_96
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 22
    iput-object p2, p0, Lio/dcloud/g/a/e;->w:Ljava/lang/String;

    goto/16 :goto_1bd

    :cond_a0
    const-string v0, "code"

    .line 23
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 24
    iput-object p2, p0, Lio/dcloud/g/a/e;->x:Ljava/lang/String;

    goto/16 :goto_1bd

    :cond_ac
    const-string v0, "liberate"

    .line 25
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 26
    iget-boolean p1, p0, Lio/dcloud/g/a/e;->S:Z

    invoke-static {p2, p1, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/g/a/e;->f0:Z

    goto/16 :goto_1bd

    :cond_be
    const-string v0, "h5plus"

    .line 27
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_cf

    .line 28
    invoke-static {p2, v2, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/g/a/e;->N:Z

    goto/16 :goto_1bd

    :cond_cf
    const-string v0, "funSetUA"

    .line 29
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 30
    invoke-static {p2, v2, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/g/a/e;->O:Z

    goto/16 :goto_1bd

    :cond_df
    const-string v0, "useragent"

    .line 31
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 32
    iput-object p2, p0, Lio/dcloud/g/a/e;->H:Ljava/lang/String;

    goto/16 :goto_1bd

    :cond_eb
    const-string v0, "fullscreen"

    .line 33
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 34
    iget-boolean p1, p0, Lio/dcloud/g/a/f;->h:Z

    invoke-static {p2, p1, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/g/a/f;->h:Z

    goto/16 :goto_1bd

    :cond_fd
    const-string v0, "webcache_path"

    .line 35
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_109

    .line 36
    iput-object p2, p0, Lio/dcloud/g/a/e;->w1:Ljava/lang/String;

    goto/16 :goto_1bd

    :cond_109
    const-string v0, "wap2app_running_mode"

    .line 37
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_119

    .line 38
    invoke-static {p2, v1, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/g/a/e;->K:Z

    goto/16 :goto_1bd

    :cond_119
    const-string v0, "loadedTime"

    .line 39
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_125

    .line 40
    iput-object p2, p0, Lio/dcloud/g/a/e;->L0:Ljava/lang/String;

    goto/16 :goto_1bd

    :cond_125
    const-string v0, "StatusBarBackground"

    .line 41
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 42
    iput-object p2, p0, Lio/dcloud/g/a/e;->S0:Ljava/lang/String;

    goto/16 :goto_1bd

    :cond_131
    const-string v0, "status_bar_mode"

    .line 43
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 44
    iput-object p2, p0, Lio/dcloud/g/a/e;->V0:Ljava/lang/String;

    goto/16 :goto_1bd

    :cond_13d
    const-string v0, "immersed"

    .line 45
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_151

    .line 46
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/g/a/e;->W0:Z

    goto/16 :goto_1bd

    :cond_151
    const-string v0, "launch_is_statusbar"

    .line 47
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_164

    .line 48
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/g/a/e;->X0:Z

    goto :goto_1bd

    :cond_164
    const-string v0, "launch_statusbar_color"

    .line 49
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 50
    iput-object p2, p0, Lio/dcloud/g/a/e;->Z0:Ljava/lang/String;

    goto :goto_1bd

    :cond_16f
    const-string v0, "second_is_statusbar"

    .line 51
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_182

    .line 52
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/g/a/e;->Y0:Z

    goto :goto_1bd

    :cond_182
    const-string v0, "second_statusbar_color"

    .line 53
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18d

    .line 54
    iput-object p2, p0, Lio/dcloud/g/a/e;->a1:Ljava/lang/String;

    goto :goto_1bd

    :cond_18d
    const-string v0, "uniapp_weex_js_service"

    .line 55
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    .line 56
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/g/a/e;->b1:Z

    goto :goto_1bd

    :cond_1a0
    const-string v0, "debugRefresh"

    .line 57
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ab

    .line 58
    iput-object p2, p0, Lio/dcloud/g/a/e;->m1:Ljava/lang/String;

    goto :goto_1bd

    :cond_1ab
    const-string v0, "uni_restart_to_direct"

    .line 59
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1bd

    .line 60
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/g/a/e;->l1:Z

    :cond_1bd
    :goto_1bd
    return-void
.end method

.method public setDirectPage(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/g/a/e;->i1:Ljava/lang/String;

    return-void
.end method

.method public setHideNavBarState(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/g/a/f;->n:Z

    return-void
.end method

.method public setIAppStatusListener(Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/g/a/e;->K0:Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;

    return-void
.end method

.method public setLaunchPageStateListener(Lio/dcloud/common/DHInterface/IWebviewStateListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/g/a/e;->q1:Lio/dcloud/common/DHInterface/IWebviewStateListener;

    return-void
.end method

.method public setNeedRefreshApp(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/g/a/e;->f1:Z

    return-void
.end method

.method public setQuitModel(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/g/a/e;->o1:I

    return-void
.end method

.method public setRuntimeArgs(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2
    iput-object p1, p0, Lio/dcloud/g/a/e;->A:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public setStatus(B)V
    .registers 4

    .line 1
    iput-byte p1, p0, Lio/dcloud/g/a/e;->q:B

    const/4 v0, 0x3

    if-ne p1, v0, :cond_b

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/g/a/e;->c1:J

    :cond_b
    return-void
.end method

.method public setWebAppActivity(Landroid/app/Activity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    .line 2
    invoke-virtual {p0, p1}, Lio/dcloud/g/a/e;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public setWebAppIntent(Landroid/content/Intent;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "background"

    const-string v4, "="

    const-string v5, "statusbar"

    const-string v6, "&"

    const-string v0, "webviewParameter"

    const-string v7, "exec_new_intent"

    const/4 v8, 0x1

    .line 1
    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v9, 0x0

    if-nez v7, :cond_1c

    .line 2
    iget-object v10, v1, Lio/dcloud/g/a/e;->J0:Landroid/content/Intent;

    if-nez v10, :cond_1c0

    .line 3
    :cond_1c
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v10, v1, Lio/dcloud/g/a/e;->J0:Landroid/content/Intent;

    .line 4
    iget-object v10, v1, Lio/dcloud/g/a/e;->p0:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_35

    .line 5
    iget-object v10, v1, Lio/dcloud/g/a/e;->J0:Landroid/content/Intent;

    const-string v11, "__name__"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lio/dcloud/g/a/e;->p0:Ljava/lang/String;

    .line 7
    :cond_35
    iget-object v10, v1, Lio/dcloud/g/a/e;->J0:Landroid/content/Intent;

    const-string v11, "__first_web_url__"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 8
    iget-object v11, v1, Lio/dcloud/g/a/e;->n0:Ljava/lang/String;

    const-string v12, "__no__"

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_49

    .line 9
    iput-object v10, v1, Lio/dcloud/g/a/e;->n0:Ljava/lang/String;

    .line 11
    :cond_49
    iget-object v10, v1, Lio/dcloud/g/a/e;->J0:Landroid/content/Intent;

    const-string v11, "direct_page"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 12
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1c0

    .line 14
    :try_start_57
    new-instance v12, Ljava/net/URL;

    invoke-direct {v12, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v12}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_117

    .line 17
    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_66
    .catch Ljava/net/MalformedURLException; {:try_start_57 .. :try_end_66} :catch_1bc
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_66} :catch_1b7

    const-string v13, "__html5plusWebviewParameter"

    if-nez v15, :cond_70

    :try_start_6a
    invoke-virtual {v14, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_117

    .line 19
    :cond_70
    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_77

    move-object v13, v0

    .line 24
    :cond_77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "://"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/dcloud/g/a/e;->i1:Ljava/lang/String;

    .line 25
    invoke-virtual {v14, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_119

    const/4 v12, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x0

    .line 28
    :goto_a6
    array-length v0, v10

    if-ge v12, v0, :cond_114

    .line 29
    aget-object v0, v10, v12

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 30
    aget-object v15, v0, v9

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_be

    .line 31
    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_bd
    .catch Ljava/net/MalformedURLException; {:try_start_6a .. :try_end_bd} :catch_1bc
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_bd} :catch_1b7

    goto :goto_110

    :cond_be
    if-eqz v14, :cond_d7

    .line 35
    :try_start_c0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lio/dcloud/g/a/e;->i1:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "?"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lio/dcloud/g/a/e;->i1:Ljava/lang/String;

    const/4 v14, 0x0

    goto :goto_ed

    .line 37
    :cond_d7
    array-length v8, v10

    if-ge v12, v8, :cond_ed

    .line 38
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lio/dcloud/g/a/e;->i1:Ljava/lang/String;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lio/dcloud/g/a/e;->i1:Ljava/lang/String;

    .line 40
    :cond_ed
    :goto_ed
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lio/dcloud/g/a/e;->i1:Ljava/lang/String;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v0, v9

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x1

    aget-object v0, v0, v15

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/dcloud/g/a/e;->i1:Ljava/lang/String;
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_10b} :catch_10c

    goto :goto_110

    :catch_10c
    move-exception v0

    .line 42
    :try_start_10d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_110
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x1

    goto :goto_a6

    :cond_114
    move-object/from16 v13, v16

    goto :goto_11a

    .line 48
    :cond_117
    iput-object v10, v1, Lio/dcloud/g/a/e;->i1:Ljava/lang/String;

    :cond_119
    const/4 v13, 0x0

    .line 50
    :goto_11a
    iget-object v0, v1, Lio/dcloud/g/a/e;->i1:Ljava/lang/String;

    iput-object v0, v1, Lio/dcloud/g/a/e;->j1:Ljava/lang/String;

    .line 51
    iget-object v4, v1, Lio/dcloud/g/a/e;->J0:Landroid/content/Intent;

    invoke-virtual {v4, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    iget-object v0, v1, Lio/dcloud/g/a/e;->i1:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lio/dcloud/g/a/e;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lio/dcloud/g/a/e;->G0:Lorg/json/JSONObject;
    :try_end_12b
    .catch Ljava/net/MalformedURLException; {:try_start_10d .. :try_end_12b} :catch_1bc
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_12b} :catch_1b7

    if-nez v0, :cond_142

    .line 55
    :try_start_12d
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13b

    .line 56
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lio/dcloud/g/a/e;->G0:Lorg/json/JSONObject;

    goto :goto_142

    .line 58
    :cond_13b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, v1, Lio/dcloud/g/a/e;->G0:Lorg/json/JSONObject;

    .line 61
    :cond_142
    :goto_142
    iget-object v0, v1, Lio/dcloud/g/a/e;->G0:Lorg/json/JSONObject;

    const-string v4, "webviewid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v4, v1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ae

    .line 63
    new-instance v0, Ljava/io/File;

    sget-object v4, Lio/dcloud/common/util/BaseInfo;->sConfigXML:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lio/dcloud/g/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_175

    .line 64
    iget-object v0, v1, Lio/dcloud/g/a/e;->G0:Lorg/json/JSONObject;

    const-string v4, "launch_path"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_173

    iget-object v0, v1, Lio/dcloud/g/a/e;->i1:Ljava/lang/String;

    :cond_173
    iput-object v0, v1, Lio/dcloud/g/a/e;->i0:Ljava/lang/String;

    .line 67
    :cond_175
    iget-object v0, v1, Lio/dcloud/g/a/e;->G0:Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 68
    iget-object v0, v1, Lio/dcloud/g/a/e;->G0:Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_19e

    const-string v4, "immersed"

    const/4 v5, 0x1

    .line 69
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_19e

    .line 71
    iput-boolean v5, v1, Lio/dcloud/g/a/e;->X0:Z

    .line 72
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19e

    .line 73
    iget-object v4, v1, Lio/dcloud/g/a/e;->S0:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/dcloud/g/a/e;->Z0:Ljava/lang/String;

    .line 78
    :cond_19e
    iget-object v0, v1, Lio/dcloud/g/a/e;->J0:Landroid/content/Intent;

    invoke-virtual {v0, v11}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 79
    iget-object v0, v1, Lio/dcloud/g/a/e;->G0:Lorg/json/JSONObject;

    const-string v3, "titleNView"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lio/dcloud/g/a/e;->F0:Lorg/json/JSONObject;

    goto :goto_1c0

    .line 81
    :cond_1ae
    invoke-direct/range {p0 .. p0}, Lio/dcloud/g/a/e;->e()V
    :try_end_1b1
    .catch Lorg/json/JSONException; {:try_start_12d .. :try_end_1b1} :catch_1b2
    .catch Ljava/net/MalformedURLException; {:try_start_12d .. :try_end_1b1} :catch_1bc
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_1b1} :catch_1b7

    goto :goto_1c0

    :catch_1b2
    move-exception v0

    .line 84
    :try_start_1b3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1b6
    .catch Ljava/net/MalformedURLException; {:try_start_1b3 .. :try_end_1b6} :catch_1bc
    .catch Ljava/lang/Exception; {:try_start_1b3 .. :try_end_1b6} :catch_1b7

    goto :goto_1c0

    :catch_1b7
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c0

    :catch_1bc
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 97
    :cond_1c0
    :goto_1c0
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/g/a/e;->r()Z

    move-result v0

    if-eqz v0, :cond_1e7

    iget-object v0, v1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    if-nez v7, :cond_1e7

    const-string v0, "just_download"

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1e7

    iget-boolean v0, v1, Lio/dcloud/g/a/e;->x1:Z

    if-eqz v0, :cond_1e7

    .line 99
    iget-object v0, v1, Lio/dcloud/g/a/e;->u:Lio/dcloud/g/a/a;

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v3, 0x32

    invoke-virtual {v0, v2, v3, v1}, Lio/dcloud/g/a/a;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 100
    iput-boolean v9, v1, Lio/dcloud/g/a/e;->x1:Z

    :cond_1e7
    return-void
.end method

.method public shortcutQuit()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->t1:Ljava/lang/String;

    return-object v0
.end method

.method public showSplash()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lio/dcloud/common/DHInterface/IOnCreateSplashView;

    if-eqz v1, :cond_13

    .line 3
    move-object v1, v0

    check-cast v1, Lio/dcloud/common/DHInterface/IOnCreateSplashView;

    .line 4
    iget-object v2, p0, Lio/dcloud/g/a/e;->J0:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 5
    invoke-interface {v1, v0}, Lio/dcloud/common/DHInterface/IOnCreateSplashView;->onCreateSplash(Landroid/content/Context;)Ljava/lang/Object;

    :cond_13
    return-void
.end method

.method public startFromShortCut()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/g/a/e;->s1:Z

    return v0
.end method

.method public t()V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->g1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lio/dcloud/g/a/e;->h1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    if-eqz v0, :cond_19

    instance-of v1, v0, Lio/dcloud/WebAppActivity;

    if-eqz v1, :cond_19

    .line 4
    check-cast v0, Lio/dcloud/WebAppActivity;

    iget-object v1, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/dcloud/WebAppActivity;->onAppStop(Ljava/lang/String;)V

    :cond_19
    const-string v0, "appmgr"

    const-string v1, "webapp.onStoped"

    .line 6
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget v0, Lio/dcloud/common/util/BaseInfo;->s_Runing_App_Count:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lio/dcloud/common/util/BaseInfo;->s_Runing_App_Count:I

    .line 8
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {p0, v0, p0}, Lio/dcloud/g/a/e;->callSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    .line 9
    invoke-direct {p0}, Lio/dcloud/g/a/e;->d()V

    .line 10
    iget-object v0, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    iget-object v2, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-static {v0, v2}, Lio/dcloud/common/adapter/util/PermissionUtil;->removeTempPermission(Landroid/content/Context;Ljava/lang/String;)V

    new-array v0, v1, [Ljava/lang/Class;

    .line 11
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v4, "io.dcloud.feature.apsqh.QHNotifactionReceiver"

    const-string v5, "doSaveNotifications"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v0, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Class;

    .line 12
    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {p0}, Lio/dcloud/g/a/e;->obtainAppId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v1, "io.dcloud.appstream.actionbar.StreamAppActionBarUtil"

    const-string v4, "streamappStop"

    invoke-static {v1, v4, v6, v2, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-direct {p0}, Lio/dcloud/g/a/e;->b()V

    .line 14
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->deleteAppTemp()V

    .line 15
    iget-object v0, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/core/permission/PermissionControler;->unregisterRootPermission(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lio/dcloud/g/a/e;->u:Lio/dcloud/g/a/a;

    invoke-virtual {v0, p0}, Lio/dcloud/g/a/a;->e(Lio/dcloud/g/a/e;)V

    .line 18
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->getIAppStatusListener()Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;

    move-result-object v0

    if-eqz v0, :cond_8b

    .line 19
    invoke-virtual {p0}, Lio/dcloud/g/a/e;->getIAppStatusListener()Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;

    move-result-object v0

    invoke-interface {v0, v3, v6}, Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;->onStoped(ZLjava/lang/String;)Ljava/lang/String;

    .line 20
    :cond_8b
    iget-object v0, p0, Lio/dcloud/g/a/e;->u:Lio/dcloud/g/a/a;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2, p0}, Lio/dcloud/g/a/a;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/dcloud/g/a/e;->p0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/g/a/e;->x0:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lio/dcloud/common/core/permission/PermissionControler;->registerPermission(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e;->y0:Ljava/util/HashMap;

    if-eqz v0, :cond_1a

    .line 2
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1a

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 6
    iget-object p1, p0, Lio/dcloud/g/a/e;->y0:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    return-void
.end method

.method public updateDirectPage(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    iget-object p1, p0, Lio/dcloud/g/a/e;->i1:Ljava/lang/String;

    .line 4
    :cond_8
    invoke-virtual {p0, p1}, Lio/dcloud/g/a/e;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 6
    iput-object p1, p0, Lio/dcloud/g/a/e;->G0:Lorg/json/JSONObject;

    if-eqz p1, :cond_1e

    .line 8
    invoke-direct {p0}, Lio/dcloud/g/a/e;->e()V

    .line 10
    iget-object p1, p0, Lio/dcloud/g/a/e;->u:Lio/dcloud/g/a/a;

    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, p0}, Lio/dcloud/g/a/a;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    return-void
.end method

.method public v()V
    .registers 6

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/g/a/e;->b(Z)V

    const/4 v1, 0x1

    .line 9
    invoke-virtual {p0, v1}, Lio/dcloud/g/a/e;->setStatus(B)V

    .line 10
    iget-object v1, p0, Lio/dcloud/g/a/e;->u:Lio/dcloud/g/a/a;

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v3, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v4, v3}, Lio/dcloud/g/a/a;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " will active change to unrunning"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appmgr"

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lio/dcloud/g/a/e;->u:Lio/dcloud/g/a/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p0}, Lio/dcloud/g/a/a;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->sUsePermissionWebviews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public w()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "appid"

    .line 3
    :try_start_7
    iget-object v2, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_c} :catch_51

    const-string v1, "version"

    .line 4
    :try_start_e
    iget-object v2, p0, Lio/dcloud/g/a/e;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_13} :catch_51

    const-string v1, "name"

    .line 5
    :try_start_15
    iget-object v2, p0, Lio/dcloud/g/a/e;->p0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1a} :catch_51

    const-string v1, "versionCode"

    .line 6
    :try_start_1c
    iget-object v2, p0, Lio/dcloud/g/a/e;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_21} :catch_51

    const-string v1, "description"

    .line 7
    :try_start_23
    iget-object v2, p0, Lio/dcloud/g/a/e;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_28} :catch_51

    const-string v1, "author"

    .line 8
    :try_start_2a
    iget-object v2, p0, Lio/dcloud/g/a/e;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_2f} :catch_51

    const-string v1, "email"

    .line 9
    :try_start_31
    iget-object v2, p0, Lio/dcloud/g/a/e;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_36} :catch_51

    const-string v1, "license"

    .line 10
    :try_start_38
    iget-object v2, p0, Lio/dcloud/g/a/e;->E:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_3d} :catch_51

    const-string v1, "licensehref"

    .line 11
    :try_start_3f
    iget-object v2, p0, Lio/dcloud/g/a/e;->F:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_3f .. :try_end_44} :catch_51

    const-string v1, "features"

    .line 12
    :try_start_46
    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lio/dcloud/g/a/e;->x0:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_50} :catch_51

    goto :goto_55

    :catch_51
    move-exception v1

    .line 14
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 16
    :goto_55
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method x()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/g/a/e;->b(Z)V

    return-void
.end method

###### Class io.dcloud.g.a.e.a (io.dcloud.g.a.e$a)
.class Lio/dcloud/g/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/a/e;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lio/dcloud/g/a/e;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "wap2app_temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1b
    return-void
.end method

###### Class io.dcloud.g.a.e.b (io.dcloud.g.a.e$b)
.class Lio/dcloud/g/a/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/a/e;->j()Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lio/dcloud/g/a/e;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "wap2app_temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "wap2app__template.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_31
    return-void
.end method

###### Class io.dcloud.g.a.e.c (io.dcloud.g.a.e$c)
.class Lio/dcloud/g/a/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/a/e;->a(Lio/dcloud/common/DHInterface/ICallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/ICallBack;

.field final synthetic b:Lio/dcloud/g/a/e;


# direct methods
.method constructor <init>(Lio/dcloud/g/a/e;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/g/a/e$c;->b:Lio/dcloud/g/a/e;

    iput-object p2, p0, Lio/dcloud/g/a/e$c;->a:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/g/a/e$c;->b:Lio/dcloud/g/a/e;

    iget-object v1, v1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sSeparatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->APP_WWW_FS_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    sget-object v3, Lio/dcloud/g/a/e;->B1:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lio/dcloud/g/a/e$c;->b:Lio/dcloud/g/a/e;

    iget-object v5, v5, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " copy resoure begin!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z

    .line 6
    iget-object v3, p0, Lio/dcloud/g/a/e$c;->b:Lio/dcloud/g/a/e;

    invoke-static {v3}, Lio/dcloud/g/a/e;->a(Lio/dcloud/g/a/e;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lio/dcloud/common/adapter/io/DHFile;->copyDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 8
    sget-object v5, Lio/dcloud/g/a/e;->B1:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lio/dcloud/g/a/e$c;->b:Lio/dcloud/g/a/e;

    iget-object v7, v7, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " copy resoure end!!! useTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v1

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lio/dcloud/g/a/e$c;->b:Lio/dcloud/g/a/e;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/dcloud/g/a/e;->a(Lio/dcloud/g/a/e;B)B

    .line 10
    iget-object v1, p0, Lio/dcloud/g/a/e$c;->b:Lio/dcloud/g/a/e;

    invoke-virtual {v1, v0}, Lio/dcloud/g/a/e;->setAppDataPath(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lio/dcloud/g/a/e$c;->b:Lio/dcloud/g/a/e;

    iget-object v1, v0, Lio/dcloud/g/a/e;->p:Lio/dcloud/common/util/BaseInfo$BaseAppInfo;

    if-eqz v1, :cond_83

    .line 12
    invoke-virtual {v0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->saveToBundleData(Landroid/content/Context;)V

    .line 14
    :cond_83
    new-instance v0, Lio/dcloud/g/a/e$c$a;

    invoke-direct {v0, p0}, Lio/dcloud/g/a/e$c$a;-><init>(Lio/dcloud/g/a/e$c;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    return-void
.end method

###### Class io.dcloud.g.a.e.c.a (io.dcloud.g.a.e$c$a)
.class Lio/dcloud/g/a/e$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/a/e$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/g/a/e$c;


# direct methods
.method constructor <init>(Lio/dcloud/g/a/e$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/g/a/e$c$a;->a:Lio/dcloud/g/a/e$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/g/a/e$c$a;->a:Lio/dcloud/g/a/e$c;

    iget-object p1, p1, Lio/dcloud/g/a/e$c;->a:Lio/dcloud/common/DHInterface/ICallBack;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class io.dcloud.g.a.e.d (io.dcloud.g.a.e$d)
.class Lio/dcloud/g/a/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/a/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/g/a/e;


# direct methods
.method constructor <init>(Lio/dcloud/g/a/e;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/g/a/e$d;->b:Lio/dcloud/g/a/e;

    iput-object p2, p0, Lio/dcloud/g/a/e$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/e$d;->b:Lio/dcloud/g/a/e;

    invoke-virtual {v0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/g/a/e$d;->a:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/g/a/e$d;->b:Lio/dcloud/g/a/e;

    iget-object v2, v2, Lio/dcloud/g/a/e;->I0:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v3, v2, v4}, Lio/dcloud/common/util/TestUtil$PointTime;->commitTid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

###### Class io.dcloud.g.a.e.RunnableC0062e (io.dcloud.g.a.e$e)
.class Lio/dcloud/g/a/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/a/e;->deleteAppTemp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/g/a/e;


# direct methods
.method constructor <init>(Lio/dcloud/g/a/e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/g/a/e$e;->a:Lio/dcloud/g/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/g/a/e$e;->a:Lio/dcloud/g/a/e;

    invoke-virtual {v0}, Lio/dcloud/g/a/e;->obtainAppTempPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_e
    return-void
.end method

###### Class io.dcloud.g.a.e.f (io.dcloud.g.a.e$f)
.class synthetic Lio/dcloud/g/a/e$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/g/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->values()[Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/dcloud/g/a/e$f;->a:[I

    :try_start_9
    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->OverrideUrlJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/dcloud/g/a/e$f;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->OverrideResourceJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/dcloud/g/a/e$f;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->SecondWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lio/dcloud/g/a/e$f;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->LaunchWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lio/dcloud/g/a/e$f;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->TitleNViewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lio/dcloud/g/a/e$f;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->SitemapJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lio/dcloud/g/a/e$f;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->URDJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lio/dcloud/g/a/e$f;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->DirectPageJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lio/dcloud/g/a/e$f;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->Tabbar:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    return-void
.end method
