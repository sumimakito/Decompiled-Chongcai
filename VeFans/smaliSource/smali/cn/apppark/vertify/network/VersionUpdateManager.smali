.class public Lcn/apppark/vertify/network/VersionUpdateManager;
.super Ljava/lang/Object;


# instance fields
.field private final DOWNLOAD_FAILE:I

.field private final DOWNLOAD_ING:I

.field private final DOWNLOAD_OVER:I

.field private apkUrl:Ljava/lang/String;

.field private downloadApkRunnable:Ljava/lang/Runnable;

.field private downloadApkThread:Ljava/lang/Thread;

.field private flag:Ljava/lang/String;

.field private interceptFlag:Ljava/lang/Boolean;

.field private mProgressDialog:Lcn/apppark/mcd/widget/DialogProgress;

.field private mhandler:Landroid/os/Handler;

.field private progress:I

.field private saveFileName:Ljava/lang/String;

.field private savePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->interceptFlag:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->downloadApkThread:Ljava/lang/Thread;

    const-string v0, ""

    iput-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->apkUrl:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->flag:Ljava/lang/String;

    iput v1, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->progress:I

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->DOWNLOAD_ING:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->DOWNLOAD_OVER:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->DOWNLOAD_FAILE:I

    new-instance v0, Lvf;

    invoke-direct {v0, p0}, Lvf;-><init>(Lcn/apppark/vertify/network/VersionUpdateManager;)V

    iput-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->mhandler:Landroid/os/Handler;

    new-instance v0, Lvk;

    invoke-direct {v0, p0}, Lvk;-><init>(Lcn/apppark/vertify/network/VersionUpdateManager;)V

    iput-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->downloadApkRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcn/apppark/mcd/util/PublicUtil;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->savePath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/yygy.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->saveFileName:Ljava/lang/String;

    iput-object p1, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->apkUrl:Ljava/lang/String;

    iput-object p2, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->flag:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/network/VersionUpdateManager;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->progress:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/network/VersionUpdateManager;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->progress:I

    return p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/network/VersionUpdateManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->interceptFlag:Ljava/lang/Boolean;

    return-object p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/network/VersionUpdateManager;)Lcn/apppark/mcd/widget/DialogProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->mProgressDialog:Lcn/apppark/mcd/widget/DialogProgress;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/network/VersionUpdateManager;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/network/VersionUpdateManager;->installApk()V

    return-void
.end method

.method public static synthetic d(Lcn/apppark/vertify/network/VersionUpdateManager;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/network/VersionUpdateManager;->showDownloadDialog()V

    return-void
.end method

.method private downloadLatestVersionApk()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->downloadApkRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->downloadApkThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->downloadApkThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic e(Lcn/apppark/vertify/network/VersionUpdateManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->apkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/network/VersionUpdateManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->savePath:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/network/VersionUpdateManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->saveFileName:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic h(Lcn/apppark/vertify/network/VersionUpdateManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->mhandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/network/VersionUpdateManager;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->interceptFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method private installApk()V
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->saveFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v0, v1}, Lcn/apppark/ckj10185912/Main;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showDownloadDialog()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcn/apppark/mcd/widget/DialogProgress;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-direct {v0, v1}, Lcn/apppark/mcd/widget/DialogProgress;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->mProgressDialog:Lcn/apppark/mcd/widget/DialogProgress;

    iget-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->mProgressDialog:Lcn/apppark/mcd/widget/DialogProgress;

    const-string v1, "\u8f6f\u4ef6\u66f4\u65b0"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogProgress;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->mProgressDialog:Lcn/apppark/mcd/widget/DialogProgress;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogProgress;->setProgressStyle(I)V

    iget-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->mProgressDialog:Lcn/apppark/mcd/widget/DialogProgress;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogProgress;->setMax(I)V

    iget-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->mProgressDialog:Lcn/apppark/mcd/widget/DialogProgress;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/DialogProgress;->setProgress(I)V

    iget-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->mProgressDialog:Lcn/apppark/mcd/widget/DialogProgress;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogProgress;->show()V

    iget-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->mProgressDialog:Lcn/apppark/mcd/widget/DialogProgress;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/DialogProgress;->setCancelable(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->mProgressDialog:Lcn/apppark/mcd/widget/DialogProgress;

    new-instance v1, Lvj;

    invoke-direct {v1, p0}, Lvj;-><init>(Lcn/apppark/vertify/network/VersionUpdateManager;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogProgress;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->downloadApkRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->downloadApkThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->downloadApkThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private showNoticeDialog()V
    .locals 5

    const v4, 0x7f08001e

    const v2, 0x7f08001d

    const/4 v3, 0x0

    const-string v0, "1"

    iget-object v1, p0, Lcn/apppark/vertify/network/VersionUpdateManager;->flag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-direct {v0, v1}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->setTitle(I)Lcn/apppark/mcd/widget/DialogOneBtn$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->setMessage(I)Lcn/apppark/mcd/widget/DialogOneBtn$Builder;

    move-result-object v0

    const-string v1, "\u66f4\u65b0"

    new-instance v2, Lvg;

    invoke-direct {v2, p0}, Lvg;-><init>(Lcn/apppark/vertify/network/VersionUpdateManager;)V

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogOneBtn$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-direct {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setTitle(I)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setMessage(I)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const-string v1, "\u66f4\u65b0"

    new-instance v2, Lvi;

    invoke-direct {v2, p0}, Lvi;-><init>(Lcn/apppark/vertify/network/VersionUpdateManager;)V

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const-string v1, "\u4ee5\u540e\u518d\u8bf4"

    new-instance v2, Lvh;

    invoke-direct {v2, p0}, Lvh;-><init>(Lcn/apppark/vertify/network/VersionUpdateManager;)V

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method public checkUpdate()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/network/VersionUpdateManager;->showNoticeDialog()V

    return-void
.end method
