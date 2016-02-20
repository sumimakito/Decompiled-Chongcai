.class Lcn/apppark/vertify/activity/buy/adapter/BuySubOrderResultAdapter$MyOnClick;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:I

.field final synthetic b:Lcn/apppark/vertify/activity/buy/adapter/BuySubOrderResultAdapter;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/buy/adapter/BuySubOrderResultAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/adapter/BuySubOrderResultAdapter$MyOnClick;->b:Lcn/apppark/vertify/activity/buy/adapter/BuySubOrderResultAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcn/apppark/vertify/activity/buy/adapter/BuySubOrderResultAdapter$MyOnClick;->a:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuySubOrderResultAdapter$MyOnClick;->b:Lcn/apppark/vertify/activity/buy/adapter/BuySubOrderResultAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuySubOrderResultAdapter;->a(Lcn/apppark/vertify/activity/buy/adapter/BuySubOrderResultAdapter;)Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    move-result-object v0

    iget v1, p0, Lcn/apppark/vertify/activity/buy/adapter/BuySubOrderResultAdapter$MyOnClick;->a:I

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->payOnline(I)V

    return-void
.end method
