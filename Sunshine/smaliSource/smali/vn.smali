.class public final Lvn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/base/ImagePreview;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/base/ImagePreview;)V
    .locals 0

    iput-object p1, p0, Lvn;->a:Lcn/apppark/vertify/base/ImagePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lvn;->a:Lcn/apppark/vertify/base/ImagePreview;

    invoke-static {v0}, Lcn/apppark/vertify/base/ImagePreview;->d(Lcn/apppark/vertify/base/ImagePreview;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lvn;->a:Lcn/apppark/vertify/base/ImagePreview;

    invoke-static {v0}, Lcn/apppark/vertify/base/ImagePreview;->e(Lcn/apppark/vertify/base/ImagePreview;)Lvo;

    move-result-object v0

    invoke-virtual {v0}, Lvo;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvn;->a:Lcn/apppark/vertify/base/ImagePreview;

    invoke-static {v0}, Lcn/apppark/vertify/base/ImagePreview;->e(Lcn/apppark/vertify/base/ImagePreview;)Lvo;

    move-result-object v0

    invoke-virtual {v0}, Lvo;->dismiss()V

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lvn;->a:Lcn/apppark/vertify/base/ImagePreview;

    invoke-static {v0}, Lcn/apppark/vertify/base/ImagePreview;->e(Lcn/apppark/vertify/base/ImagePreview;)Lvo;

    move-result-object v0

    iget-object v1, p0, Lvn;->a:Lcn/apppark/vertify/base/ImagePreview;

    invoke-static {v1}, Lcn/apppark/vertify/base/ImagePreview;->f(Lcn/apppark/vertify/base/ImagePreview;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3, v3}, Lvo;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
