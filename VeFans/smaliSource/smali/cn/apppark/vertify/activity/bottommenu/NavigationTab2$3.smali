.class Lcn/apppark/vertify/activity/bottommenu/NavigationTab2$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2$3;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2$3;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->b(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2$3;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-static {v1}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->b(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2$3;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-static {v2}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->c(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2$3;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->a(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2$3;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-static {v1}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->a(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
