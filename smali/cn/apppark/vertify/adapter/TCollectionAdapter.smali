.class public Lcn/apppark/vertify/adapter/TCollectionAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private context:Landroid/content/Context;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TMyCollectionVo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcn/apppark/vertify/adapter/TCollectionAdapter$onRightItemClickListener;

.field private mRightWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TMyCollectionVo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/vertify/adapter/TCollectionAdapter;->mRightWidth:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/vertify/adapter/TCollectionAdapter;->mListener:Lcn/apppark/vertify/adapter/TCollectionAdapter$onRightItemClickListener;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/vertify/adapter/TCollectionAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcn/apppark/vertify/adapter/TCollectionAdapter;->itemList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/apppark/vertify/adapter/TCollectionAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TMyCollectionVo;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/vertify/adapter/TCollectionAdapter;->mRightWidth:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/vertify/adapter/TCollectionAdapter;->mListener:Lcn/apppark/vertify/adapter/TCollectionAdapter$onRightItemClickListener;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/vertify/adapter/TCollectionAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcn/apppark/vertify/adapter/TCollectionAdapter;->itemList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/apppark/vertify/adapter/TCollectionAdapter;->context:Landroid/content/Context;

    iput p3, p0, Lcn/apppark/vertify/adapter/TCollectionAdapter;->mRightWidth:I

    return-void
.end method

.method static synthetic a(Lcn/apppark/vertify/adapter/TCollectionAdapter;)Lcn/apppark/vertify/adapter/TCollectionAdapter$onRightItemClickListener;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCollectionAdapter;->mListener:Lcn/apppark/vertify/adapter/TCollectionAdapter$onRightItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCollectionAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCollectionAdapter;->itemList:Ljava/util/ArrayList;

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
    .locals 4

    const/4 v3, -0x1

    if-nez p2, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCollectionAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030094

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Ltv;

    invoke-direct {v1}, Ltv;-><init>()V

    const v0, 0x7f0a0012

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Ltv;->d:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a001b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Ltv;->e:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a037b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ltv;->a:Landroid/widget/TextView;

    const v0, 0x7f0a037e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ltv;->b:Landroid/widget/TextView;

    const v0, 0x7f0a037c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ltv;->c:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, v1, Ltv;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcn/apppark/vertify/adapter/TCollectionAdapter;->mRightWidth:I

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, v1, Ltv;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCollectionAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TMyCollectionVo;

    if-eqz v0, :cond_0

    iget-object v2, v1, Ltv;->e:Landroid/widget/RelativeLayout;

    new-instance v3, Lcn/apppark/vertify/adapter/TCollectionAdapter$1;

    invoke-direct {v3, p0, p1}, Lcn/apppark/vertify/adapter/TCollectionAdapter$1;-><init>(Lcn/apppark/vertify/adapter/TCollectionAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Ltv;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMyCollectionVo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Ltv;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMyCollectionVo;->getCommentNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Ltv;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMyCollectionVo;->getTiebaName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv;

    move-object v1, v0

    goto :goto_0
.end method

.method public setOnRightItemClickListener(Lcn/apppark/vertify/adapter/TCollectionAdapter$onRightItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/adapter/TCollectionAdapter;->mListener:Lcn/apppark/vertify/adapter/TCollectionAdapter$onRightItemClickListener;

    return-void
.end method
