.class public Lcn/apppark/ckj10185912/wxapi/AppRegister;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v1, v1, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getWeixinAppID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    return-void
.end method
