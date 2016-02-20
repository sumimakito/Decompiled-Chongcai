.class public final Lwk;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/network/PublicRequest;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/network/PublicRequest;)V
    .locals 0

    iput-object p1, p0, Lwk;->a:Lcn/apppark/vertify/network/PublicRequest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/network/PublicRequest;Lwj;)V
    .locals 0

    invoke-direct {p0, p1}, Lwk;-><init>(Lcn/apppark/vertify/network/PublicRequest;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

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
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_1
    const-string v1, "{\"retFlag\":\"1\"}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/apppark/vertify/network/PublicRequest;->delLogFile()V

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcn/apppark/mcd/vo/base/RetVo;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseReturnVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/base/RetVo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/RetVo;->getRetFlag()I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "1"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/RetVo;->getMemberStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "2"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/RetVo;->getMemberStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Lcn/apppark/vertify/base/ClientPersionInfo;

    sget-object v2, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-direct {v1, v2}, Lcn/apppark/vertify/base/ClientPersionInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->LoginOff()V

    :cond_2
    const-string v1, "1"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/RetVo;->getSmsEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->updateNeedSMS(Z)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v0, v3}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->updateNeedSMS(Z)V

    new-instance v0, Lcn/apppark/vertify/base/ClientPersionInfo;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-direct {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getPhoneState()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->LoginOff()V

    goto :goto_0

    :pswitch_3
    const-class v1, Lcn/apppark/mcd/vo/base/PointVo;

    const-string v2, "content"

    const-string v3, "point"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcn/apppark/mcd/vo/base/BaseReturnVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/base/PointVo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lwk;->a:Lcn/apppark/vertify/network/PublicRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/PointVo;->getY()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/PointVo;->getX()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/apppark/vertify/network/PublicRequest;->subLocation(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/PointVo;->getX()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/PointVo;->getY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->LOCATION:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
