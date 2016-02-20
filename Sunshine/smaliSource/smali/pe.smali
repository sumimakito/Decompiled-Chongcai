.class public final Lpe;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/persion/SetInfo;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/persion/SetInfo;)V
    .locals 0

    iput-object p1, p0, Lpe;->a:Lcn/apppark/vertify/activity/persion/SetInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Lcn/apppark/vertify/base/ClientPersionInfo;

    iget-object v1, p0, Lpe;->a:Lcn/apppark/vertify/activity/persion/SetInfo;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/SetInfo;->a(Lcn/apppark/vertify/activity/persion/SetInfo;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->LoginOff()V

    iget-object v0, p0, Lpe;->a:Lcn/apppark/vertify/activity/persion/SetInfo;

    const-string v1, "\u6ce8\u9500\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/persion/SetInfo;->a(Lcn/apppark/vertify/activity/persion/SetInfo;Ljava/lang/String;I)V

    iget-object v0, p0, Lpe;->a:Lcn/apppark/vertify/activity/persion/SetInfo;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/persion/SetInfo;->setResult(I)V

    iget-object v0, p0, Lpe;->a:Lcn/apppark/vertify/activity/persion/SetInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/persion/SetInfo;->finish()V

    return-void
.end method
