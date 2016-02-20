.class public Lorg/mozilla/intl/chardet/nsEUCTWVerifier;
.super Lorg/mozilla/intl/chardet/nsVerifier;


# static fields
.field static cclass:[I

.field static charset:Ljava/lang/String;

.field static stFactor:I

.field static states:[I


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x33333333

    const v3, 0x22222222

    invoke-direct {p0}, Lorg/mozilla/intl/chardet/nsVerifier;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    sput-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    aput v3, v0, v5

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const v1, 0x222222

    aput v1, v0, v6

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    aput v3, v0, v7

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/4 v1, 0x3

    const v2, 0x22220222

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/4 v1, 0x4

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/4 v1, 0x5

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/4 v1, 0x6

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/4 v1, 0x7

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x8

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0xa

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0xb

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0xc

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0xd

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0xe

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0xf

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x10

    aput v5, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x11

    const/high16 v2, 0x6000000

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x12

    aput v5, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x13

    aput v5, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x14

    const v2, 0x44444430

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x15

    const v2, 0x11111155

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x16

    const v2, 0x11111111

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x17

    const v2, 0x11111111

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x18

    const v2, 0x33331311

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x19

    aput v4, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x1a

    aput v4, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x1b

    aput v4, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x1c

    aput v4, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x1d

    aput v4, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x1e

    aput v4, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    const/16 v1, 0x1f

    const v2, 0x3333333

    aput v2, v0, v1

    const/4 v0, 0x6

    new-array v0, v0, [I

    sput-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->states:[I

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->states:[I

    const v1, 0x14333011

    aput v1, v0, v5

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->states:[I

    const v1, 0x22111111

    aput v1, v0, v6

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->states:[I

    const v1, 0x10122222

    aput v1, v0, v7

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->states:[I

    const/4 v1, 0x3

    const v2, 0x11111000

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->states:[I

    const/4 v1, 0x4

    const v2, 0x101115

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->states:[I

    const/4 v1, 0x5

    const/16 v2, 0x10

    aput v2, v0, v1

    const-string v0, "x-euc-tw"

    sput-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->charset:Ljava/lang/String;

    const/4 v0, 0x7

    sput v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->stFactor:I

    return-void
.end method


# virtual methods
.method public cclass()[I
    .locals 1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->cclass:[I

    return-object v0
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public isUCS2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public stFactor()I
    .locals 1

    sget v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->stFactor:I

    return v0
.end method

.method public states()[I
    .locals 1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;->states:[I

    return-object v0
.end method
