.class public final Luj;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/base/InitClient;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/base/InitClient;)V
    .locals 0

    iput-object p1, p0, Luj;->a:Lcn/apppark/vertify/base/InitClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Luj;->a:Lcn/apppark/vertify/base/InitClient;

    invoke-static {v0}, Lcn/apppark/vertify/base/InitClient;->a(Lcn/apppark/vertify/base/InitClient;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luj;->a:Lcn/apppark/vertify/base/InitClient;

    invoke-static {v0}, Lcn/apppark/vertify/base/InitClient;->c(Lcn/apppark/vertify/base/InitClient;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Luj;->a:Lcn/apppark/vertify/base/InitClient;

    invoke-static {v2}, Lcn/apppark/vertify/base/InitClient;->b(Lcn/apppark/vertify/base/InitClient;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x64

    iget-object v3, p0, Luj;->a:Lcn/apppark/vertify/base/InitClient;

    invoke-static {v3}, Lcn/apppark/vertify/base/InitClient;->a(Lcn/apppark/vertify/base/InitClient;)I

    move-result v3

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Luj;->a:Lcn/apppark/vertify/base/InitClient;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/InitClient;->initFinish()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Luj;->a:Lcn/apppark/vertify/base/InitClient;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/InitClient;->setResult(I)V

    iget-object v0, p0, Luj;->a:Lcn/apppark/vertify/base/InitClient;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/InitClient;->initFinish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
