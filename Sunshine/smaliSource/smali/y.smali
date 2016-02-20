.class public final Ly;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/MyBtn;


# direct methods
.method public constructor <init>(Lcn/apppark/mcd/widget/MyBtn;)V
    .locals 0

    iput-object p1, p0, Ly;->a:Lcn/apppark/mcd/widget/MyBtn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Ly;->a:Lcn/apppark/mcd/widget/MyBtn;

    iget-object v0, v0, Lcn/apppark/mcd/widget/MyBtn;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Ly;->a:Lcn/apppark/mcd/widget/MyBtn;

    iget-object v0, v0, Lcn/apppark/mcd/widget/MyBtn;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
