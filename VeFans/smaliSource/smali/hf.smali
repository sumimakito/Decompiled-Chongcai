.class public final Lhf;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;)V
    .locals 0

    iput-object p1, p0, Lhf;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "video:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhf;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    const-class v2, Lcn/apppark/vertify/activity/free/dyn/DynVideoWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "videourl"

    const/4 v2, 0x6

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lhf;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-virtual {v1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "msg:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhf;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    const-class v2, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "id"

    iget-object v2, p0, Lhf;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;)Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lhf;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lhf;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-virtual {v1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
