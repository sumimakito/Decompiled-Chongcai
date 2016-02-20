.class public final Lc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcn/apppark/ckj10185912/Main;


# direct methods
.method public constructor <init>(Lcn/apppark/ckj10185912/Main;)V
    .locals 0

    iput-object p1, p0, Lc;->a:Lcn/apppark/ckj10185912/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lc;->a:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v0}, Lcn/apppark/ckj10185912/Main;->finish()V

    return-void
.end method
