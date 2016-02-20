.class public final Lgi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field a:Landroid/widget/EditText;

.field final synthetic b:Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lgi;->b:Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgi;->a:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lgi;->b:Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->a(Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgi;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotZero(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgi;->a:Landroid/widget/EditText;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
