.class public final Lfn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuySelArea;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuySelArea;)V
    .locals 0

    iput-object p1, p0, Lfn;->a:Lcn/apppark/vertify/activity/buy/BuySelArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lfn;->a:Lcn/apppark/vertify/activity/buy/BuySelArea;

    iget-object v1, p0, Lfn;->a:Lcn/apppark/vertify/activity/buy/BuySelArea;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuySelArea;->a(Lcn/apppark/vertify/activity/buy/BuySelArea;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/buy/BuySelArea;->getProSet(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lfn;->a:Lcn/apppark/vertify/activity/buy/BuySelArea;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySelArea;->c(Lcn/apppark/vertify/activity/buy/BuySelArea;)Lfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfo;->sendEmptyMessage(I)Z

    return-void
.end method
