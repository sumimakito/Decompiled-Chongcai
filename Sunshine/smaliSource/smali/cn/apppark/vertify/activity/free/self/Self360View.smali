.class public Lcn/apppark/vertify/activity/free/self/Self360View;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcn/apppark/vertify/activity/ISelfView;


# instance fields
.field private context:Landroid/content/Context;

.field private currentImage:I

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/Self360Item2Vo;",
            ">;"
        }
    .end annotation
.end field

.field private parentScroll:Landroid/widget/ScrollView;

.field private vo:Lcn/apppark/mcd/vo/free/Self360ItemVo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/Self360ItemVo;Ljava/util/ArrayList;Landroid/widget/ScrollView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/apppark/mcd/vo/free/Self360ItemVo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/Self360Item2Vo;",
            ">;",
            "Landroid/widget/ScrollView;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/vertify/activity/free/self/Self360View;->currentImage:I

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/self/Self360View;->context:Landroid/content/Context;

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/self/Self360View;->vo:Lcn/apppark/mcd/vo/free/Self360ItemVo;

    iput-object p3, p0, Lcn/apppark/vertify/activity/free/self/Self360View;->itemList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcn/apppark/vertify/activity/free/self/Self360View;->parentScroll:Landroid/widget/ScrollView;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/Self360View;->init()V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/self/Self360View;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/free/self/Self360View;->currentImage:I

    return p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/self/Self360View;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Self360View;->parentScroll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/self/Self360View;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/self/Self360View;->currentImage:I

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/self/Self360View;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Self360View;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/self/Self360View;)I
    .locals 2

    iget v0, p0, Lcn/apppark/vertify/activity/free/self/Self360View;->currentImage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/apppark/vertify/activity/free/self/Self360View;->currentImage:I

    return v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/free/self/Self360View;)I
    .locals 2

    iget v0, p0, Lcn/apppark/vertify/activity/free/self/Self360View;->currentImage:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/apppark/vertify/activity/free/self/Self360View;->currentImage:I

    return v0
.end method


# virtual methods
.method public init()V
    .locals 5

    const/4 v4, -0x1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Self360View;->vo:Lcn/apppark/mcd/vo/free/Self360ItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/Self360ItemVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/Self360View;->vo:Lcn/apppark/mcd/vo/free/Self360ItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/Self360ItemVo;->getStyle_bgPic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/Self360View;->vo:Lcn/apppark/mcd/vo/free/Self360ItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/Self360ItemVo;->getStyle_bgColor()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/self/Self360View;->vo:Lcn/apppark/mcd/vo/free/Self360ItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/Self360ItemVo;->getStyle_bgAlpha()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Self360View;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcn/apppark/vertify/activity/free/self/Self360View;->setGravity(I)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/free/self/Self360View;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Self360View;->itemList:Ljava/util/ArrayList;

    iget v2, p0, Lcn/apppark/vertify/activity/free/self/Self360View;->currentImage:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/Self360Item2Vo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/Self360Item2Vo;->getData_pic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setImageDrawable(Ljava/lang/String;Landroid/widget/ImageView;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    new-instance v0, Lmf;

    invoke-direct {v0, p0, v1}, Lmf;-><init>(Lcn/apppark/vertify/activity/free/self/Self360View;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
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
