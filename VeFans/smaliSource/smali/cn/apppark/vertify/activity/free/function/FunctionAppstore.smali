.class public Lcn/apppark/vertify/activity/free/function/FunctionAppstore;
.super Ljava/lang/Object;


# instance fields
.field private funcItem:Lcn/apppark/mcd/vo/free/FunctionSmsTelAppstoreVo;

.field private json:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/function/FunctionAppstore;->json:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public startFunctions()V
    .locals 3

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

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/function/FunctionAppstore;->json:Ljava/lang/String;

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

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionAppstore;->funcItem:Lcn/apppark/mcd/vo/free/FunctionSmsTelAppstoreVo;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionAppstore;->funcItem:Lcn/apppark/mcd/vo/free/FunctionSmsTelAppstoreVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/FunctionSmsTelAppstoreVo;->getData_addr_android()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionAppstore;->funcItem:Lcn/apppark/mcd/vo/free/FunctionSmsTelAppstoreVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/FunctionSmsTelAppstoreVo;->getData_addr_android()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v0, v1}, Lcn/apppark/ckj10185912/Main;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
