.class public final Lov;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/service/LBSService;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/service/LBSService;)V
    .locals 0

    iput-object p1, p0, Lov;->a:Lcn/apppark/vertify/activity/service/LBSService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/service/LBSService;Lou;)V
    .locals 0

    invoke-direct {p0, p1}, Lov;-><init>(Lcn/apppark/vertify/activity/service/LBSService;)V

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

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lov;->a:Lcn/apppark/vertify/activity/service/LBSService;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/service/LBSService;->a(Lcn/apppark/vertify/activity/service/LBSService;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lov;->a:Lcn/apppark/vertify/activity/service/LBSService;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/service/LBSService;->a(Lcn/apppark/vertify/activity/service/LBSService;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
