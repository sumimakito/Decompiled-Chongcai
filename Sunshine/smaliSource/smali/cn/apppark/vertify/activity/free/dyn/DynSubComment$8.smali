.class Lcn/apppark/vertify/activity/free/dyn/DynSubComment$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment$8;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment$8;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynSubComment$8;->a:Lcn/apppark/vertify/activity/free/dyn/DynSubComment;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->b(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynSubComment;->a(Lcn/apppark/vertify/activity/free/dyn/DynSubComment;Landroid/widget/EditText;)Z

    return-void
.end method
