.class public final Ljh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)V
    .locals 0

    iput-object p1, p0, Ljh;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Ljh;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->a(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)I

    iget-object v1, p0, Ljh;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->b(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Ljh;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->a(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;I)I

    iget-object v0, p0, Ljh;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    iget-object v1, p0, Ljh;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->c(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->a(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Ljh;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->d(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Ljh;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->initData()V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
