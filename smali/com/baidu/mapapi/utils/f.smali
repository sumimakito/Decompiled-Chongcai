.class public Lcom/baidu/mapapi/utils/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/baidu/mapapi/MKGeneralListener;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/mapapi/utils/g;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/utils/g;-><init>(Lcom/baidu/mapapi/utils/f;)V

    iput-object v0, p0, Lcom/baidu/mapapi/utils/f;->b:Landroid/os/Handler;

    const/16 v0, 0x7da

    iget-object v1, p0, Lcom/baidu/mapapi/utils/f;->b:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/engine/a;->a(ILandroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/utils/f;)Lcom/baidu/mapapi/MKGeneralListener;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/utils/f;->a:Lcom/baidu/mapapi/MKGeneralListener;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1, p2}, Lcom/baidu/platform/comjni/permissioncheck/PermissionCheck;->check(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
