.class final Leb;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/IReloadDataProgress;


# instance fields
.field final synthetic a:Lea;


# direct methods
.method constructor <init>(Lea;)V
    .locals 0

    iput-object p1, p0, Leb;->a:Lea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reloadData()V
    .locals 2

    iget-object v0, p0, Leb;->a:Lea;

    iget-object v0, v0, Lea;->a:Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->a(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;I)V

    return-void
.end method
