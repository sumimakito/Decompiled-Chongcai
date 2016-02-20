.class public Lcn/apppark/vertify/adapter/SProductNine5032Adapter;
.super Lcn/apppark/vertify/adapter/TempBaseAdapter;


# instance fields
.field a:Landroid/view/LayoutInflater;

.field b:I

.field c:I

.field private columns:I

.field private context:Landroid/content/Context;

.field d:I

.field private pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

.field private reItemVoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/DynProductVo;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/apppark/mcd/vo/dyn/DynProductVo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcn/apppark/vertify/adapter/TempBaseAdapter;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->columns:I

    iput-object p1, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    iput-object p3, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->reItemVoList:Ljava/util/ArrayList;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->a:Landroid/view/LayoutInflater;

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->b:I

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->POSITION_TOP:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_tabPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    iget v1, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->b:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->c:I

    iget v0, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->c:I

    iput v0, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->d:I

    :goto_0
    return-void

    :cond_0
    sget v0, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    iget v1, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->b:I

    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->c:I

    iget v0, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->c:I

    iput v0, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->d:I

    goto :goto_0
.end method

.method static synthetic a(Lcn/apppark/vertify/adapter/SProductNine5032Adapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method private setState(Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/16 v4, 0x18

    const/16 v5, 0xd

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->context:Landroid/content/Context;

    const v2, 0x7f020113

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrStartPic(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p4}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->context:Landroid/content/Context;

    const v2, 0x7f02010a

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrStartPic(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p4}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->context:Landroid/content/Context;

    const v2, 0x7f020117

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrStartPic(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->reItemVoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->columns:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->reItemVoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const v8, 0x7f020071

    const/16 v4, 0x8

    const/4 v7, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030080

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lum;

    invoke-direct {v1}, Lum;-><init>()V

    const v0, 0x7f0a0345

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lum;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0346

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, v1, Lum;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a0347

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lum;->c:Landroid/widget/TextView;

    const v0, 0x7f0a034b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lum;->d:Landroid/widget/TextView;

    const v0, 0x7f0a034d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lum;->e:Landroid/widget/TextView;

    const v0, 0x7f0a034c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lum;->f:Landroid/widget/TextView;

    const v0, 0x7f0a0349

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lum;->g:Landroid/widget/TextView;

    const v0, 0x7f0a034a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lum;->h:Landroid/widget/TextView;

    iget-object v0, v1, Lum;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a034e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lum;->i:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a034f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, v1, Lum;->j:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a0350

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lum;->k:Landroid/widget/TextView;

    const v0, 0x7f0a0354

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lum;->l:Landroid/widget/TextView;

    const v0, 0x7f0a0356

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lum;->m:Landroid/widget/TextView;

    const v0, 0x7f0a0355

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lum;->n:Landroid/widget/TextView;

    const v0, 0x7f0a0352

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lum;->o:Landroid/widget/TextView;

    const v0, 0x7f0a0353

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lum;->p:Landroid/widget/TextView;

    iget-object v0, v1, Lum;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->c:I

    iget v4, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->d:I

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v3, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->b:I

    iget v4, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->b:I

    iget v5, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->b:I

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->b:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, v1, Lum;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v3, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->c:I

    iget v4, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->d:I

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v3, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->b:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->b:I

    iget v5, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->b:I

    iget v6, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->b:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, v1, Lum;->j:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v3, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    add-int/lit8 v0, p1, 0x1

    iget v3, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->columns:I

    mul-int/2addr v0, v3

    iget-object v3, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->reItemVoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget v0, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->columns:I

    move v3, v0

    :goto_1
    if-ne v3, v7, :cond_3

    iget-object v0, v1, Lum;->i:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    iget v0, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->columns:I

    if-ge v2, v0, :cond_5

    if-ge v2, v3, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->reItemVoList:Ljava/util/ArrayList;

    iget v4, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->columns:I

    mul-int/2addr v4, p1

    add-int/2addr v4, v2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v4, v1, Lum;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getPicPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v4, v1, Lum;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    iget-object v4, v1, Lum;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lum;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getCommentCount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lum;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getSoldCount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lum;->g:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u00a5"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getPrice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lum;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    new-instance v5, Lcn/apppark/vertify/adapter/SProductNine5032Adapter$MyOnClick;

    invoke-direct {v5, p0, v0}, Lcn/apppark/vertify/adapter/SProductNine5032Adapter$MyOnClick;-><init>(Lcn/apppark/vertify/adapter/SProductNine5032Adapter;Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;)V

    invoke-virtual {v4, v5}, Lcn/apppark/mcd/widget/RemoteImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lum;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v6, "000000"

    invoke-direct {p0, v4, v5, v0, v6}, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->setState(Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lum;

    move-object v1, v0

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->reItemVoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->columns:I

    mul-int/2addr v3, p1

    sub-int/2addr v0, v3

    move v3, v0

    goto/16 :goto_1

    :cond_3
    iget-object v0, v1, Lum;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_4
    if-ne v2, v7, :cond_0

    if-eqz v0, :cond_0

    iget-object v4, v1, Lum;->j:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getPicPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v4, v1, Lum;->j:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    iget-object v4, v1, Lum;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lum;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getCommentCount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lum;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getSoldCount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lum;->o:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u00a5"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getPrice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lum;->j:Lcn/apppark/mcd/widget/RemoteImageView;

    new-instance v5, Lcn/apppark/vertify/adapter/SProductNine5032Adapter$MyOnClick;

    invoke-direct {v5, p0, v0}, Lcn/apppark/vertify/adapter/SProductNine5032Adapter$MyOnClick;-><init>(Lcn/apppark/vertify/adapter/SProductNine5032Adapter;Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;)V

    invoke-virtual {v4, v5}, Lcn/apppark/mcd/widget/RemoteImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lum;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v6, "000000"

    invoke-direct {p0, v4, v5, v0, v6}, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;->setState(Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    return-object p2
.end method
