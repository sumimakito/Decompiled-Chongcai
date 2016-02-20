.class public final Lfv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lfv;->c:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    iput-object p2, p0, Lfv;->a:Ljava/lang/String;

    iput p3, p0, Lfv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v1, p0, Lfv;->c:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lfv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iget v2, p0, Lfv;->b:I

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lfv;->c:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->a(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Lfx;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfx;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
