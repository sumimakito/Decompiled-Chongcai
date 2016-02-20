.class public final Lfq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuySelCity;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuySelCity;)V
    .locals 0

    iput-object p1, p0, Lfq;->a:Lcn/apppark/vertify/activity/buy/BuySelCity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lfq;->a:Lcn/apppark/vertify/activity/buy/BuySelCity;

    iget-object v1, p0, Lfq;->a:Lcn/apppark/vertify/activity/buy/BuySelCity;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuySelCity;->a(Lcn/apppark/vertify/activity/buy/BuySelCity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/buy/BuySelCity;->getProSet(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lfq;->a:Lcn/apppark/vertify/activity/buy/BuySelCity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySelCity;->d(Lcn/apppark/vertify/activity/buy/BuySelCity;)Lfr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfr;->sendEmptyMessage(I)Z

    return-void
.end method
