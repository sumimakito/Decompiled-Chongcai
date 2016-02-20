.class public final Ljv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)V
    .locals 0

    iput-object p1, p0, Ljv;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Ljv;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->d(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)I

    iget-object v1, p0, Ljv;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->e(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Ljv;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->a(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;I)I

    iget-object v0, p0, Ljv;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->closeKeyBoard(Landroid/app/Activity;)V

    iget-object v0, p0, Ljv;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->f(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
