.class public final Lhi;
.super Landroid/os/Handler;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;)V
    .locals 0

    iput-object p1, p0, Lhi;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;Lhf;)V
    .locals 0

    invoke-direct {p0, p1}, Lhi;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

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
    iget-object v1, p0, Lhi;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->b(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    invoke-static {v0}, Lcn/apppark/ckj10185912/YYGYContants;->checkResult(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseReturnVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lhi;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;)Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    iget-object v0, p0, Lhi;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    iget-object v1, p0, Lhi;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;)Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lhi;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    iget-object v1, p0, Lhi;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;)Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->b(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lhi;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->b(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080025

    const/4 v2, 0x1

    const-string v3, "255"

    invoke-virtual {v0, v1, v2, v4, v3}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    iget-object v0, p0, Lhi;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->b(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Lhj;

    invoke-direct {v1, p0}, Lhj;-><init>(Lhi;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "\u6536\u85cf\u5931\u8d25"

    const-string v2, "\u6536\u85cf\u6210\u529f"

    invoke-static {v0, v1, v2}, Lcn/apppark/ckj10185912/YYGYContants;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhi;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;)Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->setIsFavorites(Ljava/lang/String;)V

    iget-object v0, p0, Lhi;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->c(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020091

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_2
    const-string v1, "\u53d6\u6d88\u6536\u85cf\u5931\u8d25"

    const-string v2, "\u53d6\u6d88\u6536\u85cf\u6210\u529f"

    invoke-static {v0, v1, v2}, Lcn/apppark/ckj10185912/YYGYContants;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhi;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;)Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->setIsFavorites(Ljava/lang/String;)V

    iget-object v0, p0, Lhi;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->c(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020090

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {v0}, Lcn/apppark/ckj10185912/YYGYContants;->checkResult(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhi;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->d(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lhi;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->d(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lhi;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;)Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getShareCount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
