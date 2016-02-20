.class public final Lkx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)V
    .locals 0

    iput-object p1, p0, Lkx;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkx;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->c(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)Lkz;

    move-result-object v0

    iget-object v1, p0, Lkx;->a:Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->c(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)Lkz;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lkz;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lkz;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
