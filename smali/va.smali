.class public final Lva;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/network/FileUpdater;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/network/FileUpdater;)V
    .locals 0

    iput-object p1, p0, Lva;->a:Lcn/apppark/vertify/network/FileUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lva;->a:Lcn/apppark/vertify/network/FileUpdater;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/apppark/vertify/network/FileUpdater;->a(Lcn/apppark/vertify/network/FileUpdater;Z)Z

    return-void
.end method
