.class public Lcn/apppark/vertify/adapter/TMainAdapter;
.super Lcn/apppark/vertify/adapter/TempBaseAdapter;


# instance fields
.field private act:Lcn/apppark/vertify/activity/tieba/TMain;

.field private context:Landroid/content/Context;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TMainVo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcn/apppark/vertify/activity/tieba/TMain;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TMainVo;",
            ">;",
            "Lcn/apppark/vertify/activity/tieba/TMain;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcn/apppark/vertify/adapter/TempBaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/vertify/adapter/TMainAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcn/apppark/vertify/adapter/TMainAdapter;->itemList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/apppark/vertify/adapter/TMainAdapter;->context:Landroid/content/Context;

    iput-object p3, p0, Lcn/apppark/vertify/adapter/TMainAdapter;->act:Lcn/apppark/vertify/activity/tieba/TMain;

    return-void
.end method

.method static synthetic a(Lcn/apppark/vertify/adapter/TMainAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TMainAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcn/apppark/vertify/adapter/TMainAdapter;)Lcn/apppark/vertify/activity/tieba/TMain;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TMainAdapter;->act:Lcn/apppark/vertify/activity/tieba/TMain;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TMainAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TMainAdapter;->itemList:Ljava/util/ArrayList;

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
    .locals 9

    const/4 v5, 0x5

    const v8, 0x7f02006f

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v4, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TMainAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300a1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Ltz;

    invoke-direct {v1}, Ltz;-><init>()V

    const v0, 0x7f0a03c1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Ltz;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0a03bc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, v1, Ltz;->c:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a03c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Ltz;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0a03c2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, v1, Ltz;->l:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a03c3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, v1, Ltz;->m:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a03c4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, v1, Ltz;->n:Lcn/apppark/mcd/widget/RemoteImageView;

    sget v0, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v2}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v2

    sub-int/2addr v0, v2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    div-int/lit8 v3, v0, 0x3

    div-int/lit8 v0, v0, 0x3

    invoke-direct {v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v6, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, v1, Ltz;->l:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Ltz;->m:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Ltz;->n:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a03bd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ltz;->d:Landroid/widget/TextView;

    const v0, 0x7f0a03be

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ltz;->e:Landroid/widget/TextView;

    const v0, 0x7f0a03bf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ltz;->f:Landroid/widget/TextView;

    const v0, 0x7f0a03c0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ltz;->g:Landroid/widget/TextView;

    const v0, 0x7f0a03c6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Ltz;->h:Landroid/widget/ImageView;

    const v0, 0x7f0a03c8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Ltz;->i:Landroid/widget/ImageView;

    const v0, 0x7f0a03c9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ltz;->j:Landroid/widget/TextView;

    const v0, 0x7f0a03c7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ltz;->k:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/adapter/TMainAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TMainVo;

    if-eqz v0, :cond_6

    iget-object v1, v2, Ltz;->c:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getHeadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v1, v2, Ltz;->c:Lcn/apppark/mcd/widget/RemoteImageView;

    const v3, 0x7f020070

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    iget-object v1, v2, Ltz;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Ltz;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getSubTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Ltz;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Ltz;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Ltz;->j:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getCommentNum()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Ltz;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getGoodNum()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "1"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getIsGood()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v2, Ltz;->h:Landroid/widget/ImageView;

    const v3, 0x7f020169

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    iget-object v1, v2, Ltz;->l:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v1, v7}, Lcn/apppark/mcd/widget/RemoteImageView;->setVisibility(I)V

    iget-object v1, v2, Ltz;->m:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v1, v7}, Lcn/apppark/mcd/widget/RemoteImageView;->setVisibility(I)V

    iget-object v1, v2, Ltz;->n:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v1, v7}, Lcn/apppark/mcd/widget/RemoteImageView;->setVisibility(I)V

    iget-object v1, v2, Ltz;->l:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    iget-object v1, v2, Ltz;->m:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    iget-object v1, v2, Ltz;->n:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    iget-object v1, v2, Ltz;->h:Landroid/widget/ImageView;

    new-instance v3, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;

    invoke-direct {v3, p0, v0, p1}, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;-><init>(Lcn/apppark/vertify/adapter/TMainAdapter;Lcn/apppark/mcd/vo/tieba/TMainVo;I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v2, Ltz;->k:Landroid/widget/TextView;

    new-instance v3, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;

    invoke-direct {v3, p0, v0, p1}, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;-><init>(Lcn/apppark/vertify/adapter/TMainAdapter;Lcn/apppark/mcd/vo/tieba/TMainVo;I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v2, Ltz;->i:Landroid/widget/ImageView;

    new-instance v3, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;

    invoke-direct {v3, p0, v0, p1}, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;-><init>(Lcn/apppark/vertify/adapter/TMainAdapter;Lcn/apppark/mcd/vo/tieba/TMainVo;I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v2, Ltz;->j:Landroid/widget/TextView;

    new-instance v3, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;

    invoke-direct {v3, p0, v0, p1}, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;-><init>(Lcn/apppark/vertify/adapter/TMainAdapter;Lcn/apppark/mcd/vo/tieba/TMainVo;I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getMiniImgUrl()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getMiniImgUrl()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, v2, Ltz;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v3, v4

    :goto_2
    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getMiniImgUrl()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_6

    if-nez v3, :cond_3

    iget-object v5, v2, Ltz;->l:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getMiniImgUrl()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/vo/tieba/ImgVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/ImgVo;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v1, v2, Ltz;->l:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v1, v4}, Lcn/apppark/mcd/widget/RemoteImageView;->setVisibility(I)V

    iget-object v1, v2, Ltz;->l:Lcn/apppark/mcd/widget/RemoteImageView;

    new-instance v5, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;

    invoke-direct {v5, p0, v0, p1}, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;-><init>(Lcn/apppark/vertify/adapter/TMainAdapter;Lcn/apppark/mcd/vo/tieba/TMainVo;I)V

    invoke-virtual {v1, v5}, Lcn/apppark/mcd/widget/RemoteImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltz;

    move-object v2, v0

    goto/16 :goto_0

    :cond_2
    iget-object v1, v2, Ltz;->h:Landroid/widget/ImageView;

    const v3, 0x7f020168

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_3
    const/4 v1, 0x1

    if-ne v3, v1, :cond_4

    iget-object v5, v2, Ltz;->m:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getMiniImgUrl()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/vo/tieba/ImgVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/ImgVo;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v1, v2, Ltz;->m:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v1, v4}, Lcn/apppark/mcd/widget/RemoteImageView;->setVisibility(I)V

    iget-object v1, v2, Ltz;->m:Lcn/apppark/mcd/widget/RemoteImageView;

    new-instance v5, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;

    invoke-direct {v5, p0, v0, p1}, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;-><init>(Lcn/apppark/vertify/adapter/TMainAdapter;Lcn/apppark/mcd/vo/tieba/TMainVo;I)V

    invoke-virtual {v1, v5}, Lcn/apppark/mcd/widget/RemoteImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_4
    if-ne v3, v6, :cond_0

    iget-object v5, v2, Ltz;->n:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getMiniImgUrl()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/vo/tieba/ImgVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/ImgVo;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v1, v2, Ltz;->n:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v1, v4}, Lcn/apppark/mcd/widget/RemoteImageView;->setVisibility(I)V

    iget-object v1, v2, Ltz;->n:Lcn/apppark/mcd/widget/RemoteImageView;

    new-instance v5, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;

    invoke-direct {v5, p0, v0, p1}, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;-><init>(Lcn/apppark/vertify/adapter/TMainAdapter;Lcn/apppark/mcd/vo/tieba/TMainVo;I)V

    invoke-virtual {v1, v5}, Lcn/apppark/mcd/widget/RemoteImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_5
    iget-object v0, v2, Ltz;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    return-object p2
.end method
