.class public final Lhn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;)V
    .locals 0

    iput-object p1, p0, Lhn;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;

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

    iget-object v0, p0, Lhn;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;

    invoke-static {v0, p3}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;I)I

    iget-object v0, p0, Lhn;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->d(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;)Lhq;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lhq;->sendEmptyMessage(I)Z

    return-void
.end method
