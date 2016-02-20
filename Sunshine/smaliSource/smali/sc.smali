.class public final Lsc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TEdit;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/tieba/TEdit;)V
    .locals 0

    iput-object p1, p0, Lsc;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

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
    .locals 2

    iget-object v0, p0, Lsc;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0, p1}, Lcn/apppark/vertify/activity/tieba/TEdit;->a(Lcn/apppark/vertify/activity/tieba/TEdit;I)I

    iget-object v0, p0, Lsc;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->e(Lcn/apppark/vertify/activity/tieba/TEdit;)I

    move-result v0

    iget-object v1, p0, Lsc;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TEdit;->f(Lcn/apppark/vertify/activity/tieba/TEdit;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->changePoint(ILjava/util/ArrayList;)V

    return-void
.end method
