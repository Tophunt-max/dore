###### Class io.dcloud.g.a.g (io.dcloud.g.a.g)
.class Lio/dcloud/g/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Z

.field d:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/dcloud/g/a/g;->a:Z

    .line 7
    iput-boolean v0, p0, Lio/dcloud/g/a/g;->c:Z

    .line 8
    iput-boolean v0, p0, Lio/dcloud/g/a/g;->d:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/g/a/g;->a:Z

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    .line 3
    iput-boolean v0, p0, Lio/dcloud/g/a/g;->c:Z

    .line 4
    iput-boolean v0, p0, Lio/dcloud/g/a/g;->d:Z

    return-void
.end method
