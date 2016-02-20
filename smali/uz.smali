.class public final Luz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/network/FileUpdater;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/network/FileUpdater;)V
    .locals 0

    iput-object p1, p0, Luz;->a:Lcn/apppark/vertify/network/FileUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Lcn/apppark/vertify/network/FileDownLoader;

    iget-object v1, p0, Luz;->a:Lcn/apppark/vertify/network/FileUpdater;

    iget-object v1, v1, Lcn/apppark/vertify/network/FileUpdater;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Luz;->a:Lcn/apppark/vertify/network/FileUpdater;

    invoke-static {v2}, Lcn/apppark/vertify/network/FileUpdater;->a(Lcn/apppark/vertify/network/FileUpdater;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/apppark/vertify/network/FileDownLoader;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/network/FileDownLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
