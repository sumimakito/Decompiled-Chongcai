.class public final Lci;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)V
    .locals 0

    iput-object p1, p0, Lci;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object v0, p0, Lci;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    add-int/lit8 v1, p3, -0x1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->a(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;I)I

    new-instance v0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    iget-object v1, p0, Lci;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->d(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setTitle(I)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a\u5220\u9664\uff1f"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const v1, 0x7f080008

    new-instance v2, Lck;

    invoke-direct {v2, p0}, Lck;-><init>(Lci;)V

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const v1, 0x7f080009

    new-instance v2, Lcj;

    invoke-direct {v2, p0}, Lcj;-><init>(Lci;)V

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->create()Lcn/apppark/mcd/widget/DialogTwoBtn;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogTwoBtn;->show()V

    const/4 v0, 0x0

    return v0
.end method
