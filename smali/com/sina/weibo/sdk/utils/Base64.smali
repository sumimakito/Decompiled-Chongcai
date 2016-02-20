.class public final Lcom/sina/weibo/sdk/utils/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static alphabet:[C

.field private static codes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 3
    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 3
    sput-object v1, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    .line 6
    new-array v1, v3, [B

    sput-object v1, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    .line 9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 12
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-le v0, v1, :cond_1

    .line 15
    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-le v0, v1, :cond_2

    .line 18
    const/16 v0, 0x30

    :goto_3
    const/16 v1, 0x39

    if-le v0, v1, :cond_3

    .line 21
    sget-object v1, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    const/16 v2, 0x2b

    const/16 v3, 0x3e

    aput-byte v3, v1, v2

    .line 22
    sget-object v1, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    const/16 v2, 0x2f

    const/16 v3, 0x3f

    aput-byte v3, v1, v2

    .line 23
    return-void

    .line 10
    :cond_0
    sget-object v1, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_1
    sget-object v1, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 16
    :cond_2
    sget-object v1, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    add-int/lit8 v2, v0, 0x1a

    add-int/lit8 v2, v2, -0x61

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 19
    :cond_3
    sget-object v1, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    add-int/lit8 v2, v0, 0x34

    add-int/lit8 v2, v2, -0x30

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([B)[B
    .locals 11
    .param p0, "data"    # [B

    .prologue
    const/16 v10, 0x3d

    .line 29
    array-length v8, p0

    add-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x4

    mul-int/lit8 v4, v8, 0x3

    .line 30
    .local v4, "len":I
    array-length v8, p0

    if-lez v8, :cond_0

    array-length v8, p0

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, p0, v8

    if-ne v8, v10, :cond_0

    .line 31
    add-int/lit8 v4, v4, -0x1

    .line 33
    :cond_0
    array-length v8, p0

    const/4 v9, 0x1

    if-le v8, v9, :cond_1

    array-length v8, p0

    add-int/lit8 v8, v8, -0x2

    aget-byte v8, p0, v8

    if-ne v8, v10, :cond_1

    .line 34
    add-int/lit8 v4, v4, -0x1

    .line 36
    :cond_1
    new-array v5, v4, [B

    .line 37
    .local v5, "out":[B
    const/4 v6, 0x0

    .line 38
    .local v6, "shift":I
    const/4 v0, 0x0

    .line 39
    .local v0, "accum":I
    const/4 v1, 0x0

    .line 40
    .local v1, "index":I
    const/4 v3, 0x0

    .local v3, "ix":I
    :goto_0
    array-length v8, p0

    if-lt v3, v8, :cond_2

    .line 52
    array-length v8, v5

    if-eq v1, v8, :cond_4

    .line 53
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "miscalculated data length!"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 41
    :cond_2
    sget-object v8, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    aget-byte v9, p0, v3

    and-int/lit16 v9, v9, 0xff

    aget-byte v7, v8, v9

    .line 42
    .local v7, "value":I
    if-ltz v7, :cond_3

    .line 43
    shl-int/lit8 v0, v0, 0x6

    .line 44
    add-int/lit8 v6, v6, 0x6

    .line 45
    or-int/2addr v0, v7

    .line 46
    const/16 v8, 0x8

    if-lt v6, v8, :cond_3

    .line 47
    add-int/lit8 v6, v6, -0x8

    .line 48
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    shr-int v8, v0, v6

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v1

    move v1, v2

    .line 40
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    .end local v7    # "value":I
    :cond_4
    return-object v5
.end method

.method public static encode([B)[C
    .locals 10
    .param p0, "data"    # [B

    .prologue
    const/16 v7, 0x40

    .line 62
    array-length v6, p0

    add-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x4

    new-array v2, v6, [C

    .line 64
    .local v2, "out":[C
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v6, p0

    if-lt v0, v6, :cond_0

    .line 86
    return-object v2

    .line 65
    :cond_0
    const/4 v3, 0x0

    .line 66
    .local v3, "quad":Z
    const/4 v4, 0x0

    .line 67
    .local v4, "trip":Z
    aget-byte v6, p0, v0

    and-int/lit16 v5, v6, 0xff

    .line 68
    .local v5, "val":I
    shl-int/lit8 v5, v5, 0x8

    .line 69
    add-int/lit8 v6, v0, 0x1

    array-length v8, p0

    if-ge v6, v8, :cond_1

    .line 70
    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    .line 71
    const/4 v4, 0x1

    .line 73
    :cond_1
    shl-int/lit8 v5, v5, 0x8

    .line 74
    add-int/lit8 v6, v0, 0x2

    array-length v8, p0

    if-ge v6, v8, :cond_2

    .line 75
    add-int/lit8 v6, v0, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    .line 76
    const/4 v3, 0x1

    .line 78
    :cond_2
    add-int/lit8 v8, v1, 0x3

    sget-object v9, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    if-eqz v3, :cond_3

    and-int/lit8 v6, v5, 0x3f

    :goto_1
    aget-char v6, v9, v6

    aput-char v6, v2, v8

    .line 79
    shr-int/lit8 v5, v5, 0x6

    .line 80
    add-int/lit8 v8, v1, 0x2

    sget-object v9, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    if-eqz v4, :cond_4

    and-int/lit8 v6, v5, 0x3f

    :goto_2
    aget-char v6, v9, v6

    aput-char v6, v2, v8

    .line 81
    shr-int/lit8 v5, v5, 0x6

    .line 82
    add-int/lit8 v6, v1, 0x1

    sget-object v8, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    and-int/lit8 v9, v5, 0x3f

    aget-char v8, v8, v9

    aput-char v8, v2, v6

    .line 83
    shr-int/lit8 v5, v5, 0x6

    .line 84
    add-int/lit8 v6, v1, 0x0

    sget-object v8, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    and-int/lit8 v9, v5, 0x3f

    aget-char v8, v8, v9

    aput-char v8, v2, v6

    .line 64
    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_3
    move v6, v7

    .line 78
    goto :goto_1

    :cond_4
    move v6, v7

    .line 80
    goto :goto_2
.end method

.method public static encodebyte([B)[B
    .locals 10
    .param p0, "data"    # [B

    .prologue
    const/16 v7, 0x40

    .line 93
    array-length v6, p0

    add-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x4

    new-array v2, v6, [B

    .line 95
    .local v2, "out":[B
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v6, p0

    if-lt v0, v6, :cond_0

    .line 117
    return-object v2

    .line 96
    :cond_0
    const/4 v3, 0x0

    .line 97
    .local v3, "quad":Z
    const/4 v4, 0x0

    .line 98
    .local v4, "trip":Z
    aget-byte v6, p0, v0

    and-int/lit16 v5, v6, 0xff

    .line 99
    .local v5, "val":I
    shl-int/lit8 v5, v5, 0x8

    .line 100
    add-int/lit8 v6, v0, 0x1

    array-length v8, p0

    if-ge v6, v8, :cond_1

    .line 101
    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    .line 102
    const/4 v4, 0x1

    .line 104
    :cond_1
    shl-int/lit8 v5, v5, 0x8

    .line 105
    add-int/lit8 v6, v0, 0x2

    array-length v8, p0

    if-ge v6, v8, :cond_2

    .line 106
    add-int/lit8 v6, v0, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    .line 107
    const/4 v3, 0x1

    .line 109
    :cond_2
    add-int/lit8 v8, v1, 0x3

    sget-object v9, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    if-eqz v3, :cond_3

    and-int/lit8 v6, v5, 0x3f

    :goto_1
    aget-char v6, v9, v6

    int-to-byte v6, v6

    aput-byte v6, v2, v8

    .line 110
    shr-int/lit8 v5, v5, 0x6

    .line 111
    add-int/lit8 v8, v1, 0x2

    sget-object v9, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    if-eqz v4, :cond_4

    and-int/lit8 v6, v5, 0x3f

    :goto_2
    aget-char v6, v9, v6

    int-to-byte v6, v6

    aput-byte v6, v2, v8

    .line 112
    shr-int/lit8 v5, v5, 0x6

    .line 113
    add-int/lit8 v6, v1, 0x1

    sget-object v8, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    and-int/lit8 v9, v5, 0x3f

    aget-char v8, v8, v9

    int-to-byte v8, v8

    aput-byte v8, v2, v6

    .line 114
    shr-int/lit8 v5, v5, 0x6

    .line 115
    add-int/lit8 v6, v1, 0x0

    sget-object v8, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    and-int/lit8 v9, v5, 0x3f

    aget-char v8, v8, v9

    int-to-byte v8, v8

    aput-byte v8, v2, v6

    .line 95
    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_3
    move v6, v7

    .line 109
    goto :goto_1

    :cond_4
    move v6, v7

    .line 111
    goto :goto_2
.end method
