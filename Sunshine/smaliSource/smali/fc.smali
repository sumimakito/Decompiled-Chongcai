.class final Lfc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lfa;


# direct methods
.method constructor <init>(Lfa;)V
    .locals 0

    iput-object p1, p0, Lfc;->a:Lfa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lfc;->a:Lfa;

    iget-object v0, v0, Lfa;->a:Lex;

    iget-object v0, v0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->del()V

    return-void
.end method
