.class public final Lsc;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TMyHistory;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/tieba/TMyHistory;)V
    .locals 0

    iput-object p1, p0, Lsc;->a:Lcn/apppark/vertify/activity/tieba/TMyHistory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/tieba/TMyHistory;Lsa;)V
    .locals 0

    invoke-direct {p0, p1}, Lsc;-><init>(Lcn/apppark/vertify/activity/tieba/TMyHistory;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "soresult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lsc;->a:Lcn/apppark/vertify/activity/tieba/TMyHistory;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMyHistory;->c(Lcn/apppark/vertify/activity/tieba/TMyHistory;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    iget-object v0, p0, Lsc;->a:Lcn/apppark/vertify/activity/tieba/TMyHistory;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMyHistory;->d(Lcn/apppark/vertify/activity/tieba/TMyHistory;)V

    iget-object v0, p0, Lsc;->a:Lcn/apppark/vertify/activity/tieba/TMyHistory;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMyHistory;->e(Lcn/apppark/vertify/activity/tieba/TMyHistory;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
