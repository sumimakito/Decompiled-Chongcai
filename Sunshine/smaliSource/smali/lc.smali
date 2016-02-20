.class public final Llc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/SProductBase;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)V
    .locals 0

    iput-object p1, p0, Llc;->a:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Llc;->a:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->q(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Lcn/apppark/mcd/widget/ElasticScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llc;->a:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->q(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Lcn/apppark/mcd/widget/ElasticScrollView;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/ElasticScrollView;->fullScroll(I)Z

    :cond_0
    return-void
.end method
