.class public Lcn/apppark/vertify/activity/free/function/FunctionsSms;
.super Ljava/lang/Object;


# instance fields
.field private DELIVERED_SMS_ACTION:Ljava/lang/String;

.field private SENT_SMS_ACTION:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private funcItem:Lcn/apppark/mcd/vo/free/FunctionSmsTelAppstoreVo;

.field private json:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SENT_SMS_ACTION"

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionsSms;->SENT_SMS_ACTION:Ljava/lang/String;

    const-string v0, "DELIVERED_SMS_ACTION"

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionsSms;->DELIVERED_SMS_ACTION:Ljava/lang/String;

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/function/FunctionsSms;->context:Landroid/content/Context;

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/function/FunctionsSms;->json:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected editSendSms()V
    .locals 4

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionsSms;->funcItem:Lcn/apppark/mcd/vo/free/FunctionSmsTelAppstoreVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/FunctionSmsTelAppstoreVo;->getData_tel()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/function/FunctionsSms;->funcItem:Lcn/apppark/mcd/vo/free/FunctionSmsTelAppstoreVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/FunctionSmsTelAppstoreVo;->getData_text()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "smsto:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "sms_body"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionsSms;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public sendSmsMainEnter()V
    .locals 3

    :try_start_0
    const-string v0, "0"

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/function/FunctionsSms;->funcItem:Lcn/apppark/mcd/vo/free/FunctionSmsTelAppstoreVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/FunctionSmsTelAppstoreVo;->getStyle_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/function/FunctionsSms;->editSendSms()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "1"

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/function/FunctionsSms;->funcItem:Lcn/apppark/mcd/vo/free/FunctionSmsTelAppstoreVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/FunctionSmsTelAppstoreVo;->getStyle_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/function/FunctionsSms;->editSendSms()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, " \u8be5\u8bbe\u5907\u65e0\u6cd5\u53d1\u9001\u77ed\u4fe1 "

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public startFunctions()V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionsSms;->context:Landroid/content/Context;

    const-string v1, "android.permission.SEND_SMS"

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/PublicUtil;->getPermisson(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u5bf9\u4e0d\u8d77,\u5ba2\u6237\u7aef\u65e0\u8be5\u6743\u9650,\u8bf7\u66f4\u65b0\u5ba2\u6237\u7aef"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    invoke-virtual {v1}, Lcn/apppark/ckj10185912/HQCHApplication;->getResourceDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/function/FunctionsSms;->json:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/file/SDFileUtils;->readFileSD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcn/apppark/mcd/vo/free/FunctionSmsTelAppstoreVo;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/FunctionSmsTelAppstoreVo;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionsSms;->funcItem:Lcn/apppark/mcd/vo/free/FunctionSmsTelAppstoreVo;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionsSms;->funcItem:Lcn/apppark/mcd/vo/free/FunctionSmsTelAppstoreVo;

    if-eqz v0, :cond_0

    new-instance v0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/function/FunctionsSms;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setTitle(I)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a\u53d1\u9001\u77ed\u4fe1?"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const v1, 0x7f080010

    new-instance v2, Llv;

    invoke-direct {v2, p0}, Llv;-><init>(Lcn/apppark/vertify/activity/free/function/FunctionsSms;)V

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const v1, 0x7f080011

    new-instance v2, Llu;

    invoke-direct {v2, p0}, Llu;-><init>(Lcn/apppark/vertify/activity/free/function/FunctionsSms;)V

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
