.class public final Lmk;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/self/SelfAnimaView;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/self/SelfAnimaView;)V
    .locals 0

    iput-object p1, p0, Lmk;->a:Lcn/apppark/vertify/activity/free/self/SelfAnimaView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lmk;->a:Lcn/apppark/vertify/activity/free/self/SelfAnimaView;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->animationContinue()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lmk;->a:Lcn/apppark/vertify/activity/free/self/SelfAnimaView;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->animationEnd()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
