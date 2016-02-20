.class public Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyAddressVo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcn/apppark/vertify/adapter/TMyHistoryAdapter$onRightItemClickListener;

.field private mListener2:Lcn/apppark/vertify/adapter/TMyHistoryAdapter$onRightItem2ClickListener;

.field private mRightWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyAddressVo;",
            ">;I)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;->mRightWidth:I

    iput-object v1, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;->mListener:Lcn/apppark/vertify/adapter/TMyHistoryAdapter$onRightItemClickListener;

    iput-object v1, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;->mListener2:Lcn/apppark/vertify/adapter/TMyHistoryAdapter$onRightItem2ClickListener;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;->itemList:Ljava/util/ArrayList;

    iput p3, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;->mRightWidth:I

    return-void
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;)Lcn/apppark/vertify/adapter/TMyHistoryAdapter$onRightItemClickListener;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;->mListener:Lcn/apppark/vertify/adapter/TMyHistoryAdapter$onRightItemClickListener;

    return-object v0
.end method

.method static synthetic b(Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;)Lcn/apppark/vertify/adapter/TMyHistoryAdapter$onRightItem2ClickListener;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;->mListener2:Lcn/apppark/vertify/adapter/TMyHistoryAdapter$onRightItem2ClickListener;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, -0x1

    if-nez p2, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lgh;

    invoke-direct {v1}, Lgh;-><init>()V

    const v0, 0x7f0a0012

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lgh;->g:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a001b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lgh;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f0a001c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lgh;->i:Landroid/widget/LinearLayout;

    const v0, 0x7f0a001d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lgh;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0015

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lgh;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0a001a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lgh;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a0018

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lgh;->f:Landroid/widget/ImageView;

    const v0, 0x7f0a0016

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lgh;->c:Landroid/widget/TextView;

    const v0, 0x7f0a0017

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lgh;->d:Landroid/widget/TextView;

    const v0, 0x7f0a0019

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lgh;->e:Landroid/widget/TextView;

    iget-object v0, v1, Lgh;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, v1, Lgh;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;->mRightWidth:I

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, v1, Lgh;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    if-eqz v0, :cond_0

    const-string v2, "1"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getIsDefault()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lgh;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->isEdit()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lgh;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object v2, v1, Lgh;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lgh;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lgh;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getAddress1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getAddress2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lgh;->j:Landroid/widget/LinearLayout;

    new-instance v2, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter$1;

    invoke-direct {v2, p0, p1}, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter$1;-><init>(Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;I)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lgh;->i:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter$2;

    invoke-direct {v1, p0, p1}, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter$2;-><init>(Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgh;

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lgh;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lgh;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public getmListener2()Lcn/apppark/vertify/adapter/TMyHistoryAdapter$onRightItem2ClickListener;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;->mListener2:Lcn/apppark/vertify/adapter/TMyHistoryAdapter$onRightItem2ClickListener;

    return-object v0
.end method

.method public setOnRightItem2ClickListener(Lcn/apppark/vertify/adapter/TMyHistoryAdapter$onRightItem2ClickListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;->mListener2:Lcn/apppark/vertify/adapter/TMyHistoryAdapter$onRightItem2ClickListener;

    return-void
.end method

.method public setOnRightItemClickListener(Lcn/apppark/vertify/adapter/TMyHistoryAdapter$onRightItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;->mListener:Lcn/apppark/vertify/adapter/TMyHistoryAdapter$onRightItemClickListener;

    return-void
.end method
