.class public Lcn/apppark/vertify/activity/free/self/SelfAnimaView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcn/apppark/vertify/activity/ISelfView;


# static fields
.field private static final GUI_ANIMATION_CONTINUE:I = 0x1

.field private static final GUI_ANIMATION_END:I = 0x2


# instance fields
.field private context:Landroid/content/Context;

.field private currentSeq:I

.field private currentTimes:I

.field private drawableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private isStop:Z

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SelfAnimaItem2Vo;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitcher:Landroid/widget/ImageSwitcher;

.field private pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

.field private vo:Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/apppark/mcd/vo/base/FreePageVo;",
            "Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SelfAnimaItem2Vo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->isStop:Z

    new-instance v0, Lln;

    invoke-direct {v0, p0}, Lln;-><init>(Lcn/apppark/vertify/activity/free/self/SelfAnimaView;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    iput-object p3, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->vo:Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->context:Landroid/content/Context;

    iput-object p4, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->itemList:Ljava/util/ArrayList;

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->init()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/free/self/SelfAnimaView;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->startPaly()V

    return-void
.end method

.method private autoPlay()V
    .locals 3

    const-string v0, "1"

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->vo:Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;->getStyle_autoPlayFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->startPaly()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->drawableList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->mSwitcher:Landroid/widget/ImageSwitcher;

    new-instance v1, Lcn/apppark/vertify/activity/free/self/SelfAnimaView$1;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/self/SelfAnimaView$1;-><init>(Lcn/apppark/vertify/activity/free/self/SelfAnimaView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/self/SelfAnimaView;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->isStop:Z

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/self/SelfAnimaView;)Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->vo:Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;

    return-object v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/self/SelfAnimaView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->drawableList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/free/self/SelfAnimaView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private startPaly()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->currentSeq:I

    iput v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->currentTimes:I

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->isStop:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Llm;

    invoke-direct {v1, p0}, Llm;-><init>(Lcn/apppark/vertify/activity/free/self/SelfAnimaView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public animationContinue()V
    .locals 4

    iget v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->currentSeq:I

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->drawableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->drawableList:Ljava/util/ArrayList;

    iget v2, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->currentSeq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->currentSeq:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->currentSeq:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->currentTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->currentTimes:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->vo:Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;->getStyle_playTimes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->currentTimes:I

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->vo:Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;->getStyle_playTimes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->vo:Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;->getStyle_playTimes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public animationEnd()V
    .locals 6

    const/4 v3, 0x1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->vo:Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;->getnFlag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->pageGroup:Lcn/apppark/vertify/PageGroup;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/FreePageVo;->getSys_pageID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->vo:Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;->getnPageId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->vo:Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;->getnPageType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->vo:Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;->getnPageModuleType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcn/apppark/vertify/PageGroup;->goNextPage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-boolean v3, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->isStop:Z

    return-void
.end method

.method public init()V
    .locals 5

    const/4 v4, -0x1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->vo:Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->vo:Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;->getStyle_bgPic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->vo:Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;->getStyle_bgColor()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->vo:Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;->getStyle_bgAlpha()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->drawableList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfAnimaItem2Vo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfAnimaItem2Vo;->getData_pic()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Lcn/apppark/ckj10185912/HQCHApplication;->cacheUtil:Lcn/apppark/mcd/util/imge/CacheUtil;

    invoke-virtual {v2, v0}, Lcn/apppark/mcd/util/imge/CacheUtil;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->drawableList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public isOnMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public makeView()Landroid/view/View;
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->isStop:Z

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->isStop:Z

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->autoPlay()V

    return-void
.end method
