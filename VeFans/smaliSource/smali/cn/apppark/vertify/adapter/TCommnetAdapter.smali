.class public Lcn/apppark/vertify/adapter/TCommnetAdapter;
.super Lcn/apppark/vertify/adapter/TempBaseAdapter;


# instance fields
.field private btn_comment:Landroid/widget/Button;

.field private btn_delete:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private currentCommentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

.field private currentPosition:I

.field private info:Lcn/apppark/vertify/base/ClientPersionInfo;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TCommentVo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private onDeleteListener:Lcn/apppark/vertify/adapter/TCommnetAdapter$OnDeleteListener;

.field private onPicClickListener:Lcn/apppark/vertify/adapter/TCommnetAdapter$OnPicClickListener;

.field private popMenu:Ltx;

.field private topicId:Ljava/lang/String;

.field private topicUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TCommentVo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcn/apppark/vertify/adapter/TempBaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->itemList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->context:Landroid/content/Context;

    iput-object p3, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->topicId:Ljava/lang/String;

    iput-object p4, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->topicUserId:Ljava/lang/String;

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->popMenu:Ltx;

    if-nez v0, :cond_0

    new-instance v0, Ltx;

    invoke-direct {v0, p0}, Ltx;-><init>(Lcn/apppark/vertify/adapter/TCommnetAdapter;)V

    iput-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->popMenu:Ltx;

    :cond_0
    new-instance v0, Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-direct {v0, p1}, Lcn/apppark/vertify/base/ClientPersionInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    return-void
.end method

