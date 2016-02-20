.class Lcn/apppark/vertify/adapter/TCommnetAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/adapter/TCommnetAdapter;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/adapter/TCommnetAdapter;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$1;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$1;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->a(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Lcn/apppark/vertify/adapter/TCommnetAdapter$OnPicClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter$1;->a:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->a(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Lcn/apppark/vertify/adapter/TCommnetAdapter$OnPicClickListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/apppark/vertify/adapter/TCommnetAdapter$OnPicClickListener;->onPicClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
