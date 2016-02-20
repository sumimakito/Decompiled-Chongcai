.class Lcn/apppark/vertify/adapter/TCollectionAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/apppark/vertify/adapter/TCollectionAdapter;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/adapter/TCollectionAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/adapter/TCollectionAdapter$1;->b:Lcn/apppark/vertify/adapter/TCollectionAdapter;

    iput p2, p0, Lcn/apppark/vertify/adapter/TCollectionAdapter$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCollectionAdapter$1;->b:Lcn/apppark/vertify/adapter/TCollectionAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/adapter/TCollectionAdapter;->a(Lcn/apppark/vertify/adapter/TCollectionAdapter;)Lcn/apppark/vertify/adapter/TCollectionAdapter$onRightItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCollectionAdapter$1;->b:Lcn/apppark/vertify/adapter/TCollectionAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/adapter/TCollectionAdapter;->a(Lcn/apppark/vertify/adapter/TCollectionAdapter;)Lcn/apppark/vertify/adapter/TCollectionAdapter$onRightItemClickListener;

    move-result-object v0

    iget v1, p0, Lcn/apppark/vertify/adapter/TCollectionAdapter$1;->a:I

    invoke-interface {v0, p1, v1}, Lcn/apppark/vertify/adapter/TCollectionAdapter$onRightItemClickListener;->onRightItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
