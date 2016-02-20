.class public final Lbl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)V
    .locals 0

    iput-object p1, p0, Lbl;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lbl;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->a(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lbl;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-static {v1}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->a(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
