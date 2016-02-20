.class public final Llb;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/ElasticScrollView$ElasticScrollViewListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/SProductBase;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)V
    .locals 0

    iput-object p1, p0, Llb;->a:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(I)V
    .locals 2

    sget v0, Lcn/apppark/ckj10185912/YYGYContants;->PRODUCT_INFO_HEIGHT:I

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Llb;->a:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->a(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setScroll(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Llb;->a:Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->a(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setScroll(Z)V

    goto :goto_0
.end method
