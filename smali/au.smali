.class public final Lau;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/PageGroup;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/PageGroup;)V
    .locals 0

    iput-object p1, p0, Lau;->a:Lcn/apppark/vertify/PageGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lau;->a:Lcn/apppark/vertify/PageGroup;

    iget-object v0, v0, Lcn/apppark/vertify/PageGroup;->mainActivity:Lcn/apppark/ckj10185912/Main;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/apppark/ckj10185912/Main;->finish:Z

    iget-object v0, p0, Lau;->a:Lcn/apppark/vertify/PageGroup;

    invoke-virtual {v0}, Lcn/apppark/vertify/PageGroup;->finish()V

    return-void
.end method
