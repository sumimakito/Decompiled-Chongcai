.class public final Lnz;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/persion/PersonInfo2;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/persion/PersonInfo2;)V
    .locals 0

    iput-object p1, p0, Lnz;->a:Lcn/apppark/vertify/activity/persion/PersonInfo2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/persion/PersonInfo2;Lnx;)V
    .locals 0

    invoke-direct {p0, p1}, Lnz;-><init>(Lcn/apppark/vertify/activity/persion/PersonInfo2;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

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
    iget-object v1, p0, Lnz;->a:Lcn/apppark/vertify/activity/persion/PersonInfo2;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->e(Lcn/apppark/vertify/activity/persion/PersonInfo2;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lnz;->a:Lcn/apppark/vertify/activity/persion/PersonInfo2;

    const-string v2, "\u56fe\u7247\u63d0\u4ea4\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    const-string v3, "\u56fe\u7247\u63d0\u4ea4\u6210\u529f"

    invoke-static {v1, v0, v2, v3}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->a(Lcn/apppark/vertify/activity/persion/PersonInfo2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "headFace"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnz;->a:Lcn/apppark/vertify/activity/persion/PersonInfo2;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->f(Lcn/apppark/vertify/activity/persion/PersonInfo2;)Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserHeadFace(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lnz;->a:Lcn/apppark/vertify/activity/persion/PersonInfo2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->h(Lcn/apppark/vertify/activity/persion/PersonInfo2;)Lcn/apppark/mcd/widget/RemoteImageView;

    move-result-object v0

    iget-object v1, p0, Lnz;->a:Lcn/apppark/vertify/activity/persion/PersonInfo2;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->g(Lcn/apppark/vertify/activity/persion/PersonInfo2;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
