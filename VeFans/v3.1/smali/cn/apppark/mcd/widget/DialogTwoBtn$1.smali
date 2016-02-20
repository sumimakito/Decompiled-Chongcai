.class Lcn/apppark/mcd/widget/DialogTwoBtn$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/DialogTwoBtn;


# direct methods
.method constructor <init>(Lcn/apppark/mcd/widget/DialogTwoBtn;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/DialogTwoBtn$1;->a:Lcn/apppark/mcd/widget/DialogTwoBtn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogTwoBtn$1;->a:Lcn/apppark/mcd/widget/DialogTwoBtn;

    invoke-static {v0}, Lcn/apppark/mcd/widget/DialogTwoBtn;->a(Lcn/apppark/mcd/widget/DialogTwoBtn;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x7d0

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogTwoBtn$1;->a:Lcn/apppark/mcd/widget/DialogTwoBtn;

    invoke-static {v0}, Lcn/apppark/mcd/widget/DialogTwoBtn;->b(Lcn/apppark/mcd/widget/DialogTwoBtn;)I

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogTwoBtn$1;->a:Lcn/apppark/mcd/widget/DialogTwoBtn;

    invoke-static {v0}, Lcn/apppark/mcd/widget/DialogTwoBtn;->c(Lcn/apppark/mcd/widget/DialogTwoBtn;)I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->getIsDebug()Z

    move-result v3

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogTwoBtn$1;->a:Lcn/apppark/mcd/widget/DialogTwoBtn;

    invoke-static {v0}, Lcn/apppark/mcd/widget/DialogTwoBtn;->d(Lcn/apppark/mcd/widget/DialogTwoBtn;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "debug:"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v3, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "-10185912"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-object v4, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    if-nez v3, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->setIsDebug(Z)V

    if-nez v3, :cond_3

    :goto_2
    sput-boolean v1, Lcn/apppark/ckj10185912/HQCHApplication;->DEBUG:Z

    :cond_0
    :goto_3
    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogTwoBtn$1;->a:Lcn/apppark/mcd/widget/DialogTwoBtn;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/apppark/mcd/widget/DialogTwoBtn;->a(Lcn/apppark/mcd/widget/DialogTwoBtn;J)J

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogTwoBtn$1;->a:Lcn/apppark/mcd/widget/DialogTwoBtn;

    invoke-static {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn;->a(Lcn/apppark/mcd/widget/DialogTwoBtn;I)I

    goto :goto_3
.end method
