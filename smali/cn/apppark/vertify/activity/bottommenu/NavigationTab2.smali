.class public Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;
.super Landroid/app/Activity;


# instance fields
.field private fPageid:Ljava/lang/String;

.field private itemCount:I

.field private itemHeight:I

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/navigation/NavigationTabItemVo;",
            ">;"
        }
    .end annotation
.end field

.field private itemWidth:I

.field private leftBtn:Landroid/widget/ImageView;

.field private mainLinearLayout:Landroid/widget/LinearLayout;

.field private myHandler:Landroid/os/Handler;

.field private navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

.field private navJson:Ljava/lang/String;

.field private rightBtn:Landroid/widget/ImageView;

.field private rootLayout:Landroid/widget/RelativeLayout;

.field private selectItem:I

.field private sv:Landroid/widget/HorizontalScrollView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->itemCount:I

    iput v1, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->itemWidth:I

    const/4 v0, -0x1

    iput v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->selectItem:I

    iput v1, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->itemHeight:I

    new-instance v0, Lbp;

    invoke-direct {v0, p0}, Lbp;-><init>(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->selectItem:I

    return p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->myHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->fPageid:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)Landroid/widget/HorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->sv:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic c(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->itemWidth:I

    return v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)Lcn/apppark/mcd/vo/navigation/NavigationTabVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->leftBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->itemCount:I

    return v0
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->rightBtn:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method protected initTabBar()V
    .locals 11

    const/16 v10, 0x8

    const/4 v4, 0x0

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    move v3, v4

    :goto_0
    iget-object v1, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_5

    const v1, 0x7f03005d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    new-instance v5, Lbq;

    invoke-direct {v5}, Lbq;-><init>()V

    const v2, 0x7f0a0285

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v5, Lbq;->a:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0286

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v5, Lbq;->b:Landroid/widget/ImageView;

    const v2, 0x7f0a0287

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v5, Lbq;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_slipFlag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    sget v6, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    iget-object v7, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    invoke-virtual {v7}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_slipWidth()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->itemCount:I

    div-int/2addr v6, v7

    iget v7, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->itemHeight:I

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    const v2, 0x7f080012

    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->mainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/vo/navigation/NavigationTabItemVo;

    iget-object v2, v5, Lbq;->a:Landroid/widget/RelativeLayout;

    const v6, 0x7f080013

    invoke-virtual {v2, v6, v1}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    iget-object v2, v5, Lbq;->a:Landroid/widget/RelativeLayout;

    new-instance v6, Lbo;

    invoke-direct {v6, p0}, Lbo;-><init>(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)V

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/navigation/NavigationTabItemVo;->getData_text1Content()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/navigation/NavigationTabItemVo;->getData_text1Content()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "0"

    iget-object v6, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_text1Size()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/navigation/NavigationTabItemVo;->getData_text1Content()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, v5, Lbq;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    invoke-virtual {v1}, Lcn/apppark/mcd/vo/navigation/NavigationTabItemVo;->getData_pic()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v1, v5, Lbq;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    :cond_2
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    iget v7, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->itemHeight:I

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    iget-object v2, v5, Lbq;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v5, Lbq;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/navigation/NavigationTabItemVo;->getData_text1Content()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    invoke-virtual {v8}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_text1Size()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    invoke-virtual {v8}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_text1Color()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {v2, v6, v7, v8, v9}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v2, v5, Lbq;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/apppark/ckj10185912/HQCHApplication;->getInstance()Lcn/apppark/ckj10185912/HQCHApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcn/apppark/ckj10185912/HQCHApplication;->getResourceDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/navigation/NavigationTabItemVo;->getData_pic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, v5, Lbq;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const v6, 0x7f0a0284

    const v5, 0x7f0a027f

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03005c

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->setContentView(I)V

    const v0, 0x7f0a027e

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->rootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fPageid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->fPageid:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "navJson"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navJson:Ljava/lang/String;

    const v0, 0x7f0a0281

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->sv:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navJson:Ljava/lang/String;

    invoke-static {v0}, Lcn/apppark/mcd/util/file/SDFileUtils;->readFileSD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lbm;

    invoke-direct {v0, p0}, Lbm;-><init>(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)V

    invoke-virtual {v0}, Lbm;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-class v0, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    iput-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    const-string v0, "item"

    invoke-static {v1, v2, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->itemList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0a0280

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->leftBtn:Landroid/widget/ImageView;

    const v0, 0x7f0a0282

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->rightBtn:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_itemCount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    sget v0, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    iget-object v1, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_slipWidth()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_itemCount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->itemWidth:I

    :cond_1
    const-string v0, "1"

    iget-object v1, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_slipFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v5}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0283

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->mainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->sv:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setVerticalFadingEdgeEnabled(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->sv:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->sv:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lbn;

    invoke-direct {v1, p0}, Lbn;-><init>(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->leftBtn:Landroid/widget/ImageView;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->cacheUtil:Lcn/apppark/mcd/util/imge/CacheUtil;

    iget-object v2, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_slipLeftPic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/apppark/mcd/util/imge/CacheUtil;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->rightBtn:Landroid/widget/ImageView;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->cacheUtil:Lcn/apppark/mcd/util/imge/CacheUtil;

    iget-object v2, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_slipRightLightPic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/apppark/mcd/util/imge/CacheUtil;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->leftBtn:Landroid/widget/ImageView;

    new-instance v1, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2$3;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2$3;-><init>(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->rightBtn:Landroid/widget/ImageView;

    new-instance v1, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2$4;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2$4;-><init>(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->rightBtn:Landroid/widget/ImageView;

    new-instance v1, Lcn/apppark/mcd/util/MyAlphaAnima;

    invoke-direct {v1}, Lcn/apppark/mcd/util/MyAlphaAnima;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->leftBtn:Landroid/widget/ImageView;

    new-instance v1, Lcn/apppark/mcd/util/MyAlphaAnima;

    invoke-direct {v1}, Lcn/apppark/mcd/util/MyAlphaAnima;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_itemCount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_itemCount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->itemCount:I

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_slipWidth()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->leftBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_slipWidth()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->rightBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_slipWidth()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_3
    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getSys_h()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcn/apppark/ckj10185912/YYGYContants;->scaleUnite:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->itemHeight:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->rootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->itemHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->rootLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_bgPic()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_bgColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->initTabBar()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, v6}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->mainLinearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->mainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fPageid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->fPageid:Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/navigation/NavigationTabItemVo;

    iget-object v2, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->fPageid:Ljava/lang/String;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/navigation/NavigationTabItemVo;->getnPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v1, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->selectItem:I

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->updateTabBar()V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public updateTabBar()V
    .locals 10

    const/16 v9, 0x8

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->mainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbq;

    iget-object v1, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/vo/navigation/NavigationTabItemVo;

    if-eqz v1, :cond_1

    const-string v4, ""

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/navigation/NavigationTabItemVo;->getData_text1Content()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/navigation/NavigationTabItemVo;->getData_text1Content()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    iget-object v4, v0, Lbq;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget v4, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->selectItem:I

    if-ne v4, v2, :cond_3

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/navigation/NavigationTabItemVo;->getData_pressPic()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v4, Lcn/apppark/ckj10185912/HQCHApplication;->cacheUtil:Lcn/apppark/mcd/util/imge/CacheUtil;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/navigation/NavigationTabItemVo;->getData_pressPic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcn/apppark/mcd/util/imge/CacheUtil;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v0, v0, Lbq;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lbq;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v0, Lbq;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/navigation/NavigationTabItemVo;->getData_text1Content()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    invoke-virtual {v7}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_text1Size()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    invoke-virtual {v7}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_text1Color()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-static {v4, v5, v6, v7, v8}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lbq;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lbq;->a:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    invoke-virtual {v1}, Lcn/apppark/mcd/vo/navigation/NavigationTabItemVo;->getData_pic()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    iget-object v0, v0, Lbq;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object v4, v0, Lbq;->b:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/apppark/ckj10185912/HQCHApplication;->getInstance()Lcn/apppark/ckj10185912/HQCHApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcn/apppark/ckj10185912/HQCHApplication;->getResourceDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/navigation/NavigationTabItemVo;->getData_pic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v0, v0, Lbq;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_6
    return-void
.end method
