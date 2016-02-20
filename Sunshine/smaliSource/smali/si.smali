.class public final Lsi;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/RightSlidMenu$onMenuStateChangeListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TMain;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/tieba/TMain;)V
    .locals 0

    iput-object p1, p0, Lsi;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClose()V
    .locals 0

    return-void
.end method

.method public final onOpen()V
    .locals 2

    iget-object v0, p0, Lsi;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMain;->g(Lcn/apppark/vertify/activity/tieba/TMain;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsi;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/tieba/TMain;->a(Lcn/apppark/vertify/activity/tieba/TMain;Z)Z

    iget-object v0, p0, Lsi;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/tieba/TMain;->a(Lcn/apppark/vertify/activity/tieba/TMain;I)V

    :cond_0
    return-void
.end method
