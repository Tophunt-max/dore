###### Class org.mozilla.universalchardet.prober.statemachine.UTF8SMModel (org.mozilla.universalchardet.prober.statemachine.UTF8SMModel)
.class public Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;
.super Lorg/mozilla/universalchardet/prober/statemachine/SMModel;
.source "SourceFile"


# static fields
.field public static final UTF8_CLASS_FACTOR:I = 0x10

.field private static utf8CharLenTable:[I

.field private static utf8ClassTable:[I

.field private static utf8StateTable:[I


# direct methods
.method static constructor <clinit>()V
    .registers 33

    const/16 v0, 0x20

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 3
    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 4
    invoke-static/range {v3 .. v10}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v0, v3

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 5
    invoke-static/range {v4 .. v11}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/4 v4, 0x2

    aput v1, v0, v4

    const/4 v8, 0x0

    const/4 v12, 0x1

    .line 6
    invoke-static/range {v5 .. v12}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/4 v5, 0x3

    aput v1, v0, v5

    const/4 v8, 0x1

    const/4 v13, 0x1

    .line 7
    invoke-static/range {v6 .. v13}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/4 v6, 0x4

    aput v1, v0, v6

    const/4 v14, 0x1

    .line 8
    invoke-static/range {v7 .. v14}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/4 v7, 0x5

    aput v1, v0, v7

    const/4 v15, 0x1

    .line 9
    invoke-static/range {v8 .. v15}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/4 v8, 0x6

    aput v1, v0, v8

    const/16 v16, 0x1

    .line 10
    invoke-static/range {v9 .. v16}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/4 v9, 0x7

    aput v1, v0, v9

    const/16 v17, 0x1

    .line 11
    invoke-static/range {v10 .. v17}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v10, 0x8

    aput v1, v0, v10

    const/16 v18, 0x1

    .line 12
    invoke-static/range {v11 .. v18}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v11, 0x9

    aput v1, v0, v11

    const/16 v19, 0x1

    .line 13
    invoke-static/range {v12 .. v19}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v12, 0xa

    aput v1, v0, v12

    const/16 v20, 0x1

    .line 14
    invoke-static/range {v13 .. v20}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v13, 0xb

    aput v1, v0, v13

    const/16 v21, 0x1

    .line 15
    invoke-static/range {v14 .. v21}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v14, 0xc

    aput v1, v0, v14

    const/16 v22, 0x1

    .line 16
    invoke-static/range {v15 .. v22}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v15, 0xd

    aput v1, v0, v15

    const/16 v23, 0x1

    .line 17
    invoke-static/range {v16 .. v23}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v16, 0xe

    aput v1, v0, v16

    const/16 v24, 0x1

    .line 18
    invoke-static/range {v17 .. v24}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v17, 0xf

    aput v1, v0, v17

    const/16 v18, 0x2

    const/16 v19, 0x2

    const/16 v20, 0x2

    const/16 v21, 0x2

    const/16 v22, 0x3

    const/16 v23, 0x3

    const/16 v24, 0x3

    const/16 v25, 0x3

    .line 19
    invoke-static/range {v18 .. v25}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v15, 0x10

    aput v1, v0, v15

    const/16 v19, 0x4

    const/16 v20, 0x4

    const/16 v21, 0x4

    const/16 v22, 0x4

    const/16 v23, 0x4

    const/16 v24, 0x4

    const/16 v25, 0x4

    const/16 v26, 0x4

    .line 20
    invoke-static/range {v19 .. v26}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v19, 0x11

    aput v1, v0, v19

    const/16 v27, 0x4

    .line 21
    invoke-static/range {v20 .. v27}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v20, 0x12

    aput v1, v0, v20

    const/16 v28, 0x4

    .line 22
    invoke-static/range {v21 .. v28}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v21, 0x13

    aput v1, v0, v21

    const/16 v22, 0x5

    const/16 v23, 0x5

    const/16 v24, 0x5

    const/16 v25, 0x5

    const/16 v26, 0x5

    const/16 v27, 0x5

    const/16 v28, 0x5

    const/16 v29, 0x5

    .line 23
    invoke-static/range {v22 .. v29}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v22, 0x14

    aput v1, v0, v22

    const/16 v30, 0x5

    .line 24
    invoke-static/range {v23 .. v30}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v23, 0x15

    aput v1, v0, v23

    const/16 v31, 0x5

    .line 25
    invoke-static/range {v24 .. v31}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v24, 0x16

    aput v1, v0, v24

    const/16 v32, 0x5

    .line 26
    invoke-static/range {v25 .. v32}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v24, 0x17

    aput v1, v0, v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x6

    const/16 v28, 0x6

    const/16 v29, 0x6

    const/16 v30, 0x6

    const/16 v31, 0x6

    const/16 v32, 0x6

    .line 27
    invoke-static/range {v25 .. v32}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v24, 0x18

    aput v1, v0, v24

    const/16 v25, 0x6

    const/16 v26, 0x6

    .line 28
    invoke-static/range {v25 .. v32}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v24, 0x19

    aput v1, v0, v24

    .line 29
    invoke-static/range {v25 .. v32}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v24, 0x1a

    aput v1, v0, v24

    .line 30
    invoke-static/range {v25 .. v32}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v24, 0x1b

    aput v1, v0, v24

    const/16 v25, 0x7

    const/16 v26, 0x8

    const/16 v27, 0x8

    const/16 v28, 0x8

    const/16 v29, 0x8

    const/16 v30, 0x8

    const/16 v31, 0x8

    const/16 v32, 0x8

    .line 31
    invoke-static/range {v25 .. v32}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v24, 0x1c

    aput v1, v0, v24

    const/16 v25, 0x8

    const/16 v30, 0x9

    .line 32
    invoke-static/range {v25 .. v32}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v24, 0x1d

    aput v1, v0, v24

    const/16 v25, 0xa

    const/16 v26, 0xb

    const/16 v27, 0xb

    const/16 v28, 0xb

    const/16 v29, 0xb

    const/16 v30, 0xb

    const/16 v31, 0xb

    const/16 v32, 0xb

    .line 33
    invoke-static/range {v25 .. v32}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v24, 0x1e

    aput v1, v0, v24

    const/16 v25, 0xc

    const/16 v26, 0xd

    const/16 v27, 0xd

    const/16 v28, 0xd

    const/16 v29, 0xe

    const/16 v30, 0xf

    const/16 v31, 0x0

    const/16 v32, 0x0

    .line 34
    invoke-static/range {v25 .. v32}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v24, 0x1f

    aput v1, v0, v24

    sput-object v0, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;->utf8ClassTable:[I

    const/16 v0, 0x1a

    new-array v0, v0, [I

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0xc

    const/16 v31, 0xa

    .line 38
    invoke-static/range {v24 .. v31}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v0, v2

    const/16 v24, 0x9

    const/16 v25, 0xb

    const/16 v26, 0x8

    const/16 v27, 0x7

    const/16 v28, 0x6

    const/16 v29, 0x5

    const/16 v30, 0x4

    const/16 v31, 0x3

    .line 39
    invoke-static/range {v24 .. v31}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v0, v3

    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x1

    const/16 v31, 0x1

    .line 40
    invoke-static/range {v24 .. v31}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v0, v4

    .line 41
    invoke-static/range {v24 .. v31}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v0, v5

    const/16 v24, 0x2

    const/16 v25, 0x2

    const/16 v26, 0x2

    const/16 v27, 0x2

    const/16 v28, 0x2

    const/16 v29, 0x2

    const/16 v30, 0x2

    const/16 v31, 0x2

    .line 42
    invoke-static/range {v24 .. v31}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v0, v6

    .line 43
    invoke-static/range {v24 .. v31}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v0, v7

    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x5

    const/16 v27, 0x5

    const/16 v28, 0x5

    const/16 v29, 0x5

    const/16 v30, 0x1

    const/16 v31, 0x1

    .line 44
    invoke-static/range {v24 .. v31}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v0, v8

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    .line 45
    invoke-static/range {v24 .. v31}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v0, v9

    const/16 v27, 0x5

    const/16 v28, 0x5

    const/16 v29, 0x5

    .line 46
    invoke-static/range {v24 .. v31}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v0, v10

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 47
    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v0, v11

    const/4 v4, 0x7

    const/4 v5, 0x7

    const/4 v6, 0x7

    const/4 v7, 0x7

    .line 48
    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v0, v12

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 49
    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v0, v13

    const/4 v6, 0x7

    const/4 v7, 0x7

    .line 50
    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v0, v14

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 51
    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v2, 0xd

    aput v1, v0, v2

    const/16 v5, 0x9

    const/16 v6, 0x9

    const/16 v7, 0x9

    const/16 v8, 0x9

    const/4 v10, 0x1

    .line 52
    invoke-static/range {v3 .. v10}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v0, v16

    const/4 v2, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 53
    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v0, v17

    const/16 v6, 0x9

    const/16 v7, 0x9

    .line 54
    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v0, v15

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 55
    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v0, v19

    const/16 v4, 0xc

    const/16 v5, 0xc

    const/16 v6, 0xc

    const/16 v7, 0xc

    .line 56
    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v0, v20

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 57
    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v0, v21

    const/16 v7, 0xc

    .line 58
    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v0, v22

    const/4 v7, 0x1

    .line 59
    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v0, v23

    const/16 v4, 0xc

    const/16 v5, 0xc

    const/16 v6, 0xc

    .line 60
    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v2, 0x16

    aput v1, v0, v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 61
    invoke-static/range {v3 .. v10}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v2, 0x17

    aput v1, v0, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 62
    invoke-static/range {v3 .. v10}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v2, 0x18

    aput v1, v0, v2

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 63
    invoke-static/range {v3 .. v10}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    const/16 v2, 0x19

    aput v1, v0, v2

    sput-object v0, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;->utf8StateTable:[I

    new-array v0, v15, [I

    .line 66
    fill-array-data v0, :array_2fe

    sput-object v0, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;->utf8CharLenTable:[I

    return-void

    nop

    :array_2fe
    .array-data 4
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x2
        0x3
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .registers 14

    .line 1
    new-instance v6, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    sget-object v5, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;->utf8ClassTable:[I

    const/4 v1, 0x3

    const/4 v2, 0x7

    const/4 v3, 0x2

    const/16 v4, 0xf

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;-><init>(IIII[I)V

    new-instance v3, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    sget-object v12, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;->utf8StateTable:[I

    const/4 v8, 0x3

    const/4 v9, 0x7

    const/4 v10, 0x2

    const/16 v11, 0xf

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;-><init>(IIII[I)V

    sget-object v4, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;->utf8CharLenTable:[I

    sget-object v5, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_8:Ljava/lang/String;

    const/16 v2, 0x10

    move-object v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;ILorg/mozilla/universalchardet/prober/statemachine/PkgInt;[ILjava/lang/String;)V

    return-void
.end method
