.class Lcn/apppark/vertify/activity/free/dyn/DynSubComment$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment$3;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment$3;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->c(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment$3;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->d(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
