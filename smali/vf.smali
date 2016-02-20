.class public final Lvf;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/network/VersionUpdateManager;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/network/VersionUpdateManager;)V
    .locals 0

    iput-object p1, p0, Lvf;->a:Lcn/apppark/vertify/network/VersionUpdateManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lvf;->a:Lcn/apppark/vertify/network/VersionUpdateManager;

    invoke-static {v0}, Lcn/apppark/vertify/network/VersionUpdateManager;->b(Lcn/apppark/vertify/network/VersionUpdateManager;)Lcn/apppark/mcd/widget/DialogProgress;

    move-result-object v0

    iget-object v1, p0, Lvf;->a:Lcn/apppark/vertify/network/VersionUpdateManager;

    invoke-static {v1}, Lcn/apppark/vertify/network/VersionUpdateManager;->a(Lcn/apppark/vertify/network/VersionUpdateManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogProgress;->setProgress(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lvf;->a:Lcn/apppark/vertify/network/VersionUpdateManager;

    invoke-static {v0}, Lcn/apppark/vertify/network/VersionUpdateManager;->b(Lcn/apppark/vertify/network/VersionUpdateManager;)Lcn/apppark/mcd/widget/DialogProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogProgress;->dismiss()V

    iget-object v0, p0, Lvf;->a:Lcn/apppark/vertify/network/VersionUpdateManager;

    invoke-static {v0}, Lcn/apppark/vertify/network/VersionUpdateManager;->c(Lcn/apppark/vertify/network/VersionUpdateManager;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lvf;->a:Lcn/apppark/vertify/network/VersionUpdateManager;

    invoke-static {v0}, Lcn/apppark/vertify/network/VersionUpdateManager;->b(Lcn/apppark/vertify/network/VersionUpdateManager;)Lcn/apppark/mcd/widget/DialogProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogProgress;->dismiss()V

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const v1, 0x7f080016

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
