.class public Lcn/apppark/vertify/activity/free/self/SelfWebView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/apppark/vertify/activity/ISelfView;


# static fields
.field private static final IV_SELECTED:[F


# instance fields
.field public a:Landroid/view/animation/Animation;

.field public b:Landroid/view/animation/Animation;

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field public c:F

.field private context:Landroid/content/Context;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mWebView:Landroid/webkit/WebView;

.field private navBar:Landroid/view/View;

.field private nextIV:Landroid/widget/ImageView;

.field private openIV:Landroid/widget/ImageView;

.field private parentScroll:Landroid/widget/ScrollView;

.field private preIV:Landroid/widget/ImageView;

.field private refIV:Landroid/widget/ImageView;

.field private vo:Lcn/apppark/mcd/vo/free/SelfWebItemVo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->IV_SELECTED:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x42480000    # 50.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x42480000    # 50.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x42480000    # 50.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/SelfWebItemVo;Landroid/widget/ScrollView;)V
    .locals 4

    const-wide/16 v2, 0x1f4

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->context:Landroid/content/Context;

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->vo:Lcn/apppark/mcd/vo/free/SelfWebItemVo;

    iput-object p3, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->parentScroll:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfWebView;->init()V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/self/SelfWebView;->initNavBar()V

    const v0, 0x7f040005

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->b:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const v0, 0x7f040006

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->a:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/self/SelfWebView;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/self/SelfWebView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->navBar:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/self/SelfWebView;)Lcn/apppark/mcd/vo/free/SelfWebItemVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->vo:Lcn/apppark/mcd/vo/free/SelfWebItemVo;

    return-object v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/self/SelfWebView;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->parentScroll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/free/self/SelfWebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->context:Landroid/content/Context;

    return-object v0
.end method

.method private initNavBar()V
    .locals 6

    const/16 v5, 0x64

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v3, 0x42c80000    # 100.0f

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->vo:Lcn/apppark/mcd/vo/free/SelfWebItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfWebItemVo;->getStyle_showNavFlag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->refIV:Landroid/widget/ImageView;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->cacheUtil:Lcn/apppark/mcd/util/imge/CacheUtil;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->vo:Lcn/apppark/mcd/vo/free/SelfWebItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfWebItemVo;->getStyle_refPagePic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/apppark/mcd/util/imge/CacheUtil;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->preIV:Landroid/widget/ImageView;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->cacheUtil:Lcn/apppark/mcd/util/imge/CacheUtil;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->vo:Lcn/apppark/mcd/vo/free/SelfWebItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfWebItemVo;->getStyle_prePagePic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/apppark/mcd/util/imge/CacheUtil;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->nextIV:Landroid/widget/ImageView;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->cacheUtil:Lcn/apppark/mcd/util/imge/CacheUtil;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->vo:Lcn/apppark/mcd/vo/free/SelfWebItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfWebItemVo;->getStyle_nextPagePic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/apppark/mcd/util/imge/CacheUtil;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->openIV:Landroid/widget/ImageView;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->cacheUtil:Lcn/apppark/mcd/util/imge/CacheUtil;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->vo:Lcn/apppark/mcd/vo/free/SelfWebItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfWebItemVo;->getStyle_browsePagePic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/apppark/mcd/util/imge/CacheUtil;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->refIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->preIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->nextIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->openIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->vo:Lcn/apppark/mcd/vo/free/SelfWebItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfWebItemVo;->getStyle_barBgType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->navBar:Landroid/view/View;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->navBar:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->vo:Lcn/apppark/mcd/vo/free/SelfWebItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfWebItemVo;->getStyle_barBgColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->vo:Lcn/apppark/mcd/vo/free/SelfWebItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfWebItemVo;->getStyle_barBgAlpha()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    if-gt v0, v5, :cond_0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    :cond_0
    iput-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->cacheUtil:Lcn/apppark/mcd/util/imge/CacheUtil;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->vo:Lcn/apppark/mcd/vo/free/SelfWebItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfWebItemVo;->getStyle_barBgPic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/util/imge/CacheUtil;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->vo:Lcn/apppark/mcd/vo/free/SelfWebItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfWebItemVo;->getStyle_barBgAlpha()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_1

    if-ltz v1, :cond_1

    if-gt v1, v5, :cond_1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    div-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->navBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public callTel(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public init()V
    .locals 6

    const/4 v2, -0x2

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mProgressBar:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/free/self/SelfWebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030083

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->navBar:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v0, 0x42200000    # 40.0f

    sget v2, Lcn/apppark/ckj10185912/YYGYContants;->scaleUnite:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-direct {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->navBar:Landroid/view/View;

    const v2, 0x7f0a0322

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->openIV:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->navBar:Landroid/view/View;

    const v2, 0x7f0a0323

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->refIV:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->navBar:Landroid/view/View;

    const v2, 0x7f0a0320

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->preIV:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->navBar:Landroid/view/View;

    const v2, 0x7f0a0321

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->nextIV:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->navBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/free/self/SelfWebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/webkit/WebView;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v1, v5, v0}, Lcn/apppark/vertify/activity/free/self/SelfWebView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "1"

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->vo:Lcn/apppark/mcd/vo/free/SelfWebItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfWebItemVo;->getStyle_gesture()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    sget v0, Lcn/apppark/ckj10185912/YYGYContants;->SDK:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Llu;

    invoke-direct {v1, p0}, Llu;-><init>(Lcn/apppark/vertify/activity/free/self/SelfWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Llv;

    invoke-direct {v1, p0}, Llv;-><init>(Lcn/apppark/vertify/activity/free/self/SelfWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Llw;

    invoke-direct {v1, p0}, Llw;-><init>(Lcn/apppark/vertify/activity/free/self/SelfWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Llx;

    invoke-direct {v1, p0}, Llx;-><init>(Lcn/apppark/vertify/activity/free/self/SelfWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->vo:Lcn/apppark/mcd/vo/free/SelfWebItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfWebItemVo;->getData_url()Ljava/lang/String;

    move-result-object v0

    const-string v1, "www."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->vo:Lcn/apppark/mcd/vo/free/SelfWebItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfWebItemVo;->getData_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/self/SelfWebView;->setZoomControlGone(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public isOnMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->vo:Lcn/apppark/mcd/vo/free/SelfWebItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfWebItemVo;->getData_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    :pswitch_3
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->vo:Lcn/apppark/mcd/vo/free/SelfWebItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfWebItemVo;->getData_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v1, v0}, Lcn/apppark/ckj10185912/Main;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0320
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
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

.method public setZoomControlGone(Landroid/view/View;)V
    .locals 4

    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "mZoomButtonsController"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v1, Landroid/widget/ZoomButtonsController;

    invoke-direct {v1, p1}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method
