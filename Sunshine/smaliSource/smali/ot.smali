.class public final Lot;
.super Landroid/os/Handler;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/persion/PersonInfo;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/persion/PersonInfo;)V
    .locals 0

    iput-object p1, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/PersonInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/persion/PersonInfo;Loq;)V
    .locals 0

    invoke-direct {p0, p1}, Lot;-><init>(Lcn/apppark/vertify/activity/persion/PersonInfo;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "soresult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/PersonInfo;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/PersonInfo;->c(Lcn/apppark/vertify/activity/persion/PersonInfo;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/PersonInfo;

    const-string v2, "\u56fe\u7247\u63d0\u4ea4\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    const-string v3, "\u56fe\u7247\u63d0\u4ea4\u6210\u529f"

    invoke-static {v1, v0, v2, v3}, Lcn/apppark/vertify/activity/persion/PersonInfo;->a(Lcn/apppark/vertify/activity/persion/PersonInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

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

    iget-object v1, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/PersonInfo;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/PersonInfo;->d(Lcn/apppark/vertify/activity/persion/PersonInfo;)Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserHeadFace(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/PersonInfo;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->f(Lcn/apppark/vertify/activity/persion/PersonInfo;)Lcn/apppark/mcd/widget/RemoteImageView;

    move-result-object v0

    iget-object v1, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/PersonInfo;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/PersonInfo;->e(Lcn/apppark/vertify/activity/persion/PersonInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :sswitch_1
    iget-object v1, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/PersonInfo;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/PersonInfo;->a(Lcn/apppark/vertify/activity/persion/PersonInfo;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    iget-object v1, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/PersonInfo;

    const-string v2, "\u4e2a\u4eba\u4fe1\u606f\u83b7\u53d6\u5931\u8d25"

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcn/apppark/vertify/activity/persion/PersonInfo;->b(Lcn/apppark/vertify/activity/persion/PersonInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-class v1, Lcn/apppark/mcd/vo/buy/BuyLoginVo;

    invoke-static {v0, v1}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyLoginVo;

    iget-object v1, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/PersonInfo;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/PersonInfo;->g(Lcn/apppark/vertify/activity/persion/PersonInfo;)Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyLoginVo;->getNickNameRight()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateNikeNameRight(Ljava/lang/String;)V

    const-string v1, "0"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyLoginVo;->getNickNameRight()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/PersonInfo;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->h(Lcn/apppark/vertify/activity/persion/PersonInfo;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/PersonInfo;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->h(Lcn/apppark/vertify/activity/persion/PersonInfo;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/PersonInfo;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->i(Lcn/apppark/vertify/activity/persion/PersonInfo;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/PersonInfo;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->e(Lcn/apppark/vertify/activity/persion/PersonInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lot;->a:Lcn/apppark/vertify/activity/persion/PersonInfo;

    invoke-static {v0, v4}, Lcn/apppark/vertify/activity/persion/PersonInfo;->a(Lcn/apppark/vertify/activity/persion/PersonInfo;I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
        0x138c -> :sswitch_2
    .end sparse-switch
.end method
