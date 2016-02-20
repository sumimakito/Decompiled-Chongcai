.class public final Luv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/network/FileDownLoader;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/network/FileDownLoader;)V
    .locals 0

    iput-object p1, p0, Luv;->a:Lcn/apppark/vertify/network/FileDownLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Luv;->a:Lcn/apppark/vertify/network/FileDownLoader;

    iget-object v1, v1, Lcn/apppark/vertify/network/FileDownLoader;->mActivity:Landroid/app/Activity;

    const-class v2, Lcn/apppark/ckj10185912/Main;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Luv;->a:Lcn/apppark/vertify/network/FileDownLoader;

    iget-object v1, v1, Lcn/apppark/vertify/network/FileDownLoader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
