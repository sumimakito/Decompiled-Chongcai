.class public final Lwa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/network/FileDownLoader;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/network/FileDownLoader;)V
    .locals 0

    iput-object p1, p0, Lwa;->a:Lcn/apppark/vertify/network/FileDownLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lwa;->a:Lcn/apppark/vertify/network/FileDownLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/network/FileDownLoader;->cancel(Z)Z

    iget-object v0, p0, Lwa;->a:Lcn/apppark/vertify/network/FileDownLoader;

    iget-object v0, v0, Lcn/apppark/vertify/network/FileDownLoader;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lwa;->a:Lcn/apppark/vertify/network/FileDownLoader;

    iget-object v1, v1, Lcn/apppark/vertify/network/FileDownLoader;->mActivity:Landroid/app/Activity;

    const v2, 0x7f08001c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
