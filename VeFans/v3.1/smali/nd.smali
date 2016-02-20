.class public final Lnd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/persion/PersionCollection;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/persion/PersionCollection;)V
    .locals 0

    iput-object p1, p0, Lnd;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 4

    iget-object v0, p0, Lnd;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v0, p1}, Lcn/apppark/vertify/activity/persion/PersionCollection;->a(Lcn/apppark/vertify/activity/persion/PersionCollection;I)I

    iget-object v0, p0, Lnd;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->a(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lnk;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lnk;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lnd;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    iget-object v1, p0, Lnd;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/PersionCollection;->b(Lcn/apppark/vertify/activity/persion/PersionCollection;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/persion/PersionCollection;->b(Lcn/apppark/vertify/activity/persion/PersionCollection;I)V

    return-void
.end method
