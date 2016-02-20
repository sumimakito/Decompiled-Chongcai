.class public final Lam;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/TCellLinearLayout;


# direct methods
.method public constructor <init>(Lcn/apppark/mcd/widget/TCellLinearLayout;)V
    .locals 0

    iput-object p1, p0, Lam;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lam;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget-object v1, p0, Lam;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    invoke-static {v1}, Lcn/apppark/mcd/widget/TCellLinearLayout;->a(Lcn/apppark/mcd/widget/TCellLinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcn/apppark/mcd/widget/TCellLinearLayout;->a(Lcn/apppark/mcd/widget/TCellLinearLayout;ZLandroid/widget/HorizontalScrollView;)V

    iget-object v0, p0, Lam;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget-object v0, v0, Lcn/apppark/mcd/widget/TCellLinearLayout;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    iget-object v0, p0, Lam;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iput-boolean v4, v0, Lcn/apppark/mcd/widget/TCellLinearLayout;->isMove:Z

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;->getImgbg()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return v4
.end method
