.class public Lcom/baidu/mapapi/BMapManager;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/baidu/mapapi/MKGeneralListener;

.field private b:Lcom/baidu/platform/comapi/a;

.field private c:Landroid/content/Context;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/baidu/mapapi/utils/f;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "vi_voslib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "app_BaiduMapApplib_v2_1_1"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/BMapManager;->b:Lcom/baidu/platform/comapi/a;

    iput-object v0, p0, Lcom/baidu/mapapi/BMapManager;->d:Landroid/os/Handler;

    iput-object v0, p0, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/MKGeneralListener;

    iput-object v0, p0, Lcom/baidu/mapapi/BMapManager;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mapapi/BMapManager;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mapapi/BMapManager;->g:Lcom/baidu/mapapi/utils/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapapi/BMapManager;->h:Z

    iput-object p1, p0, Lcom/baidu/mapapi/BMapManager;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/BMapManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/BMapManager;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mapapi/BMapManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mapapi/BMapManager;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/mapapi/BMapManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/BMapManager;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/mapapi/BMapManager;)Lcom/baidu/mapapi/utils/f;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/BMapManager;->g:Lcom/baidu/mapapi/utils/f;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/mapapi/BMapManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mapapi/BMapManager;->h:Z

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/mapapi/BMapManager;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v0, 0x7d0

    iget-object v1, p0, Lcom/baidu/mapapi/BMapManager;->d:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/engine/a;->b(ILandroid/os/Handler;)V

    const/16 v0, 0x7da

    iget-object v1, p0, Lcom/baidu/mapapi/BMapManager;->d:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/engine/a;->b(ILandroid/os/Handler;)V

    iput-object v2, p0, Lcom/baidu/mapapi/BMapManager;->d:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/MKGeneralListener;

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/MKGeneralListener;

    :cond_1
    invoke-static {}, Lcom/baidu/platform/comapi/b/e;->b()V

    iget-object v0, p0, Lcom/baidu/mapapi/BMapManager;->b:Lcom/baidu/platform/comapi/a;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/a;->c()V

    invoke-static {}, Lcom/baidu/mapapi/search/a;->a()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/BMapManager;->c:Landroid/content/Context;

    return-object v0
.end method

.method public init(Ljava/lang/String;Lcom/baidu/mapapi/MKGeneralListener;)Z
    .locals 4

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/baidu/mapapi/BMapManager;->e:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/baidu/mapapi/BMapManager;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mapapi/BMapManager;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/baidu/mapapi/BMapManager;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mapapi/BMapManager;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/baidu/mapapi/BMapManager;->g:Lcom/baidu/mapapi/utils/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/mapapi/utils/f;

    invoke-direct {v1}, Lcom/baidu/mapapi/utils/f;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/BMapManager;->g:Lcom/baidu/mapapi/utils/f;

    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/BMapManager;->b:Lcom/baidu/platform/comapi/a;

    if-nez v1, :cond_1

    new-instance v1, Lcom/baidu/platform/comapi/a;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/a;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/BMapManager;->b:Lcom/baidu/platform/comapi/a;

    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/BMapManager;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/mapapi/utils/a;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/baidu/mapapi/BMapManager;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/mapapi/search/a;->a(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/MKGeneralListener;

    new-instance v1, Lcom/baidu/mapapi/a;

    invoke-direct {v1, p0}, Lcom/baidu/mapapi/a;-><init>(Lcom/baidu/mapapi/BMapManager;)V

    iput-object v1, p0, Lcom/baidu/mapapi/BMapManager;->d:Landroid/os/Handler;

    const/16 v1, 0x7d0

    iget-object v2, p0, Lcom/baidu/mapapi/BMapManager;->d:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/baidu/platform/comjni/engine/a;->a(ILandroid/os/Handler;)V

    const/16 v1, 0x7da

    iget-object v2, p0, Lcom/baidu/mapapi/BMapManager;->d:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/baidu/platform/comjni/engine/a;->a(ILandroid/os/Handler;)V

    iget-object v1, p0, Lcom/baidu/mapapi/BMapManager;->b:Lcom/baidu/platform/comapi/a;

    iget-object v2, p0, Lcom/baidu/mapapi/BMapManager;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    return v0

    :catch_0
    move-exception v1

    const-string v2, "baidumap"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/mapapi/BMapManager;->f:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/baidu/mapapi/BMapManager;->start()Z

    iget-object v0, p0, Lcom/baidu/mapapi/BMapManager;->g:Lcom/baidu/mapapi/utils/f;

    iget-object v1, p0, Lcom/baidu/mapapi/BMapManager;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mapapi/BMapManager;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method

.method public start()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/BMapManager;->b:Lcom/baidu/platform/comapi/a;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/a;->a()Z

    move-result v0

    return v0
.end method

.method public stop()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/BMapManager;->b:Lcom/baidu/platform/comapi/a;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/a;->b()Z

    move-result v0

    return v0
.end method
