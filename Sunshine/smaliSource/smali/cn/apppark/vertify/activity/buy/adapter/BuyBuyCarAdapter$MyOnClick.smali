.class Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;

.field b:I

.field c:I

.field d:I

.field e:Ljava/lang/String;

.field final synthetic f:Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;I)V
    .locals 1

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;->f:Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->a()I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;->b:I

    iput p2, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;->d:I

    invoke-static {}, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->b()I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;->b:I

    return-void
.end method

.method public constructor <init>(Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;Ljava/lang/String;II)V
    .locals 1

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;->f:Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->a()I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;->b:I

    invoke-static {}, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->a()I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;->b:I

    iput-object p2, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;->a:Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;

    iput p4, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;->c:I

    iput p5, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;->d:I

    iput-object p3, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;->b:I

    invoke-static {}, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;->f:Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;->a:Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;

    iget v2, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;->c:I

    iget v3, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;->d:I

    iget-object v4, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;->e:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->a(Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;IILjava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;->b:I

    invoke-static {}, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->b()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;->f:Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;

    iget-object v0, v0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    iget v1, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;->d:I

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->delCommodity(I)V

    goto :goto_0
.end method
