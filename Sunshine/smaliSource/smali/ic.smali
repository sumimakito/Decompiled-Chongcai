.class public final Lic;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)V
    .locals 0

    iput-object p1, p0, Lic;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;Lhy;)V
    .locals 0

    invoke-direct {p0, p1}, Lic;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "soresult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lic;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;Z)Z

    iget-object v1, p0, Lic;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    iget-object v1, v1, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->c:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const v1, 0x7f080040

    const v2, 0x7f080041

    invoke-static {v0, v1, v2}, Lcn/apppark/ckj10185912/YYGYContants;->checkResult(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lic;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->f(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
