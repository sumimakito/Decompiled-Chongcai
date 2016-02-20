.class public final Lwi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/network/LoadingDialog;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/network/LoadingDialog;)V
    .locals 0

    iput-object p1, p0, Lwi;->a:Lcn/apppark/vertify/network/LoadingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lwi;->a:Lcn/apppark/vertify/network/LoadingDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/network/LoadingDialog;->cancel(Z)Z

    return-void
.end method
