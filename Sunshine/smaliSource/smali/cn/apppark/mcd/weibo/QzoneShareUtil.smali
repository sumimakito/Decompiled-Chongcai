.class public Lcn/apppark/mcd/weibo/QzoneShareUtil;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Lcom/tencent/tauth/Tencent;

.field private shareType:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/mcd/weibo/QzoneShareUtil;->shareType:I

    iput-object p1, p0, Lcn/apppark/mcd/weibo/QzoneShareUtil;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/mcd/weibo/QzoneShareUtil;->b:Lcom/tencent/tauth/Tencent;

    return-void
.end method

.method private doShareToQzone(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lp;

    invoke-direct {v1, p0, p1}, Lp;-><init>(Lcn/apppark/mcd/weibo/QzoneShareUtil;Landroid/os/Bundle;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/weibo/QzoneShareUtil;->b:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/tauth/Tencent;->onActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method

.method public sharToQzone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "req_type"

    iget v2, p0, Lcn/apppark/mcd/weibo/QzoneShareUtil;->shareType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "summary"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "targetUrl"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "imageUrl"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {p0, v0}, Lcn/apppark/mcd/weibo/QzoneShareUtil;->doShareToQzone(Landroid/os/Bundle;)V

    return-void
.end method
