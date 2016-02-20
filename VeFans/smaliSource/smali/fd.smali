.class final Lfd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lfb;


# direct methods
.method constructor <init>(Lfb;)V
    .locals 0

    iput-object p1, p0, Lfd;->a:Lfb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lfd;->a:Lfb;

    iget-object v0, v0, Lfb;->a:Ley;

    iget-object v0, v0, Ley;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->del()V

    return-void
.end method
