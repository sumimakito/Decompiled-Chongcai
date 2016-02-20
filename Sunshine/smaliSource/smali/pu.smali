.class public final Lpu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcn/apppark/vertify/activity/share/QzoneShareAct;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/share/QzoneShareAct;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lpu;->c:Lcn/apppark/vertify/activity/share/QzoneShareAct;

    iput-object p2, p0, Lpu;->a:Landroid/app/Activity;

    iput-object p3, p0, Lpu;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lpu;->c:Lcn/apppark/vertify/activity/share/QzoneShareAct;

    iget-object v0, v0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->a:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lpu;->a:Landroid/app/Activity;

    iget-object v2, p0, Lpu;->b:Landroid/os/Bundle;

    new-instance v3, Lpv;

    invoke-direct {v3, p0}, Lpv;-><init>(Lpu;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tauth/Tencent;->shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method
