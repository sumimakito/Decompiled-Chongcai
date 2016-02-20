.class public final Laq;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/WaterfallImageView;


# direct methods
.method public constructor <init>(Lcn/apppark/mcd/widget/WaterfallImageView;)V
    .locals 0

    iput-object p1, p0, Laq;->a:Lcn/apppark/mcd/widget/WaterfallImageView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Laq;->a:Lcn/apppark/mcd/widget/WaterfallImageView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/WaterfallImageView;->a(Lcn/apppark/mcd/widget/WaterfallImageView;)Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Laq;->a:Lcn/apppark/mcd/widget/WaterfallImageView;

    iget-object v1, p0, Laq;->a:Lcn/apppark/mcd/widget/WaterfallImageView;

    iget-object v2, p0, Laq;->a:Lcn/apppark/mcd/widget/WaterfallImageView;

    invoke-static {v2}, Lcn/apppark/mcd/widget/WaterfallImageView;->a(Lcn/apppark/mcd/widget/WaterfallImageView;)Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getPicUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/apppark/mcd/widget/WaterfallImageView;->a(Lcn/apppark/mcd/widget/WaterfallImageView;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcn/apppark/mcd/widget/WaterfallImageView;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Laq;->a:Lcn/apppark/mcd/widget/WaterfallImageView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/WaterfallImageView;->b(Lcn/apppark/mcd/widget/WaterfallImageView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lar;

    invoke-direct {v1, p0}, Lar;-><init>(Laq;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
