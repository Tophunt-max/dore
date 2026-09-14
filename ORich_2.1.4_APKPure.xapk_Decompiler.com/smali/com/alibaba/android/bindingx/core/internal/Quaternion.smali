###### Class com.alibaba.android.bindingx.core.internal.Quaternion (com.alibaba.android.bindingx.core.internal.Quaternion)
.class Lcom/alibaba/android/bindingx/core/internal/Quaternion;
.super Ljava/lang/Object;
.source "Quaternion.java"


# instance fields
.field w:D

.field x:D

.field y:D

.field z:D


# direct methods
.method constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(DDDD)V
    .registers 9

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->x:D

    .line 38
    iput-wide p3, p0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->y:D

    .line 39
    iput-wide p5, p0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->z:D

    .line 40
    iput-wide p7, p0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->w:D

    return-void
.end method


# virtual methods
.method multiply(Lcom/alibaba/android/bindingx/core/internal/Quaternion;)Lcom/alibaba/android/bindingx/core/internal/Quaternion;
    .registers 2

    .line 124
    invoke-virtual {p0, p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->multiplyQuaternions(Lcom/alibaba/android/bindingx/core/internal/Quaternion;Lcom/alibaba/android/bindingx/core/internal/Quaternion;)Lcom/alibaba/android/bindingx/core/internal/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method multiplyQuaternions(Lcom/alibaba/android/bindingx/core/internal/Quaternion;Lcom/alibaba/android/bindingx/core/internal/Quaternion;)Lcom/alibaba/android/bindingx/core/internal/Quaternion;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 129
    iget-wide v3, v1, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->x:D

    iget-wide v5, v1, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->y:D

    iget-wide v7, v1, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->z:D

    iget-wide v9, v1, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->w:D

    .line 130
    iget-wide v11, v2, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->x:D

    iget-wide v13, v2, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->y:D

    iget-wide v0, v2, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->z:D

    move-wide v15, v7

    iget-wide v7, v2, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->w:D

    mul-double v17, v3, v7

    mul-double v19, v9, v11

    add-double v17, v17, v19

    mul-double v19, v5, v0

    add-double v17, v17, v19

    mul-double v19, v15, v13

    move-wide/from16 v21, v0

    sub-double v0, v17, v19

    move-object/from16 v2, p0

    move-wide/from16 v17, v21

    .line 132
    iput-wide v0, v2, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->x:D

    mul-double v0, v5, v7

    mul-double v19, v9, v13

    add-double v0, v0, v19

    mul-double v19, v15, v11

    add-double v0, v0, v19

    mul-double v19, v3, v17

    sub-double v0, v0, v19

    .line 133
    iput-wide v0, v2, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->y:D

    mul-double v0, v15, v7

    mul-double v19, v9, v17

    add-double v0, v0, v19

    mul-double v19, v3, v13

    add-double v0, v0, v19

    mul-double v19, v5, v11

    sub-double v0, v0, v19

    .line 134
    iput-wide v0, v2, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->z:D

    mul-double v9, v9, v7

    mul-double v3, v3, v11

    sub-double/2addr v9, v3

    mul-double v5, v5, v13

    sub-double/2addr v9, v5

    mul-double v7, v15, v17

    sub-double/2addr v9, v7

    .line 135
    iput-wide v9, v2, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->w:D

    return-object v2
.end method

.method setFromAxisAngle(Lcom/alibaba/android/bindingx/core/internal/Vector3;D)Lcom/alibaba/android/bindingx/core/internal/Quaternion;
    .registers 8

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p2, v0

    .line 113
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 115
    iget-wide v2, p1, Lcom/alibaba/android/bindingx/core/internal/Vector3;->x:D

    mul-double v2, v2, v0

    iput-wide v2, p0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->x:D

    .line 116
    iget-wide v2, p1, Lcom/alibaba/android/bindingx/core/internal/Vector3;->y:D

    mul-double v2, v2, v0

    iput-wide v2, p0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->y:D

    .line 117
    iget-wide v2, p1, Lcom/alibaba/android/bindingx/core/internal/Vector3;->z:D

    mul-double v2, v2, v0

    iput-wide v2, p0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->z:D

    .line 118
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->w:D

    return-object p0
.end method

.method setFromEuler(Lcom/alibaba/android/bindingx/core/internal/Euler;)Lcom/alibaba/android/bindingx/core/internal/Quaternion;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_15b

    .line 48
    iget-boolean v2, v1, Lcom/alibaba/android/bindingx/core/internal/Euler;->isEuler:Z

    if-nez v2, :cond_c

    goto/16 :goto_15b

    .line 52
    :cond_c
    iget-wide v2, v1, Lcom/alibaba/android/bindingx/core/internal/Euler;->x:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 53
    iget-wide v6, v1, Lcom/alibaba/android/bindingx/core/internal/Euler;->y:D

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 54
    iget-wide v8, v1, Lcom/alibaba/android/bindingx/core/internal/Euler;->z:D

    div-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 55
    iget-wide v10, v1, Lcom/alibaba/android/bindingx/core/internal/Euler;->x:D

    div-double/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 56
    iget-wide v12, v1, Lcom/alibaba/android/bindingx/core/internal/Euler;->y:D

    div-double/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 57
    iget-wide v14, v1, Lcom/alibaba/android/bindingx/core/internal/Euler;->z:D

    div-double/2addr v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 59
    iget-object v1, v1, Lcom/alibaba/android/bindingx/core/internal/Euler;->order:Ljava/lang/String;

    const-string v14, "XYZ"

    .line 61
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6c

    mul-double v14, v10, v6

    mul-double v16, v14, v8

    mul-double v18, v2, v12

    mul-double v20, v18, v4

    move-wide/from16 v22, v10

    add-double v10, v16, v20

    .line 63
    iput-wide v10, v0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->x:D

    mul-double v18, v18, v8

    mul-double v14, v14, v4

    sub-double v10, v18, v14

    .line 64
    iput-wide v10, v0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->y:D

    mul-double v2, v2, v6

    mul-double v6, v2, v4

    mul-double v10, v22, v12

    mul-double v12, v10, v8

    add-double/2addr v6, v12

    .line 65
    iput-wide v6, v0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->z:D

    mul-double v2, v2, v8

    mul-double v10, v10, v4

    sub-double/2addr v2, v10

    .line 66
    iput-wide v2, v0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->w:D

    goto/16 :goto_15a

    :cond_6c
    move-wide/from16 v22, v10

    const-string v10, "YXZ"

    .line 68
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9e

    mul-double v10, v22, v6

    mul-double v14, v10, v8

    mul-double v16, v2, v12

    mul-double v18, v16, v4

    add-double v14, v14, v18

    .line 70
    iput-wide v14, v0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->x:D

    mul-double v16, v16, v8

    mul-double v10, v10, v4

    sub-double v10, v16, v10

    .line 71
    iput-wide v10, v0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->y:D

    mul-double v2, v2, v6

    mul-double v6, v2, v4

    mul-double v10, v22, v12

    mul-double v12, v10, v8

    sub-double/2addr v6, v12

    .line 72
    iput-wide v6, v0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->z:D

    mul-double v2, v2, v8

    mul-double v10, v10, v4

    add-double/2addr v2, v10

    .line 73
    iput-wide v2, v0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->w:D

    goto/16 :goto_15a

    :cond_9e
    const-string v10, "ZXY"

    .line 75
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ce

    mul-double v10, v22, v6

    mul-double v14, v10, v8

    mul-double v16, v2, v12

    mul-double v18, v16, v4

    sub-double v14, v14, v18

    .line 77
    iput-wide v14, v0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->x:D

    mul-double v16, v16, v8

    mul-double v10, v10, v4

    add-double v10, v16, v10

    .line 78
    iput-wide v10, v0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->y:D

    mul-double v2, v2, v6

    mul-double v6, v2, v4

    mul-double v10, v22, v12

    mul-double v12, v10, v8

    add-double/2addr v6, v12

    .line 79
    iput-wide v6, v0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->z:D

    mul-double v2, v2, v8

    mul-double v10, v10, v4

    sub-double/2addr v2, v10

    .line 80
    iput-wide v2, v0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->w:D

    goto/16 :goto_15a

    :cond_ce
    const-string v10, "ZYX"

    .line 82
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_fd

    mul-double v10, v22, v6

    mul-double v14, v10, v8

    mul-double v16, v2, v12

    mul-double v18, v16, v4

    sub-double v14, v14, v18

    .line 84
    iput-wide v14, v0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->x:D

    mul-double v16, v16, v8

    mul-double v10, v10, v4

    add-double v10, v16, v10

    .line 85
    iput-wide v10, v0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->y:D

    mul-double v2, v2, v6

    mul-double v6, v2, v4

    mul-double v10, v22, v12

    mul-double v12, v10, v8

    sub-double/2addr v6, v12

    .line 86
    iput-wide v6, v0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->z:D

    mul-double v2, v2, v8

    mul-double v10, v10, v4

    add-double/2addr v2, v10

    .line 87
    iput-wide v2, v0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->w:D

    goto :goto_15a

    :cond_fd
    const-string v10, "YZX"

    .line 89
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12c

    mul-double v10, v22, v6

    mul-double v14, v10, v8

    mul-double v16, v2, v12

    mul-double v18, v16, v4

    add-double v14, v14, v18

    .line 91
    iput-wide v14, v0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->x:D

    mul-double v16, v16, v8

    mul-double v10, v10, v4

    add-double v10, v16, v10

    .line 92
    iput-wide v10, v0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->y:D

    mul-double v2, v2, v6

    mul-double v6, v2, v4

    mul-double v10, v22, v12

    mul-double v12, v10, v8

    sub-double/2addr v6, v12

    .line 93
    iput-wide v6, v0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->z:D

    mul-double v2, v2, v8

    mul-double v10, v10, v4

    sub-double/2addr v2, v10

    .line 94
    iput-wide v2, v0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->w:D

    goto :goto_15a

    :cond_12c
    const-string v10, "XZY"

    .line 96
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15a

    mul-double v10, v22, v6

    mul-double v14, v10, v8

    mul-double v16, v2, v12

    mul-double v18, v16, v4

    sub-double v14, v14, v18

    .line 98
    iput-wide v14, v0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->x:D

    mul-double v16, v16, v8

    mul-double v10, v10, v4

    sub-double v10, v16, v10

    .line 99
    iput-wide v10, v0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->y:D

    mul-double v2, v2, v6

    mul-double v6, v2, v4

    mul-double v10, v22, v12

    mul-double v12, v10, v8

    add-double/2addr v6, v12

    .line 100
    iput-wide v6, v0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->z:D

    mul-double v2, v2, v8

    mul-double v10, v10, v4

    add-double/2addr v2, v10

    .line 101
    iput-wide v2, v0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->w:D

    :cond_15a
    :goto_15a
    return-object v0

    :cond_15b
    :goto_15b
    const/4 v1, 0x0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Quaternion{x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->z:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/android/bindingx/core/internal/Quaternion;->w:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
