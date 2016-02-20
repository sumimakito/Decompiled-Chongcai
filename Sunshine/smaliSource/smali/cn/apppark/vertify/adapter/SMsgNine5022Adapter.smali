.class public Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;
.super Lcn/apppark/vertify/adapter/TempBaseAdapter;


# instance fields
.field a:Landroid/view/LayoutInflater;

.field b:I

.field c:I

.field private columns:I

.field private context:Landroid/content/Context;

.field d:I

.field private pageItem:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

.field private reItemVoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/DynMsgListVo;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/apppark/mcd/vo/dyn/DynMsgListVo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcn/apppark/vertify/adapter/TempBaseAdapter;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->columns:I

    iput-object p1, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    iput-object p3, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->reItemVoList:Ljava/util/ArrayList;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->a:Landroid/view/LayoutInflater;

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->b:I

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->POSITION_TOP:Ljava/lang/String;

    invoke-virtual {p2}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_tabPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    iget v1, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->b:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->c:I

    iget v0, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->c:I

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->d:I

    :goto_0
    return-void

    :cond_0
    sget v0, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    iget v1, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->b:I

    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->c:I

    iget v0, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->c:I

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->d:I

    goto :goto_0
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

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->context:Landroid/content/Context;

    const v2, 0x7f020097

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

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->context:Landroid/content/Context;

    const v2, 0x7f020089

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

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->context:Landroid/content/Context;

    const v2, 0x7f02009b

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

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->reItemVoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->columns:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->reItemVoList:Ljava/util/ArrayList;

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

    const/4 v7, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03007b

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Luj;

    invoke-direct {v1}, Luj;-><init>()V

    const v0, 0x7f0a0321

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Luj;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0322

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, v1, Luj;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a0323

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Luj;->c:Landroid/widget/TextView;

    const v0, 0x7f0a0324

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Luj;->d:Landroid/widget/TextView;

    const v0, 0x7f0a0325

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Luj;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0326

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Luj;->f:Landroid/widget/TextView;

    const v0, 0x7f0a0327

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Luj;->g:Landroid/widget/TextView;

    const v0, 0x7f0a0328

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Luj;->h:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0329

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, v1, Luj;->i:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a032a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Luj;->j:Landroid/widget/TextView;

    const v0, 0x7f0a032b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Luj;->k:Landroid/widget/TextView;

    const v0, 0x7f0a032c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Luj;->l:Landroid/widget/TextView;

    const v0, 0x7f0a032d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Luj;->m:Landroid/widget/TextView;

    const v0, 0x7f0a032e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Luj;->n:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->c:I

    iget v4, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->d:I

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v3, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->b:I

    iget v4, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->b:I

    iget v5, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->b:I

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->b:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, v1, Luj;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v3, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->c:I

    iget v4, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->d:I

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v3, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->b:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->b:I

    iget v5, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->b:I

    iget v6, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->b:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, v1, Luj;->i:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v3, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    add-int/lit8 v0, p1, 0x1

    iget v3, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->columns:I

    mul-int/2addr v0, v3

    iget-object v3, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->reItemVoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget v0, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->columns:I

    move v3, v0

    :goto_1
    if-ne v3, v7, :cond_3

    iget-object v0, v1, Luj;->h:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    iget v0, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->columns:I

    if-ge v2, v0, :cond_5

    if-ge v2, v3, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->reItemVoList:Ljava/util/ArrayList;

    iget v4, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->columns:I

    mul-int/2addr v4, p1

    add-int/2addr v4, v2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v4, v1, Luj;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getPicUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v4, v1, Luj;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    iget-object v4, v1, Luj;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Luj;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getCommentCount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Luj;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getBrowseCount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Luj;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getCreateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Luj;->a:Landroid/widget/RelativeLayout;

    new-instance v5, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter$MyOnClick;

    invoke-direct {v5, p0, v0}, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter$MyOnClick;-><init>(Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Luj;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v6, "000000"

    invoke-direct {p0, v4, v5, v0, v6}, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->setState(Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luj;

    move-object v1, v0

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->reItemVoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->columns:I

    mul-int/2addr v3, p1

    sub-int/2addr v0, v3

    move v3, v0

    goto/16 :goto_1

    :cond_3
    iget-object v0, v1, Luj;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_4
    if-ne v2, v7, :cond_0

    if-eqz v0, :cond_0

    iget-object v4, v1, Luj;->i:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getPicUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v4, v1, Luj;->i:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    iget-object v4, v1, Luj;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getCreateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Luj;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Luj;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getCommentCount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Luj;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getBrowseCount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Luj;->h:Landroid/widget/RelativeLayout;

    new-instance v5, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter$MyOnClick;

    invoke-direct {v5, p0, v0}, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter$MyOnClick;-><init>(Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Luj;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v6, "000000"

    invoke-direct {p0, v4, v5, v0, v6}, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;->setState(Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    return-object p2
.end method
