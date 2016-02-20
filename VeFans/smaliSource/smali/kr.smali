.class public final Lkr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/PicGallery;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/PicGallery;)V
    .locals 0

    iput-object p1, p0, Lkr;->a:Lcn/apppark/vertify/activity/free/dyn/PicGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lkr;->a:Lcn/apppark/vertify/activity/free/dyn/PicGallery;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->a(Lcn/apppark/vertify/activity/free/dyn/PicGallery;)Lku;

    move-result-object v0

    invoke-virtual {v0}, Lku;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkr;->a:Lcn/apppark/vertify/activity/free/dyn/PicGallery;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/PicGallery;->a(Lcn/apppark/vertify/activity/free/dyn/PicGallery;)Lku;

    move-result-object v0

    invoke-virtual {v0}, Lku;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
