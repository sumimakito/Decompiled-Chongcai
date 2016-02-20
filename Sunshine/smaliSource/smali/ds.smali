.class public final Lds;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)V
    .locals 0

    iput-object p1, p0, Lds;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lds;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->c(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lds;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->c(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;I)V

    return-void
.end method
