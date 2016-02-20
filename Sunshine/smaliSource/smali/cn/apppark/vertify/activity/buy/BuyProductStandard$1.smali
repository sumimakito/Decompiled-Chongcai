.class Lcn/apppark/vertify/activity/buy/BuyProductStandard$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyProductStandard;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/buy/BuyProductStandard;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard$1;->a:Lcn/apppark/vertify/activity/buy/BuyProductStandard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard$1;->a:Lcn/apppark/vertify/activity/buy/BuyProductStandard;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->a(Lcn/apppark/vertify/activity/buy/BuyProductStandard;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard$1;->a:Lcn/apppark/vertify/activity/buy/BuyProductStandard;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->a(Lcn/apppark/vertify/activity/buy/BuyProductStandard;I)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard$1;->a:Lcn/apppark/vertify/activity/buy/BuyProductStandard;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->c(Lcn/apppark/vertify/activity/buy/BuyProductStandard;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard$1;->a:Lcn/apppark/vertify/activity/buy/BuyProductStandard;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->b(Lcn/apppark/vertify/activity/buy/BuyProductStandard;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard$1;->a:Lcn/apppark/vertify/activity/buy/BuyProductStandard;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->b(Lcn/apppark/vertify/activity/buy/BuyProductStandard;I)I

    goto :goto_0
.end method
