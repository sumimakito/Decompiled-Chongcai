.class public final Loi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/persion/SetInfo;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/persion/SetInfo;)V
    .locals 0

    iput-object p1, p0, Loi;->a:Lcn/apppark/vertify/activity/persion/SetInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Loi;->a:Lcn/apppark/vertify/activity/persion/SetInfo;

    const-string v1, "\u7f13\u5b58\u6e05\u9664\u4e2d"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/persion/SetInfo;->b(Lcn/apppark/vertify/activity/persion/SetInfo;Ljava/lang/String;I)V

    new-instance v0, Lol;

    iget-object v1, p0, Loi;->a:Lcn/apppark/vertify/activity/persion/SetInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lol;-><init>(Lcn/apppark/vertify/activity/persion/SetInfo;Loh;)V

    invoke-virtual {v0}, Lol;->start()V

    return-void
.end method
