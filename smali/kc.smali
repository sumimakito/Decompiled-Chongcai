.class public final Lkc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;)V
    .locals 0

    iput-object p1, p0, Lkc;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lkc;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->c(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;)I

    iget-object v1, p0, Lkc;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->d(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lkc;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->a(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;I)I

    iget-object v0, p0, Lkc;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->closeKeyBoard(Landroid/app/Activity;)V

    iget-object v0, p0, Lkc;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;->e(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act2;)V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
