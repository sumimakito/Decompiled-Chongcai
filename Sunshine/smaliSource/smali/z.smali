.class public final Lz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/MyBtn;


# direct methods
.method public constructor <init>(Lcn/apppark/mcd/widget/MyBtn;)V
    .locals 0

    iput-object p1, p0, Lz;->a:Lcn/apppark/mcd/widget/MyBtn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lz;->a:Lcn/apppark/mcd/widget/MyBtn;

    iget-object v0, v0, Lcn/apppark/mcd/widget/MyBtn;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lz;->a:Lcn/apppark/mcd/widget/MyBtn;

    iget-object v0, v0, Lcn/apppark/mcd/widget/MyBtn;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
