.class public final Liz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)V
    .locals 0

    iput-object p1, p0, Liz;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Liz;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0, p3}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->a(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;I)I

    iget-object v0, p0, Liz;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->d(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Lje;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lje;->sendEmptyMessage(I)Z

    return-void
.end method
