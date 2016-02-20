.class public final Lir;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/MyEditText$MyEditTextClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;)V
    .locals 0

    iput-object p1, p0, Lir;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyEnter()V
    .locals 2

    iget-object v0, p0, Lir;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;

    iget-object v1, p0, Lir;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->a(Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;)Lcn/apppark/mcd/widget/MyEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->a(Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lir;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->b(Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lir;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->initData()V

    return-void
.end method
