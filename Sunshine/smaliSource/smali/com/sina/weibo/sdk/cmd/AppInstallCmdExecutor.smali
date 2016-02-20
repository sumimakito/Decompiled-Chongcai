.class Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;
.super Ljava/lang/Object;
.source "AppInstallCmdExecutor.java"

# interfaces
.implements Lcom/sina/weibo/sdk/cmd/CmdExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;,
        Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$NOTIFICATION_CONSTANTS;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sina/weibo/sdk/cmd/CmdExecutor",
        "<",
        "Lcom/sina/weibo/sdk/cmd/AppInstallCmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final MESSAGE_DO_CMD:I = 0x1

.field private static final MESSAGE_QUIT_LOOP:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final WB_APK_FILE_DIR:Ljava/lang/String;


# instance fields
.field private isStarted:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;

.field private mLooper:Landroid/os/Looper;

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/org_share_data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->WB_APK_FILE_DIR:Ljava/lang/String;

    .line 54
    const-class v0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->TAG:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->isStarted:Z

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static synthetic access$1(Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;Lcom/sina/weibo/sdk/cmd/AppInstallCmd;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->handleCmd(Lcom/sina/weibo/sdk/cmd/AppInstallCmd;)V

    return-void
.end method

.method static synthetic access$2(Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;)Landroid/os/Looper;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;Z)V
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->isStarted:Z

    return-void
.end method

