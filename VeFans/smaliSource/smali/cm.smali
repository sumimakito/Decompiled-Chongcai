.class final Lcm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lck;


# direct methods
.method constructor <init>(Lck;)V
    .locals 0

    iput-object p1, p0, Lcm;->a:Lck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcm;->a:Lck;

    iget-object v0, v0, Lck;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->del()V

    return-void
.end method
