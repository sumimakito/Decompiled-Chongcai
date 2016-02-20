.class public final Lsa;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/MyResizeLinearLayout$OnResizeListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TEdit;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/tieba/TEdit;)V
    .locals 0

    iput-object p1, p0, Lsa;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OnResize(IIII)V
    .locals 3

    const/4 v0, 0x1

    if-ge p2, p4, :cond_0

    const/4 v0, 0x2

    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lsa;->a:Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->a(Lcn/apppark/vertify/activity/tieba/TEdit;)Lsd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lsd;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
