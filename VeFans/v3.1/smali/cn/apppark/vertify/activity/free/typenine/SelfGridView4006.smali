.class public Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;
.super Landroid/widget/GridView;

# interfaces
.implements Lcn/apppark/vertify/activity/ISelfView;


# instance fields
.field private adapter:Lcn/apppark/vertify/adapter/SelfGridView4006Adapter;

.field private context:Landroid/content/Context;

.field private item2List:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SelfGridItem2Vo;",
            ">;"
        }
    .end annotation
.end field

.field private pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

.field private parentScroll:Landroid/widget/ScrollView;

.field private vo:Lcn/apppark/mcd/vo/free/SelfGridItemVo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/free/SelfGridItemVo;Ljava/util/ArrayList;Landroid/widget/ScrollView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/apppark/mcd/vo/base/FreePageVo;",
            "Lcn/apppark/mcd/vo/free/SelfGridItemVo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SelfGridItem2Vo;",
            ">;",
            "Landroid/widget/ScrollView;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->context:Landroid/content/Context;

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->setFadingEdgeLength(I)V

    iput-object p3, p0, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->vo:Lcn/apppark/mcd/vo/free/SelfGridItemVo;

    iput-object p4, p0, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->item2List:Ljava/util/ArrayList;

    iput-object p5, p0, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->parentScroll:Landroid/widget/ScrollView;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->init()V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->item2List:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;)Lcn/apppark/mcd/vo/base/FreePageVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->parentScroll:Landroid/widget/ScrollView;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->vo:Lcn/apppark/mcd/vo/free/SelfGridItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfGridItemVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->vo:Lcn/apppark/mcd/vo/free/SelfGridItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfGridItemVo;->getStyle_bgPic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->vo:Lcn/apppark/mcd/vo/free/SelfGridItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfGridItemVo;->getStyle_bgColor()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->vo:Lcn/apppark/mcd/vo/free/SelfGridItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SelfGridItemVo;->getStyle_bgAlpha()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->setCacheColorHint(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->vo:Lcn/apppark/mcd/vo/free/SelfGridItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfGridItemVo;->getStyle_margin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->setPadding(IIII)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->vo:Lcn/apppark/mcd/vo/free/SelfGridItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfGridItemVo;->getStyle_columnNum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->setNumColumns(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->vo:Lcn/apppark/mcd/vo/free/SelfGridItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfGridItemVo;->getStyle_columnSpace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->setHorizontalSpacing(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->vo:Lcn/apppark/mcd/vo/free/SelfGridItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfGridItemVo;->getStyle_rowSpace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->setVerticalSpacing(I)V

    invoke-virtual {p0, v4}, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v4}, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->setVerticalScrollBarEnabled(Z)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->setSelector(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcn/apppark/vertify/adapter/SelfGridView4006Adapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->vo:Lcn/apppark/mcd/vo/free/SelfGridItemVo;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->item2List:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcn/apppark/vertify/adapter/SelfGridView4006Adapter;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/SelfGridItemVo;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->adapter:Lcn/apppark/vertify/adapter/SelfGridView4006Adapter;

    new-instance v0, Lmv;

    invoke-direct {v0, p0}, Lmv;-><init>(Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lmw;

    invoke-direct {v0, p0}, Lmw;-><init>(Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public isOnMethod()Z
    .locals 1

    const/4 v0, 0x1

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
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->adapter:Lcn/apppark/vertify/adapter/SelfGridView4006Adapter;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
