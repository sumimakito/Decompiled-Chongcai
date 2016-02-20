.class public Lcn/apppark/vertify/activity/free/self/SelfImageView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcn/apppark/vertify/activity/ISelfView;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field a:Landroid/widget/RelativeLayout$LayoutParams;

.field private mContext:Landroid/content/Context;

.field private mImageView:Lcn/apppark/mcd/widget/RemoteImageView;

.field private mPageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

.field private mSelfVo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/SelfDefineItemVo;Lcn/apppark/mcd/vo/base/FreePageVo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mSelfVo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    iput-object p3, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mPageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mPageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfImageView;->init()V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/self/SelfImageView;)Lcn/apppark/mcd/vo/base/FreePageVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mPageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    return-object v0
.end method

.method private addWater()V
    .locals 3

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getnPageId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mPageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/FreePageVo;->getSys_pageID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->getShowWaterMarker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x50

    invoke-static {v2}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v2, "copyright.png"

    invoke-static {v2, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/free/self/SelfImageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/self/SelfImageView;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mSelfVo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/self/SelfImageView;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/self/SelfImageView;->showBigPic()V

    return-void
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/self/SelfImageView;)V
    .locals 1

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->pageGroup:Lcn/apppark/vertify/PageGroup;

    invoke-virtual {v0}, Lcn/apppark/vertify/PageGroup;->pageBack()V

    return-void
.end method

.method private goBack()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mImageView:Lcn/apppark/mcd/widget/RemoteImageView;

    new-instance v1, Llr;

    invoke-direct {v1, p0}, Llr;-><init>(Lcn/apppark/vertify/activity/free/self/SelfImageView;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private goBigPic()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mImageView:Lcn/apppark/mcd/widget/RemoteImageView;

    new-instance v1, Llq;

    invoke-direct {v1, p0}, Llq;-><init>(Lcn/apppark/vertify/activity/free/self/SelfImageView;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private goNext()V
    .locals 4

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mSelfVo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getnPageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mImageView:Lcn/apppark/mcd/widget/RemoteImageView;

    new-instance v1, Llp;

    invoke-direct {v1, p0}, Llp;-><init>(Lcn/apppark/vertify/activity/free/self/SelfImageView;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getnPageId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mPageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/FreePageVo;->getSys_pageID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lls;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lls;-><init>(Lcn/apppark/vertify/activity/free/self/SelfImageView;Llp;)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lls;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mImageView:Lcn/apppark/mcd/widget/RemoteImageView;

    new-instance v1, Lcn/apppark/vertify/activity/free/self/SelfImageView$2;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/self/SelfImageView$2;-><init>(Lcn/apppark/vertify/activity/free/self/SelfImageView;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private returnBack()V
    .locals 1

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->pageGroup:Lcn/apppark/vertify/PageGroup;

    invoke-virtual {v0}, Lcn/apppark/vertify/PageGroup;->pageBack()V

    return-void
.end method

.method private showBigPic()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    const-class v2, Lcn/apppark/vertify/base/ImagePreview;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "picname"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mSelfVo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bigPic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v1, v0}, Lcn/apppark/ckj10185912/Main;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mSelfVo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getSys_w()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcn/apppark/ckj10185912/YYGYContants;->scaleUnite:F

    mul-float/2addr v0, v1

    float-to-int v1, v0

    new-instance v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcn/apppark/mcd/widget/RemoteImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mImageView:Lcn/apppark/mcd/widget/RemoteImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    sget-object v2, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v2, v2, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getnPageId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mPageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/base/FreePageVo;->getSys_pageID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mSelfVo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getData_pic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->getBmpWidhtHeight(Ljava/lang/String;)[I

    move-result-object v1

    aget v2, v1, v4

    sget v3, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    if-ge v2, v3, :cond_0

    aget v2, v1, v5

    sget v3, Lcn/apppark/ckj10185912/YYGYContants;->screenHeight:I

    if-ge v2, v3, :cond_0

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    aget v3, v1, v4

    aget v1, v1, v5

    invoke-direct {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->a:Landroid/widget/RelativeLayout$LayoutParams;

    :goto_0
    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->a:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_1
    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mSelfVo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getData_pic()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mSelfVo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getData_pic()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mImageView:Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mSelfVo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getData_pic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mSelfVo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_eventType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mImageView:Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/free/self/SelfImageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/self/SelfImageView;->addWater()V

    return-void

    :cond_0
    aget v2, v1, v4

    sget v3, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    if-le v2, v3, :cond_1

    aget v2, v1, v5

    sget v3, Lcn/apppark/ckj10185912/YYGYContants;->screenHeight:I

    if-ge v2, v3, :cond_1

    aget v2, v1, v5

    int-to-float v2, v2

    aget v1, v1, v4

    int-to-float v1, v1

    div-float v1, v2, v1

    sget v2, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    invoke-direct {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->a:Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_0

    :cond_1
    aget v2, v1, v4

    sget v3, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    if-ge v2, v3, :cond_2

    aget v2, v1, v5

    sget v3, Lcn/apppark/ckj10185912/YYGYContants;->screenHeight:I

    if-le v2, v3, :cond_2

    aget v2, v1, v5

    int-to-float v2, v2

    aget v1, v1, v4

    int-to-float v1, v1

    div-float v1, v2, v1

    sget v2, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->a:Landroid/widget/RelativeLayout$LayoutParams;

    goto/16 :goto_0

    :cond_2
    aget v2, v1, v4

    sget v3, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    if-le v2, v3, :cond_3

    aget v2, v1, v5

    sget v3, Lcn/apppark/ckj10185912/YYGYContants;->screenHeight:I

    if-le v2, v3, :cond_3

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    aget v3, v1, v4

    aget v1, v1, v5

    invoke-direct {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->a:Landroid/widget/RelativeLayout$LayoutParams;

    goto/16 :goto_0

    :cond_3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->a:Landroid/widget/RelativeLayout$LayoutParams;

    goto/16 :goto_0

    :cond_4
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->a:Landroid/widget/RelativeLayout$LayoutParams;

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mSelfVo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getData_pic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mImageView:Lcn/apppark/mcd/widget/RemoteImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mSelfVo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getSys_x()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mSelfVo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getSys_y()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setImgBg(Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_2

    :pswitch_0
    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/self/SelfImageView;->goBack()V

    goto/16 :goto_3

    :pswitch_1
    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/self/SelfImageView;->goBigPic()V

    goto/16 :goto_3

    :pswitch_2
    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/self/SelfImageView;->goNext()V

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public isOnMethod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getnPageId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfImageView;->mPageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/FreePageVo;->getSys_pageID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->linearLayoutMain:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/free/self/SelfImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
