.class public Lcn/apppark/vertify/activity/free/function/FunctionsEmail3006;
.super Ljava/lang/Object;


# instance fields
.field private context:Landroid/content/Context;

.field private funcItem:Lcn/apppark/mcd/vo/free/FunctionEmailVo;

.field private json:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/function/FunctionsEmail3006;->context:Landroid/content/Context;

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/function/FunctionsEmail3006;->json:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public startFunctions()V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionsEmail3006;->json:Ljava/lang/String;

    invoke-static {v0}, Lcn/apppark/mcd/util/file/SDFileUtils;->readFileSD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcn/apppark/mcd/vo/free/FunctionEmailVo;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/FunctionEmailVo;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionsEmail3006;->funcItem:Lcn/apppark/mcd/vo/free/FunctionEmailVo;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/function/FunctionsEmail3006;->funcItem:Lcn/apppark/mcd/vo/free/FunctionEmailVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/FunctionEmailVo;->getData_addr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/function/FunctionsEmail3006;->funcItem:Lcn/apppark/mcd/vo/free/FunctionEmailVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/FunctionEmailVo;->getData_text()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/function/FunctionsEmail3006;->context:Landroid/content/Context;

    const-string v2, "Send email!"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
