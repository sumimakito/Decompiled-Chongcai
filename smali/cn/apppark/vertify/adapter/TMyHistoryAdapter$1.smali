.class Lcn/apppark/vertify/adapter/TMyHistoryAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/apppark/vertify/adapter/TMyHistoryAdapter;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/adapter/TMyHistoryAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/adapter/TMyHistoryAdapter$1;->b:Lcn/apppark/vertify/adapter/TMyHistoryAdapter;

    iput p2, p0, Lcn/apppark/vertify/adapter/TMyHistoryAdapter$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TMyHistoryAdapter$1;->b:Lcn/apppark/vertify/adapter/TMyHistoryAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/adapter/TMyHistoryAdapter;->a(Lcn/apppark/vertify/adapter/TMyHistoryAdapter;)Lcn/apppark/vertify/adapter/TMyHistoryAdapter$onRightItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TMyHistoryAdapter$1;->b:Lcn/apppark/vertify/adapter/TMyHistoryAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/adapter/TMyHistoryAdapter;->a(Lcn/apppark/vertify/adapter/TMyHistoryAdapter;)Lcn/apppark/vertify/adapter/TMyHistoryAdapter$onRightItemClickListener;

    move-result-object v0

    iget v1, p0, Lcn/apppark/vertify/adapter/TMyHistoryAdapter$1;->a:I

    invoke-interface {v0, p1, v1}, Lcn/apppark/vertify/adapter/TMyHistoryAdapter$onRightItemClickListener;->onRightItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
