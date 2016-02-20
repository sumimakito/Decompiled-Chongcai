.class public final Lvj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/network/VersionUpdateManager;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/network/VersionUpdateManager;)V
    .locals 0

    iput-object p1, p0, Lvj;->a:Lcn/apppark/vertify/network/VersionUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lvj;->a:Lcn/apppark/vertify/network/VersionUpdateManager;

    invoke-static {v0}, Lcn/apppark/vertify/network/VersionUpdateManager;->b(Lcn/apppark/vertify/network/VersionUpdateManager;)Lcn/apppark/mcd/widget/DialogProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogProgress;->dismiss()V

    iget-object v0, p0, Lvj;->a:Lcn/apppark/vertify/network/VersionUpdateManager;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/network/VersionUpdateManager;->a(Lcn/apppark/vertify/network/VersionUpdateManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    const-string v1, "\u66f4\u65b0\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