.method private static buildInstallApkIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 346
    const/4 v3, 0x0

    .line 347
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 348
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .local v1, "intentInstall":Landroid/content/Intent;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 351
    .local v2, "localUri":Landroid/net/Uri;
    const-string v4, "application/vnd.android.package-archive"

    .line 350
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    invoke-static {p0, v5, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 357
    .end local v1    # "intentInstall":Landroid/content/Intent;
    .end local v2    # "localUri":Landroid/net/Uri;
    :goto_0
    return-object v3

    .line 354
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 355
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    goto :goto_0
.end method

.method private static checkApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v2

    .line 164
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 165
    const/4 v5, 0x1

    .line 164
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 166
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    move v2, v3

    .line 169
    goto :goto_0

    .line 170
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private static checkApkSign(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .locals 6
    .param p0, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .param p1, "appSign"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 292
    if-nez p0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v3

    .line 295
    :cond_1
    iget-object v4, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v4, :cond_2

    .line 297
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_0

    .line 298
    const/4 v3, 0x1

    goto :goto_0

    .line 304
    :cond_2
    const-string v1, ""

    .line 305
    .local v1, "md5Sign":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    iget-object v4, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v4

    if-lt v0, v4, :cond_3

    .line 311
    if-eqz v1, :cond_0

    .line 314
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 306
    :cond_3
    iget-object v4, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .line 307
    .local v2, "str":[B
    if-eqz v2, :cond_4

    .line 308
    invoke-static {v2}, Lcom/sina/weibo/sdk/utils/MD5;->hexdigest([B)Ljava/lang/String;

    move-result-object v1

    .line 305
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static checkPackageName(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .locals 2
    .param p0, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 277
    if-nez p0, :cond_0

    .line 278
    const/4 v1, 0x0

    .line 282
    :goto_0
    return v1

    .line 281
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 282
    .local v0, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private static generateSaveFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 323
    const-string v0, ""

    .line 324
    .local v0, "fileName":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 325
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 326
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 328
    :cond_0
    return-object v0
.end method

.method private static getNotificationTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 367
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const-string v0, "Weibo"

    .line 369
    const-string v1, "\u5fae\u535a"

    .line 370
    const-string v2, "\u5fae\u535a"

    .line 368
    invoke-static {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 372
    .end local p1    # "title":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private handleCmd(Lcom/sina/weibo/sdk/cmd/AppInstallCmd;)V
    .locals 14
    .param p1, "cmd"    # Lcom/sina/weibo/sdk/cmd/AppInstallCmd;

    .prologue
    .line 93
    iget-object v10, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mContext:Landroid/content/Context;

    invoke-static {v10, p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->needActivate(Landroid/content/Context;Lcom/sina/weibo/sdk/cmd/AppInstallCmd;)Z

    move-result v5

    .line 94
    .local v5, "needActivate":Z
    if-nez v5, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    sget-object v0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->WB_APK_FILE_DIR:Ljava/lang/String;

    .line 99
    .local v0, "dir":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "downloadUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->getAppVersion()J

    move-result-wide v8

    .line 102
    .local v8, "versionCode":J
    iget-object v10, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mContext:Landroid/content/Context;

    invoke-static {v10, v0, p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->walkDir(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/cmd/AppInstallCmd;)Landroid/util/Pair;

    move-result-object v6

    .line 103
    .local v6, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/io/File;>;"
    if-eqz v6, :cond_2

    iget-object v10, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v10, :cond_2

    iget-object v10, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v10, v8

    if-ltz v10, :cond_2

    .line 105
    iget-object v11, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mContext:Landroid/content/Context;

    iget-object v10, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, p1, v10}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->showNotification(Landroid/content/Context;Lcom/sina/weibo/sdk/cmd/AppInstallCmd;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v10, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->isWifiValid(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 108
    const-string v4, ""

    .line 110
    .local v4, "filePath":Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mContext:Landroid/content/Context;

    .line 111
    const-string v11, "GET"

    new-instance v12, Lcom/sina/weibo/sdk/net/WeiboParameters;

    const-string v13, ""

    invoke-direct {v12, v13}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-static {v10, v1, v11, v12}, Lcom/sina/weibo/sdk/net/NetUtils;->internalGetRedirectUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;)Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, "redirectUrl":Ljava/lang/String;
    invoke-static {v7}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->generateSaveFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "fileName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, ".apk"

    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 115
    :cond_3
    sget-object v10, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->TAG:Ljava/lang/String;

    const-string v11, "redirectDownloadUrl is illeagle"

    invoke-static {v10, v11}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 124
    iget-object v10, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mContext:Landroid/content/Context;

    invoke-static {v10, p1, v4}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->showNotification(Landroid/content/Context;Lcom/sina/weibo/sdk/cmd/AppInstallCmd;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_4
    :try_start_1
    iget-object v10, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mContext:Landroid/content/Context;

    invoke-static {v10, v7, v0, v3}, Lcom/sina/weibo/sdk/net/NetUtils;->internalDownloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 123
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 124
    iget-object v10, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mContext:Landroid/content/Context;

    invoke-static {v10, p1, v4}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->showNotification(Landroid/content/Context;Lcom/sina/weibo/sdk/cmd/AppInstallCmd;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v7    # "redirectUrl":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Lcom/sina/weibo/sdk/exception/WeiboException;
    :try_start_2
    invoke-virtual {v2}, Lcom/sina/weibo/sdk/exception/WeiboException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 124
    iget-object v10, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mContext:Landroid/content/Context;

    invoke-static {v10, p1, v4}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->showNotification(Landroid/content/Context;Lcom/sina/weibo/sdk/cmd/AppInstallCmd;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    .end local v2    # "e":Lcom/sina/weibo/sdk/exception/WeiboException;
    :catchall_0
    move-exception v10

    .line 123
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 124
    iget-object v11, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mContext:Landroid/content/Context;

    invoke-static {v11, p1, v4}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->showNotification(Landroid/content/Context;Lcom/sina/weibo/sdk/cmd/AppInstallCmd;Ljava/lang/String;)V

    .line 126
    :cond_5
    throw v10
.end method

.method private static isSpecifiedApk(Landroid/content/pm/PackageInfo;Ljava/util/List;Ljava/lang/String;)Z
    .locals 5
    .param p0, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "appSign"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 261
    .local v0, "packageChecked":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 267
    :goto_0
    invoke-static {p0, p2}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->checkApkSign(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v2

    .line 268
    .local v2, "signChecked":Z
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 261
    .end local v2    # "signChecked":Z
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 262
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->checkPackageName(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    const/4 v0, 0x1

    .line 264
    goto :goto_0

    .line 268
    .end local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "signChecked":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static needActivate(Landroid/content/Context;Lcom/sina/weibo/sdk/cmd/AppInstallCmd;)Z
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cmd"    # Lcom/sina/weibo/sdk/cmd/AppInstallCmd;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 133
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->getAppPackage()Ljava/util/List;

    move-result-object v3

    .line 134
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->getAppSign()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 136
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 137
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->getNotificationText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v4

    .line 140
    :cond_1
    const-string v6, "com.sina.weibo"

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 141
    invoke-static {p0}, Lcom/sina/weibo/sdk/WeiboAppManager;->getInstance(Landroid/content/Context;)Lcom/sina/weibo/sdk/WeiboAppManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sina/weibo/sdk/WeiboAppManager;->getWeiboInfo()Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    move-result-object v1

    .line 142
    .local v1, "mWeiboInfo":Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->isLegal()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    move v4, v5

    goto :goto_0

    .line 145
    .end local v1    # "mWeiboInfo":Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    move v4, v5

    .line 151
    goto :goto_0

    .line 145
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 146
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->checkApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 147
    .local v0, "installed":Z
    if-eqz v0, :cond_4

    goto :goto_0
.end method

.method private static showNotification(Landroid/content/Context;Lcom/sina/weibo/sdk/cmd/AppInstallCmd;Ljava/lang/String;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cmd"    # Lcom/sina/weibo/sdk/cmd/AppInstallCmd;
    .param p2, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 332
    invoke-static {}, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->buildUpon()Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->getNotificationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->setNotificationContent(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;

    move-result-object v0

    .line 333
    invoke-static {p0, p2}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->buildInstallApkIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->setNotificationPendingIntent(Landroid/app/PendingIntent;)Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;

    move-result-object v0

    .line 334
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->getNotificationTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->getNotificationTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->setNotificationTitle(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;

    move-result-object v0

    .line 335
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->getNotificationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->setTickerText(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->build(Landroid/content/Context;)Lcom/sina/weibo/sdk/utils/SDKNotification;

    move-result-object v0

    .line 336
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/SDKNotification;->show(I)V

    .line 337
    return-void
.end method

.method private static walkDir(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/cmd/AppInstallCmd;)Landroid/util/Pair;
    .locals 13
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "cmd"    # Lcom/sina/weibo/sdk/cmd/AppInstallCmd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/sina/weibo/sdk/cmd/AppInstallCmd;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-object v9

    .line 222
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "dirFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 227
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 228
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 232
    const/4 v5, 0x0

    .line 233
    .local v5, "newestVersion":I
    const/4 v8, 0x0

    .line 234
    .local v8, "weiboApkFile":Ljava/io/File;
    array-length v10, v3

    const/4 v9, 0x0

    :goto_1
    if-lt v9, v10, :cond_2

    .line 249
    new-instance v9, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 234
    :cond_2
    aget-object v1, v3, v9

    .line 235
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "fileName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, ".apk"

    invoke-virtual {v2, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 238
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 239
    const/16 v12, 0x40

    .line 238
    invoke-virtual {v6, v11, v12}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 240
    .local v7, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {p2}, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->getAppPackage()Ljava/util/List;

    move-result-object v11

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->getAppSign()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v11, v12}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->isSpecifiedApk(Landroid/content/pm/PackageInfo;Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    .line 241
    .local v4, "isSpecifiedApk":Z
    if-nez v4, :cond_4

    .line 234
    .end local v4    # "isSpecifiedApk":Z
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 243
    .restart local v4    # "isSpecifiedApk":Z
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    iget v11, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v11, v5, :cond_3

    .line 244
    iget v5, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 245
    move-object v8, v1

    goto :goto_2
.end method


# virtual methods
.method public doExecutor(Lcom/sina/weibo/sdk/cmd/AppInstallCmd;)Z
    .locals 3
    .param p1, "cmd"    # Lcom/sina/weibo/sdk/cmd/AppInstallCmd;

    .prologue
    .line 199
    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->thread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mHandler:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;

    if-nez v1, :cond_1

    .line 200
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "no thread running. please call start method first!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_1
    if-eqz p1, :cond_2

    .line 203
    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mHandler:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 204
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 205
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 206
    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mHandler:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;

    invoke-virtual {v1, v0}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;->sendMessage(Landroid/os/Message;)Z

    .line 208
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public bridge synthetic doExecutor(Lcom/sina/weibo/sdk/cmd/BaseCmd;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;

    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->doExecutor(Lcom/sina/weibo/sdk/cmd/AppInstallCmd;)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->isStarted:Z

    if-eqz v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->isStarted:Z

    .line 180
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->thread:Landroid/os/HandlerThread;

    .line 181
    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 183
    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mLooper:Landroid/os/Looper;

    .line 184
    new-instance v0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;

    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;-><init>(Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mHandler:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 188
    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->thread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mHandler:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;

    if-nez v1, :cond_1

    .line 189
    :cond_0
    sget-object v1, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->TAG:Ljava/lang/String;

    const-string v2, "no thread running. please call start method first!"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mHandler:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 193
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 194
    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mHandler:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;

    invoke-virtual {v1, v0}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
