.class public final Lft;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuySelProvience;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuySelProvience;)V
    .locals 0

    iput-object p1, p0, Lft;->a:Lcn/apppark/vertify/activity/buy/BuySelProvience;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lft;->a:Lcn/apppark/vertify/activity/buy/BuySelProvience;

    iget-object v1, p0, Lft;->a:Lcn/apppark/vertify/activity/buy/BuySelProvience;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuySelProvience;->a(Lcn/apppark/vertify/activity/buy/BuySelProvience;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/buy/BuySelProvience;->getProSet(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lft;->a:Lcn/apppark/vertify/activity/buy/BuySelProvience;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySelProvience;->c(Lcn/apppark/vertify/activity/buy/BuySelProvience;)Lfu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfu;->sendEmptyMessage(I)Z

    return-void
.end method
