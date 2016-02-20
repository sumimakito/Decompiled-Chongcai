.class public Lcom/sina/weibo/sdk/ApiUtils;
.super Ljava/lang/Object;
.source "ApiUtils.java"


# static fields
.field public static final BUILD_INT:I = 0x286e

.field public static final BUILD_INT_440:I = 0x2873

.field public static final BUILD_INT_VER_2_2:I = 0x286f

.field public static final BUILD_INT_VER_2_3:I = 0x2870

.field public static final BUILD_INT_VER_2_5:I = 0x2871

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/sina/weibo/sdk/ApiUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/ApiUtils;->TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static containSign([Landroid/content/pm/Signature;Ljava/lang/String;)Z
    .locals 6
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .param p1, "destSign"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 83
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v2

    .line 86
    :cond_1
    array-length v4, p0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, p0, v3

    .line 87
    .local v1, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lcom/sina/weibo/sdk/utils/MD5;->hexdigest([B)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 89
    sget-object v2, Lcom/sina/weibo/sdk/ApiUtils;->TAG:Ljava/lang/String;

    const-string v3, "check pass"

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v2, 0x1

    goto :goto_0

    .line 86
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static validateWeiboSign(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    :goto_0
    return v2

    .line 65
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 66
    const/16 v4, 0x40

    .line 65
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 71
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const-string v3, "18da2bf10352443a00a5e046d9fca6bd"

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/ApiUtils;->containSign([Landroid/content/pm/Signature;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 67
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "localNameNotFoundException":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method
