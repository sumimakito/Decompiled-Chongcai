.class public final Lgk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field a:Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field final synthetic e:Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;Ljava/lang/String;II)V
    .locals 1

    iput-object p1, p0, Lgk;->e:Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgk;->a:Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;

    const/4 v0, 0x0

    iput v0, p0, Lgk;->b:I

    iput p5, p0, Lgk;->c:I

    iput-object p3, p0, Lgk;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    iget-object v0, p0, Lgk;->e:Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;

    iget-object v1, p0, Lgk;->a:Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;

    iget v2, p0, Lgk;->b:I

    iget v3, p0, Lgk;->c:I

    iget-object v4, p0, Lgk;->d:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->a(Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;IILjava/lang/String;Z)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
