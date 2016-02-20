.class final Lfa;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/vertify/adapter/TCollectionAdapter$onRightItemClickListener;


# instance fields
.field final synthetic a:Lex;


# direct methods
.method constructor <init>(Lex;)V
    .locals 0

    iput-object p1, p0, Lfa;->a:Lex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRightItemClick(Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Lfa;->a:Lex;

    iget-object v0, v0, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v0, p2}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->a(Lcn/apppark/vertify/activity/buy/BuyProductCollection;I)I

    new-instance v0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    iget-object v1, p0, Lfa;->a:Lex;

    iget-object v1, v1, Lex;->a:Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProductCollection;->h(Lcn/apppark/vertify/activity/buy/BuyProductCollection;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setTitle(I)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a\u5220\u9664\uff1f"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const v1, 0x7f080008

    new-instance v2, Lfc;

    invoke-direct {v2, p0}, Lfc;-><init>(Lfa;)V

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const v1, 0x7f080009

    new-instance v2, Lfb;

    invoke-direct {v2, p0}, Lfb;-><init>(Lfa;)V

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->create()Lcn/apppark/mcd/widget/DialogTwoBtn;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogTwoBtn;->show()V

    return-void
.end method
