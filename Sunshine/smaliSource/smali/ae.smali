.class public final Lae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/MyFloatView;


# direct methods
.method public constructor <init>(Lcn/apppark/mcd/widget/MyFloatView;)V
    .locals 0

    iput-object p1, p0, Lae;->a:Lcn/apppark/mcd/widget/MyFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lae;->a:Lcn/apppark/mcd/widget/MyFloatView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/apppark/mcd/widget/MyFloatView;->c:Z

    iget-object v0, p0, Lae;->a:Lcn/apppark/mcd/widget/MyFloatView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/MyFloatView;->a(Lcn/apppark/mcd/widget/MyFloatView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lae;->a:Lcn/apppark/mcd/widget/MyFloatView;

    iget-object v1, v1, Lcn/apppark/mcd/widget/MyFloatView;->b:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    return v0
.end method
