.class public Lorg/mozilla/intl/chardet/GB2312Statistics;
.super Lorg/mozilla/intl/chardet/nsEUCStatistics;


# static fields
.field static mFirstByteFreq:[F

.field static mFirstByteMean:F

.field static mFirstByteStdDev:F

.field static mFirstByteWeight:F

.field static mSecondByteFreq:[F

.field static mSecondByteMean:F

.field static mSecondByteStdDev:F

.field static mSecondByteWeight:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x5e

    const v1, 0x3c2e4b02    # 0.010638f

    invoke-direct {p0}, Lorg/mozilla/intl/chardet/nsEUCStatistics;-><init>()V

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mFirstByteFreq:[F

    const v0, 0x3ca480e9    # 0.020081f

    sput v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mFirstByteStdDev:F

    sput v1, Lorg/mozilla/intl/chardet/GB2312Statistics;->mFirstByteMean:F

    const v0, 0x3f162707    # 0.586533f

    sput v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mFirstByteWeight:F

    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mSecondByteFreq:[F

    const v0, 0x3c67ee91    # 0.014156f

    sput v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mSecondByteStdDev:F

    sput v1, Lorg/mozilla/intl/chardet/GB2312Statistics;->mSecondByteMean:F

    const v0, 0x3ed3b1f2    # 0.413467f

    sput v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mSecondByteWeight:F

    return-void

    nop

    :array_0
    .array-data 4
        0x3c3e835e    # 0.011628f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3c3e835e    # 0.011628f
        0x3c4b35f4    # 0.012403f
        0x3c18676a    # 0.009302f
        0x3b7e047d    # 0.003876f
        0x3c920e1f    # 0.017829f
        0x3d186877    # 0.037209f
        0x3c0bb4d5    # 0.008527f
        0x3c251e32    # 0.010078f
        0x3c9ec2ce    # 0.01938f
        0x3d5e43ee
        0x3c251e32    # 0.010078f
        0x3d2848bf
        0x3cab7564    # 0.02093f
        0x3c986983    # 0.018605f
        0x3c251e32    # 0.010078f
        0x3c57e88a    # 0.013178f
        0x3c855b8a    # 0.016279f
        0x3bcb3a26    # 0.006202f
        0x3c18676a    # 0.009302f
        0x3c8bb4d5    # 0.017054f
        0x3c3e835e    # 0.011628f
        0x3c0bb4d5    # 0.008527f
        0x3b98676a    # 0.004651f
        0x3bcb3a26    # 0.006202f
        0x3c920e1f    # 0.017829f
        0x3ccb35f4    # 0.024806f
        0x3ca51c19    # 0.020155f
        0x3c649b20    # 0.013953f
        0x3d055b8a
        0x3d120f2c    # 0.035659f
        0x3d8bb55b
        0x3c31d0c8    # 0.010853f
        0x3d153bd1
        0x3defba02    # 0.117054f
        0x3ce49d39    # 0.027907f
        0x3dce6320
        0x3c251e32    # 0.010078f
        0x3c920e1f    # 0.017829f
        0x3d7e047d    # 0.062016f
        0x3c4b35f4    # 0.012403f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3acb295f    # 0.00155f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3bcb3a26    # 0.006202f
        0x3cfe047d    # 0.031008f
        0x3bb1cc96    # 0.005426f
        0x3b4b3a26    # 0.003101f
        0x3acb295f    # 0.00155f
        0x3b4b3a26    # 0.003101f
        0x3da84945    # 0.082171f
        0x3c7151e7    # 0.014729f
        0x3be49f51    # 0.006977f
        0x3acb295f    # 0.00155f
        0x3c649b20    # 0.013953f
        0x0
        0x3c649b20    # 0.013953f
        0x3c251e32    # 0.010078f
        0x3c0bb4d5    # 0.008527f
        0x3be49f51    # 0.006977f
        0x3b98676a    # 0.004651f
        0x3b4b3a26    # 0.003101f
        0x3b4b3a26    # 0.003101f
        0x3b4b3a26    # 0.003101f
        0x3c0bb4d5    # 0.008527f
        0x3b4b3a26    # 0.003101f
        0x3bb1cc96    # 0.005426f
        0x3bb1cc96    # 0.005426f
        0x3bb1cc96    # 0.005426f
        0x3b4b3a26    # 0.003101f
        0x3acb295f    # 0.00155f
        0x3bcb3a26    # 0.006202f
        0x3c7151e7    # 0.014729f
        0x3c31d0c8    # 0.010853f
        0x0
        0x3c3e835e    # 0.011628f
        0x0
        0x3d022ee4    # 0.031783f
        0x3c649b20    # 0.013953f
        0x3cf7ab32    # 0.030233f
        0x3d21ef74    # 0.039535f
        0x3c0bb4d5    # 0.008527f
        0x3c7e047d    # 0.015504f
        0x0
        0x3b4b3a26    # 0.003101f
        0x3c0bb4d5    # 0.008527f
        0x3c855b8a    # 0.016279f
        0x3bb1cc96    # 0.005426f
        0x3acb295f    # 0.00155f
        0x3c649b20    # 0.013953f
        0x3c649b20    # 0.013953f
        0x3d382907
        0x3b4b3a26    # 0.003101f
        0x3b98676a    # 0.004651f
        0x3be49f51    # 0.006977f
        0x3acb295f    # 0.00155f
        0x3bb1cc96    # 0.005426f
        0x3c4b35f4    # 0.012403f
        0x3acb295f    # 0.00155f
        0x3c7e047d    # 0.015504f
        0x0
        0x3bcb3a26    # 0.006202f
        0x3acb295f    # 0.00155f
        0x0
        0x3bfe047d    # 0.007752f
        0x3be49f51    # 0.006977f
        0x3acb295f    # 0.00155f
        0x3c18676a    # 0.009302f
        0x3c3e835e    # 0.011628f
        0x3b98676a    # 0.004651f
        0x3c31d0c8    # 0.010853f
        0x3c4b35f4    # 0.012403f
        0x3c920e1f    # 0.017829f
        0x3bb1cc96    # 0.005426f
        0x3ccb35f4    # 0.024806f
        0x0
        0x3bcb3a26    # 0.006202f
        0x0
        0x3da84945    # 0.082171f
        0x3c7e047d    # 0.015504f
        0x3b98676a    # 0.004651f
        0x0
        0x3be49f51    # 0.006977f
        0x3b98676a    # 0.004651f
        0x0
        0x3c0bb4d5    # 0.008527f
        0x3c4b35f4    # 0.012403f
        0x3b98676a    # 0.004651f
        0x3b7e047d    # 0.003876f
        0x3b4b3a26    # 0.003101f
        0x3cb82a13    # 0.022481f
        0x3cc4dca9    # 0.024031f
        0x3acb295f    # 0.00155f
        0x3d41b003
        0x3c18676a    # 0.009302f
        0x3acb295f    # 0.00155f
        0x3bb1cc96    # 0.005426f
        0x3c8bb4d5    # 0.017054f
    .end array-data
.end method


# virtual methods
.method public mFirstByteFreq()[F
    .locals 1

    sget-object v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mFirstByteFreq:[F

    return-object v0
.end method

.method public mFirstByteMean()F
    .locals 1

    sget v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mFirstByteMean:F

    return v0
.end method

.method public mFirstByteStdDev()F
    .locals 1

    sget v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mFirstByteStdDev:F

    return v0
.end method

.method public mFirstByteWeight()F
    .locals 1

    sget v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mFirstByteWeight:F

    return v0
.end method

.method public mSecondByteFreq()[F
    .locals 1

    sget-object v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mSecondByteFreq:[F

    return-object v0
.end method

.method public mSecondByteMean()F
    .locals 1

    sget v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mSecondByteMean:F

    return v0
.end method

.method public mSecondByteStdDev()F
    .locals 1

    sget v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mSecondByteStdDev:F

    return v0
.end method

.method public mSecondByteWeight()F
    .locals 1

    sget v0, Lorg/mozilla/intl/chardet/GB2312Statistics;->mSecondByteWeight:F

    return v0
.end method
