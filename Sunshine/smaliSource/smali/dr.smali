.class public final Ldr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)V
    .locals 0

    iput-object p1, p0, Ldr;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v1, p0, Ldr;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/alipay/sdk/app/PayTask;->checkAccountIfExist()Z

    move-result v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x8

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Ldr;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->b(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Ldu;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldu;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