.method static synthetic a(Lcn/apppark/vertify/adapter/TCommnetAdapter;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->currentPosition:I

    return p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/adapter/TCommnetAdapter;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->btn_comment:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic a(Lcn/apppark/vertify/adapter/TCommnetAdapter;Lcn/apppark/mcd/vo/tieba/TCommentVo;)Lcn/apppark/mcd/vo/tieba/TCommentVo;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->currentCommentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    return-object p1
.end method

.method static synthetic a(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Lcn/apppark/vertify/adapter/TCommnetAdapter$OnPicClickListener;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->onPicClickListener:Lcn/apppark/vertify/adapter/TCommnetAdapter$OnPicClickListener;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/adapter/TCommnetAdapter;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->btn_delete:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic b(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Lcn/apppark/vertify/base/ClientPersionInfo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->btn_delete:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Ltx;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->popMenu:Ltx;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->topicId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->topicUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Lcn/apppark/vertify/adapter/TCommnetAdapter$OnDeleteListener;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->onDeleteListener:Lcn/apppark/vertify/adapter/TCommnetAdapter$OnDeleteListener;

    return-object v0
.end method

.method static synthetic i(Lcn/apppark/vertify/adapter/TCommnetAdapter;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->currentPosition:I

    return v0
.end method

.method static synthetic j(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Lcn/apppark/mcd/vo/tieba/TCommentVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->currentCommentVo:Lcn/apppark/mcd/vo/tieba/TCommentVo;

    return-object v0
.end method

.method public static synthetic k(Lcn/apppark/vertify/adapter/TCommnetAdapter;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->btn_comment:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public destroyPop()V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->popMenu:Ltx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->popMenu:Ltx;

    invoke-virtual {v0}, Ltx;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->popMenu:Ltx;

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->itemList:Ljava/util/ArrayList;

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
    .locals 8

    if-nez p2, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300ad

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Ltw;

    invoke-direct {v1}, Ltw;-><init>()V

    const v0, 0x7f0a03fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, v1, Ltw;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a03fe

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Ltw;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a0403

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Ltw;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a03fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ltw;->d:Landroid/widget/TextView;

    const v0, 0x7f0a03ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ltw;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0401

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ltw;->f:Landroid/widget/TextView;

    const v0, 0x7f0a0404

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Ltw;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0407

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Ltw;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0406

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Ltw;->k:Landroid/widget/ImageView;

    const v0, 0x7f0a0409

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Ltw;->l:Landroid/widget/ImageView;

    const v0, 0x7f0a0405

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ltw;->i:Landroid/widget/TextView;

    const v0, 0x7f0a0408

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ltw;->j:Landroid/widget/TextView;

    const v0, 0x7f0a040a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ltw;->m:Landroid/widget/TextView;

    const v0, 0x7f0a03f0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Ltw;->n:Landroid/widget/Button;

    const v0, 0x7f0a03ef

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Ltw;->p:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0402

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Ltw;->o:Landroid/widget/LinearLayout;

    iget-object v0, v1, Ltw;->n:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v6, v1

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/apppark/mcd/vo/tieba/TCommentVo;

    if-eqz v2, :cond_6

    iget-object v0, v6, Ltw;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getHeadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v0, v6, Ltw;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Ltw;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u7b2c"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getFloorNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u697c, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getSubTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->topicUserId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->topicUserId:Ljava/lang/String;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v6, Ltw;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v0, v6, Ltw;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, v6, Ltw;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getContent()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, -0x1000000

    invoke-static {v1, v3, v4}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStr(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, v6, Ltw;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v6, Ltw;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v6, Ltw;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Ltw;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Ltw;->m:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v6, Ltw;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v6, Ltw;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getImgUrlItem()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v6, Ltw;->o:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getImgUrlItem()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    new-instance v3, Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->context:Landroid/content/Context;

    invoke-direct {v3, v0}, Lcn/apppark/mcd/widget/RemoteImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getImgUrlItem()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/ImgVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/ImgVo;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getImgUrlItem()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/ImgVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/ImgVo;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f02006f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v0, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, v6, Ltw;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcn/apppark/vertify/adapter/TCommnetAdapter$1;

    invoke-direct {v0, p0}, Lcn/apppark/vertify/adapter/TCommnetAdapter$1;-><init>(Lcn/apppark/vertify/adapter/TCommnetAdapter;)V

    invoke-virtual {v3, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltw;

    move-object v6, v0

    goto/16 :goto_0

    :cond_2
    iget-object v0, v6, Ltw;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, v6, Ltw;->o:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    iget-object v0, v6, Ltw;->m:Landroid/widget/TextView;

    new-instance v1, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;

    invoke-direct {v1, p0, v2}, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;-><init>(Lcn/apppark/vertify/adapter/TCommnetAdapter;Lcn/apppark/mcd/vo/tieba/TCommentVo;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Ltw;->n:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;

    invoke-direct {v1, p0, v2, p1}, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;-><init>(Lcn/apppark/vertify/adapter/TCommnetAdapter;Lcn/apppark/mcd/vo/tieba/TCommentVo;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getSonItem()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getSonItem()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, v6, Ltw;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v6, Ltw;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->topicUserId:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->topicUserId:Ljava/lang/String;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getSonItem()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TReplayVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v1, v6, Ltw;->i:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getSonItem()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TReplayVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getUserName()Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f020163

    iget-object v5, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f070017

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v3, v0, v4, v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrEndPic(Landroid/content/Context;Ljava/lang/String;II)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Ltw;->k:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, v6, Ltw;->k:Landroid/widget/ImageView;

    new-instance v0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getSonItem()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/vo/tieba/TReplayVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getReplyId()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;-><init>(Lcn/apppark/vertify/adapter/TCommnetAdapter;Lcn/apppark/mcd/vo/tieba/TCommentVo;IILjava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    iget-object v1, v6, Ltw;->i:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getSonItem()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TReplayVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getContent()Ljava/lang/String;

    move-result-object v0

    const/high16 v4, -0x1000000

    invoke-static {v3, v0, v4}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStr(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v1, v6, Ltw;->i:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "    "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getSonItem()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TReplayVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getSubTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-static {v0, v3, v4}, Lcn/apppark/mcd/util/FunctionPublic;->getSpannerStyle(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Ltw;->i:Landroid/widget/TextView;

    new-instance v1, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;

    invoke-direct {v1, p0, v2}, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;-><init>(Lcn/apppark/vertify/adapter/TCommnetAdapter;Lcn/apppark/mcd/vo/tieba/TCommentVo;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getSonItem()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    iget-object v0, v6, Ltw;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->topicUserId:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->topicUserId:Ljava/lang/String;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getSonItem()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TReplayVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v1, v6, Ltw;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getSonItem()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TReplayVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getUserName()Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f020163

    iget-object v5, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f070017

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v3, v0, v4, v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrEndPic(Landroid/content/Context;Ljava/lang/String;II)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Ltw;->l:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, v6, Ltw;->l:Landroid/widget/ImageView;

    new-instance v0, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;

    const/4 v4, 0x1

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getSonItem()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/vo/tieba/TReplayVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getReplyId()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;-><init>(Lcn/apppark/vertify/adapter/TCommnetAdapter;Lcn/apppark/mcd/vo/tieba/TCommentVo;IILjava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    iget-object v1, v6, Ltw;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getSonItem()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TReplayVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getContent()Ljava/lang/String;

    move-result-object v0

    const/high16 v4, -0x1000000

    invoke-static {v3, v0, v4}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStr(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v1, v6, Ltw;->j:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "    "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getSonItem()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TReplayVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getSubTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-static {v0, v3, v4}, Lcn/apppark/mcd/util/FunctionPublic;->getSpannerStyle(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Ltw;->j:Landroid/widget/TextView;

    new-instance v1, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;

    invoke-direct {v1, p0, v2}, Lcn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener;-><init>(Lcn/apppark/vertify/adapter/TCommnetAdapter;Lcn/apppark/mcd/vo/tieba/TCommentVo;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_6

    iget-object v0, v6, Ltw;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v6, Ltw;->m:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u66f4\u591a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6761\u56de\u590d..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-object p2

    :cond_7
    iget-object v1, v6, Ltw;->i:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getSonItem()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TReplayVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/16 v4, 0xe

    invoke-static {v0, v3, v4}, Lcn/apppark/mcd/util/FunctionPublic;->getSpannerStyle(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Ltw;->k:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_8
    iget-object v1, v6, Ltw;->j:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getSonItem()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TReplayVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/16 v4, 0xe

    invoke-static {v0, v3, v4}, Lcn/apppark/mcd/util/FunctionPublic;->getSpannerStyle(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Ltw;->l:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public setOnDeleteListener(Lcn/apppark/vertify/adapter/TCommnetAdapter$OnDeleteListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->onDeleteListener:Lcn/apppark/vertify/adapter/TCommnetAdapter$OnDeleteListener;

    return-void
.end method

.method public setOnPicClickListener(Lcn/apppark/vertify/adapter/TCommnetAdapter$OnPicClickListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/adapter/TCommnetAdapter;->onPicClickListener:Lcn/apppark/vertify/adapter/TCommnetAdapter$OnPicClickListener;

    return-void
.end method
