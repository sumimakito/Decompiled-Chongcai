.class final Lby;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lbw;


# direct methods
.method constructor <init>(Lbw;)V
    .locals 0

    iput-object p1, p0, Lby;->a:Lbw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lby;->a:Lbw;

    iget-object v0, v0, Lbw;->a:Lbt;

    iget-object v0, v0, Lbt;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->del()V

    return-void
.end method
