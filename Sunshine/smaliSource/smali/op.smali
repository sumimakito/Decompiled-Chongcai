.class public final Lop;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/persion/PersionMyTieBa;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/persion/PersionMyTieBa;)V
    .locals 0

    iput-object p1, p0, Lop;->a:Lcn/apppark/vertify/activity/persion/PersionMyTieBa;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/persion/PersionMyTieBa;Loo;)V
    .locals 0

    invoke-direct {p0, p1}, Lop;-><init>(Lcn/apppark/vertify/activity/persion/PersionMyTieBa;)V

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
    iget-object v1, p0, Lop;->a:Lcn/apppark/vertify/activity/persion/PersionMyTieBa;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->a(Lcn/apppark/vertify/activity/persion/PersionMyTieBa;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
