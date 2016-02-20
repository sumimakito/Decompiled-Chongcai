.class public final Ljt;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/PullDownListView$OnRefreshListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)V
    .locals 0

    iput-object p1, p0, Ljt;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 4

    iget-object v0, p0, Ljt;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    const/4 v1, 0x1

    const-string v2, "search"

    iget-object v3, p0, Ljt;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-static {v3}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->a(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->a(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
