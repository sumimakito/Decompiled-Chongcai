.class public Lcn/apppark/vertify/activity/buy/BuyBaseAct;
.super Lcn/apppark/vertify/activity/BaseAct;


# instance fields
.field protected info:Lcn/apppark/vertify/base/ClientPersionInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/BaseAct;-><init>()V

    return-void
.end method


# virtual methods
.method protected getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcn/apppark/vertify/base/ClientPersionInfo;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    return-object v0
.end method
