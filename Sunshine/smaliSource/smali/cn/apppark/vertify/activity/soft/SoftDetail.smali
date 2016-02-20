.class public Lcn/apppark/vertify/activity/soft/SoftDetail;
.super Landroid/app/Activity;


# static fields
.field private static final get_what:I = 0x1

.field private static final method:Ljava/lang/String; = "detail"


# instance fields
.field public a:Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;

.field private bar:Landroid/widget/RatingBar;

.field private btn_back:Landroid/widget/Button;

.field private btn_down:Landroid/widget/Button;

.field private btn_open:Landroid/widget/Button;

.field private btn_share:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/Dialog;

.field private galleryVoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SoftReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private galleryVoList_recom:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SoftReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private gallery_big:Landroid/widget/Gallery;

.field private handler:Lrf;

.field private img_icon:Lcn/apppark/mcd/widget/RemoteImageView;

.field private isOpen:Z

.field private itemId:Ljava/lang/String;

.field private ll_pic:Landroid/widget/LinearLayout;

.field private ll_recom:Landroid/widget/LinearLayout;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private scroll_root:Landroid/widget/ScrollView;

.field private subjectId:Ljava/lang/String;

.field private tv_content:Landroid/widget/TextView;

.field private tv_detail:Landroid/widget/TextView;

.field private tv_name:Landroid/widget/TextView;

.field private tv_number:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object p0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->context:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->isOpen:Z

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/soft/SoftDetail;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/soft/SoftDetail;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->itemId:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/soft/SoftDetail;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->galleryVoList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/soft/SoftDetail;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcn/apppark/vertify/activity/soft/SoftDetail;->getData(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/soft/SoftDetail;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->isOpen:Z

    return p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/soft/SoftDetail;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->galleryVoList_recom:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b(Lcn/apppark/vertify/activity/soft/SoftDetail;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->isOpen:Z

    return v0
.end method

.method static synthetic c(Lcn/apppark/vertify/activity/soft/SoftDetail;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->btn_open:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcn/apppark/vertify/activity/soft/SoftDetail;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->tv_detail:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcn/apppark/vertify/activity/soft/SoftDetail;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/soft/SoftDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/soft/SoftDetail;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->galleryVoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getData(ILjava/lang/String;)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    const-string v2, "2"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    iget-object v2, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->itemId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "subjectId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->subjectId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->handler:Lrf;

    const-string v3, "json"

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/ad.ws"

    move v1, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/soft/SoftDetail;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->ll_pic:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic i(Lcn/apppark/vertify/activity/soft/SoftDetail;)Landroid/widget/Gallery;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->gallery_big:Landroid/widget/Gallery;

    return-object v0
.end method

.method private initData()V
    .locals 12

    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/high16 v8, 0x42480000    # 50.0f

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->a:Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->img_icon:Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->a:Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->tv_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->a:Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->tv_content:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->a:Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;->getSortName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->a:Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;->getFileSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->tv_number:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->a:Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;->getDownCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u6b21\u4e0b\u8f7d"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->tv_detail:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->a:Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;->getDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->tv_detail:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->bar:Landroid/widget/RatingBar;

    iget-object v1, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->a:Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;->getScore()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    const v0, 0x7f0a03fa

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->bar:Landroid/widget/RatingBar;

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->ll_recom:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->galleryVoList_recom:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->galleryVoList_recom:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->context:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v11, v2, v11, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v4, Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->context:Landroid/content/Context;

    invoke-direct {v4, v0}, Lcn/apppark/mcd/widget/RemoteImageView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->galleryVoList_recom:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SoftReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SoftReturnVo;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->context:Landroid/content/Context;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->galleryVoList_recom:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SoftReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SoftReturnVo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "12"

    invoke-static {v5, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setTextSize(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v0, 0x11

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v8}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v6

    invoke-static {v8}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v7

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v0, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v5, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->ll_recom:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->galleryVoList_recom:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SoftReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SoftReturnVo;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcn/apppark/vertify/activity/soft/SoftDetail$6;

    invoke-direct {v3, p0, v0}, Lcn/apppark/vertify/activity/soft/SoftDetail$6;-><init>(Lcn/apppark/vertify/activity/soft/SoftDetail;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcn/apppark/mcd/widget/RemoteImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private initWidget()V
    .locals 2

    const v0, 0x7f0a03f0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a03f6

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->btn_share:Landroid/widget/Button;

    const v0, 0x7f0a03fd

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->btn_down:Landroid/widget/Button;

    const v0, 0x7f0a0400

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->btn_open:Landroid/widget/Button;

    const v0, 0x7f0a03ff

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->ll_pic:Landroid/widget/LinearLayout;

    const v0, 0x7f0a03f7

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->scroll_root:Landroid/widget/ScrollView;

    const v0, 0x7f0a0402

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->ll_recom:Landroid/widget/LinearLayout;

    const v0, 0x7f0a03f8

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->img_icon:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a03f9

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->tv_name:Landroid/widget/TextView;

    const v0, 0x7f0a03fb

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->tv_content:Landroid/widget/TextView;

    const v0, 0x7f0a03fc

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->tv_number:Landroid/widget/TextView;

    const v0, 0x7f0a0401

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->tv_detail:Landroid/widget/TextView;

    const v0, 0x7f0a03fa

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->bar:Landroid/widget/RatingBar;

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->btn_back:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/soft/SoftDetail$2;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/soft/SoftDetail$2;-><init>(Lcn/apppark/vertify/activity/soft/SoftDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->btn_open:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/soft/SoftDetail$3;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/soft/SoftDetail$3;-><init>(Lcn/apppark/vertify/activity/soft/SoftDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->btn_share:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->btn_share:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/soft/SoftDetail$4;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/soft/SoftDetail$4;-><init>(Lcn/apppark/vertify/activity/soft/SoftDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->btn_down:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->btn_down:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/soft/SoftDetail$5;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/soft/SoftDetail$5;-><init>(Lcn/apppark/vertify/activity/soft/SoftDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/soft/SoftDetail;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->initData()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300a1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->itemId:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subjectid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->subjectId:Ljava/lang/String;

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/LoadDataProgress;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcn/apppark/ckj10185912/YYGYContants;->screenHeight:I

    const/high16 v2, 0x42300000    # 44.0f

    invoke-static {v2}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->initWidget()V

    new-instance v0, Lrf;

    invoke-direct {v0, p0, v4}, Lrf;-><init>(Lcn/apppark/vertify/activity/soft/SoftDetail;Lre;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->handler:Lrf;

    const-string v0, "detail"

    invoke-direct {p0, v3, v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->getData(ILjava/lang/String;)V

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->context:Landroid/content/Context;

    const v2, 0x7f06000d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a2

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v1, 0x7f0a0404

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->gallery_big:Landroid/widget/Gallery;

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->gallery_big:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->gallery_big:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcn/apppark/ckj10185912/YYGYContants;->screenHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail;->gallery_big:Landroid/widget/Gallery;

    new-instance v1, Lre;

    invoke-direct {v1, p0}, Lre;-><init>(Lcn/apppark/vertify/activity/soft/SoftDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
