.class public Lcn/apppark/vertify/activity/FreeAct;
.super Lcn/apppark/vertify/activity/FreeBasePageActivity;

# interfaces
.implements Lcn/apppark/vertify/activity/ILoadDataEndListener;
.implements Lcn/apppark/vertify/base/OnActivityGroupResultListener;


# static fields
.field private static final BITS_PER_UNIT:I = 0x8

.field public static final GET_DATA:I = 0x2

.field public static final LOAD_FAIL:I = -0x1

.field public static final LOAD_SUCCESS:I = 0x1

.field public static final REF_DATA:I = 0x3


# instance fields
.field a:Landroid/app/Dialog;

.field b:Landroid/widget/Button;

.field c:Landroid/widget/Button;

.field private content:Landroid/widget/RelativeLayout;

.field private context:Landroid/content/Context;

.field d:Landroid/widget/EditText;

.field private dynCount:I

.field private dynViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/vertify/activity/ISelfViewDyn;",
            ">;"
        }
    .end annotation
.end field

.field private fra_root:Landroid/widget/FrameLayout;

.field private ll_root:Landroid/widget/LinearLayout;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private loadCacheCount:I

.field private loadCacheErrorCount:I

.field private loadCacheSuccessCount:I

.field private loadErrorCount:I

.field public scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

.field private viewArrOnMethod:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/vertify/activity/ISelfView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/FreeBasePageActivity;-><init>()V

    iput-object p0, p0, Lcn/apppark/vertify/activity/FreeAct;->context:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->viewArrOnMethod:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->dynViewList:Ljava/util/ArrayList;

    iput v1, p0, Lcn/apppark/vertify/activity/FreeAct;->dynCount:I

    iput v1, p0, Lcn/apppark/vertify/activity/FreeAct;->loadErrorCount:I

    iput v1, p0, Lcn/apppark/vertify/activity/FreeAct;->loadCacheCount:I

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/FreeAct;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/FreeAct;->onRef()V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/FreeAct;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const v1, 0x7f080024

    const-string v2, "255"

    invoke-virtual {v0, v1, v3, v3, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/FreeAct;->onInit()V

    return-void
.end method

.method private native getH(IFI)I
.end method

.method private native getHByFull(IIII)I
.end method

.method private native getIsNext(I)Z
.end method

.method private native getW(IFI)I
.end method

.method private native getX(IFI)I
.end method

.method private native getY(IFI)I
.end method

.method private initTopMenu()V
    .locals 6

    const v0, 0x7f0a024d

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/FreeAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "0"

    iget-object v2, p0, Lcn/apppark/vertify/activity/FreeAct;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/base/FreePageVo;->getStyle_tFlag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcn/apppark/vertify/activity/FreeAct;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/FreePageVo;->getStyle_tNavID()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    invoke-virtual {v3}, Lcn/apppark/ckj10185912/HQCHApplication;->getResourceDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "head_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".json"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/FreeAct;->context:Landroid/content/Context;

    iget-object v3, p0, Lcn/apppark/vertify/activity/FreeAct;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-static {v1, v2, v3}, Lcn/apppark/vertify/activity/TopMenuFactory;->getInstance(Landroid/content/Context;Ljava/io/File;Lcn/apppark/mcd/vo/base/FreePageVo;)Lcn/apppark/vertify/activity/topmenu/ITopView;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcn/apppark/vertify/activity/FreeAct;->topHeight:I

    goto :goto_0
.end method

.method private initWidget()V
    .locals 15

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->jsonArray:Lcom/google/gson/JsonArray;

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v10

    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v10, :cond_8

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->jsonArray:Lcom/google/gson/JsonArray;

    invoke-virtual {v0, v9}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v4

    const-class v0, Lcn/apppark/mcd/vo/base/BasePageItemVo;

    invoke-virtual {v11, v4, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcn/apppark/mcd/vo/base/BasePageItemVo;

    if-nez v6, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v6}, Lcn/apppark/mcd/vo/base/BasePageItemVo;->getSys_w()I

    move-result v0

    sget v1, Lcn/apppark/ckj10185912/YYGYContants;->scaleUnite:F

    iget-object v2, p0, Lcn/apppark/vertify/activity/FreeAct;->context:Landroid/content/Context;

    sget-object v3, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v3}, Lcn/apppark/ckj10185912/Main;->getPKGName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/apppark/ckj10185912/YYGYContants;->getKey(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcn/apppark/vertify/activity/FreeAct;->getW(IFI)I

    move-result v12

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/base/BasePageItemVo;->getSys_h()I

    move-result v0

    sget v1, Lcn/apppark/ckj10185912/YYGYContants;->scaleUnite:F

    iget-object v2, p0, Lcn/apppark/vertify/activity/FreeAct;->context:Landroid/content/Context;

    sget-object v3, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v3}, Lcn/apppark/ckj10185912/Main;->getPKGName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/apppark/ckj10185912/YYGYContants;->getKey(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcn/apppark/vertify/activity/FreeAct;->getH(IFI)I

    move-result v1

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/base/BasePageItemVo;->getSys_x()I

    move-result v0

    sget v2, Lcn/apppark/ckj10185912/YYGYContants;->scaleUnite:F

    iget-object v3, p0, Lcn/apppark/vertify/activity/FreeAct;->context:Landroid/content/Context;

    sget-object v5, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v5}, Lcn/apppark/ckj10185912/Main;->getPKGName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/apppark/ckj10185912/YYGYContants;->getKey(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcn/apppark/vertify/activity/FreeAct;->getX(IFI)I

    move-result v13

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/base/BasePageItemVo;->getSys_y()I

    move-result v0

    sget v2, Lcn/apppark/ckj10185912/YYGYContants;->scaleUnite:F

    iget-object v3, p0, Lcn/apppark/vertify/activity/FreeAct;->context:Landroid/content/Context;

    sget-object v5, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v5}, Lcn/apppark/ckj10185912/Main;->getPKGName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/apppark/ckj10185912/YYGYContants;->getKey(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcn/apppark/vertify/activity/FreeAct;->getY(IFI)I

    move-result v14

    const v0, -0x186a0

    if-ne v13, v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->context:Landroid/content/Context;

    const-string v1, "\u5bf9\u4e0d\u8d77,\u60a8\u7684\u5ba2\u6237\u7aef\u975e\u5b98\u65b9\u51fa\u54c1,\u8bf7\u5230www.apppark.cn\u5b89\u88c5\u5b98\u65b9\u6b63\u7248"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v0}, Lcn/apppark/ckj10185912/Main;->hiddenWall()V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/FreeAct;->finish()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    if-nez v1, :cond_a

    const/4 v1, 0x1

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getnPageId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/apppark/vertify/activity/FreeAct;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/base/FreePageVo;->getSys_pageID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, -0x1

    :goto_2
    iget-object v2, p0, Lcn/apppark/vertify/activity/FreeAct;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v2, v0}, Lcn/apppark/mcd/vo/base/FreePageVo;->setCaculateHeight(I)V

    move v7, v1

    move v8, v0

    :goto_3
    invoke-virtual {v6}, Lcn/apppark/mcd/vo/base/BasePageItemVo;->getSys_moduleType()I

    move-result v0

    iget-object v2, p0, Lcn/apppark/vertify/activity/FreeAct;->context:Landroid/content/Context;

    iget-object v3, p0, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    iget-object v5, p0, Lcn/apppark/vertify/activity/FreeAct;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/FreeViewFactory;->getInstance(ILcn/apppark/vertify/activity/FreeAct;Landroid/content/Context;Landroid/widget/ScrollView;Lcom/google/gson/JsonElement;Lcn/apppark/mcd/vo/base/FreePageVo;)Lcn/apppark/vertify/activity/ISelfView;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcn/apppark/vertify/activity/ISelfView;->isOnMethod()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->viewArrOnMethod:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v6}, Lcn/apppark/mcd/vo/base/BasePageItemVo;->getSys_moduleType()I

    move-result v0

    const/16 v2, 0x1388

    if-lt v0, v2, :cond_4

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/base/BasePageItemVo;->getSys_moduleType()I

    move-result v0

    const/16 v2, 0x1770

    if-gt v0, v2, :cond_4

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/base/BasePageItemVo;->getSys_moduleType()I

    move-result v0

    const/16 v2, 0x138f

    if-eq v0, v2, :cond_4

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/base/BasePageItemVo;->getSys_moduleType()I

    move-result v0

    const/16 v2, 0x1390

    if-eq v0, v2, :cond_4

    move-object v0, v1

    check-cast v0, Lcn/apppark/vertify/activity/ISelfViewDyn;

    iget-object v2, p0, Lcn/apppark/vertify/activity/FreeAct;->dynViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p0}, Lcn/apppark/vertify/activity/ISelfViewDyn;->setLoadendListener(Lcn/apppark/vertify/activity/ILoadDataEndListener;)V

    invoke-interface {v0}, Lcn/apppark/vertify/activity/ISelfViewDyn;->isCache()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcn/apppark/vertify/activity/FreeAct;->loadCacheCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/FreeAct;->loadCacheCount:I

    :cond_4
    if-eqz v1, :cond_6

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/base/BasePageItemVo;->getSys_moduleType()I

    move-result v0

    const/16 v2, 0x138e

    if-ne v0, v2, :cond_5

    if-eqz v7, :cond_5

    const/high16 v0, 0x44020000    # 520.0f

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v8

    :cond_5
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v12, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v13, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v14, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcn/apppark/vertify/activity/FreeAct;->content:Landroid/widget/RelativeLayout;

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v3, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v9, :cond_6

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_6
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcn/apppark/vertify/activity/FreeAct;->mainHeight:I

    iget v2, p0, Lcn/apppark/vertify/activity/FreeAct;->bottomHeight:I

    iget v3, p0, Lcn/apppark/vertify/activity/FreeAct;->topHeight:I

    invoke-direct {p0, v0, v2, v3, v14}, Lcn/apppark/vertify/activity/FreeAct;->getHByFull(IIII)I

    move-result v0

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->dynViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/activity/FreeAct;->dynCount:I

    iget v0, p0, Lcn/apppark/vertify/activity/FreeAct;->dynCount:I

    if-lez v0, :cond_9

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    new-instance v1, Lax;

    invoke-direct {v1, p0}, Lax;-><init>(Lcn/apppark/vertify/activity/FreeAct;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/ElasticScrollView;->setonRefreshListener(Lcn/apppark/mcd/widget/ElasticScrollView$OnRefreshListener;)V

    :goto_4
    iget v0, p0, Lcn/apppark/vertify/activity/FreeAct;->loadCacheCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->dynViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/FreeAct;->reLoadData()V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/ElasticScrollView;->setRefreshable(Z)V

    goto :goto_4

    :cond_a
    move v7, v0

    move v8, v1

    goto/16 :goto_3
.end method

.method private onChildLoadCacheFinish(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcn/apppark/vertify/activity/FreeAct;->loadCacheErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/FreeAct;->loadCacheErrorCount:I

    :goto_0
    iget v0, p0, Lcn/apppark/vertify/activity/FreeAct;->loadCacheCount:I

    iget v1, p0, Lcn/apppark/vertify/activity/FreeAct;->loadCacheSuccessCount:I

    iget v2, p0, Lcn/apppark/vertify/activity/FreeAct;->loadCacheErrorCount:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcn/apppark/vertify/activity/FreeAct;->loadCacheErrorCount:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/LoadDataProgress;->hiddenAnima()V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/FreeAct;->onRef()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/ElasticScrollView;->autoHeadRefresh()V

    :goto_1
    iput v3, p0, Lcn/apppark/vertify/activity/FreeAct;->loadCacheSuccessCount:I

    iput v3, p0, Lcn/apppark/vertify/activity/FreeAct;->loadCacheErrorCount:I

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcn/apppark/vertify/activity/FreeAct;->loadCacheSuccessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/FreeAct;->loadCacheSuccessCount:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const v1, 0x7f080024

    const-string v2, "255"

    invoke-virtual {v0, v1, v4, v4, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/FreeAct;->onInit()V

    goto :goto_1
.end method

.method private onChildLoadFinish(II)V
    .locals 5

    const/4 v1, 0x0

    iget v0, p0, Lcn/apppark/vertify/activity/FreeAct;->dynCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/apppark/vertify/activity/FreeAct;->dynCount:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcn/apppark/vertify/activity/FreeAct;->loadErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/FreeAct;->loadErrorCount:I

    :cond_0
    iget v0, p0, Lcn/apppark/vertify/activity/FreeAct;->dynCount:I

    if-gtz v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    iget v0, p0, Lcn/apppark/vertify/activity/FreeAct;->loadErrorCount:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const v2, 0x7f080025

    const/4 v3, 0x1

    const-string v4, "255"

    invoke-virtual {v0, v2, v3, v1, v4}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v2, Lay;

    invoke-direct {v2, p0}, Lay;-><init>(Lcn/apppark/vertify/activity/FreeAct;)V

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->dynViewList:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iput v0, p0, Lcn/apppark/vertify/activity/FreeAct;->dynCount:I

    iput v1, p0, Lcn/apppark/vertify/activity/FreeAct;->loadErrorCount:I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/LoadDataProgress;->hiddenAnima()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/LoadDataProgress;->hiddenAnima()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/ElasticScrollView;->onRefreshComplete()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->dynViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1
.end method

.method private onInit()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->dynViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->dynViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/vertify/activity/ISelfViewDyn;

    invoke-interface {v0}, Lcn/apppark/vertify/activity/ISelfViewDyn;->initData()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onRef()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->dynViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->dynViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/vertify/activity/ISelfViewDyn;

    invoke-interface {v0}, Lcn/apppark/vertify/activity/ISelfViewDyn;->onRefresh()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static postion(I)I
    .locals 2

    const/4 v0, 0x1

    rem-int/lit8 v1, p0, 0x8

    rsub-int/lit8 v1, v1, 0x7

    shl-int/2addr v0, v1

    return v0
.end method

.method private reLoadData()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const v1, 0x7f080024

    const-string v2, "255"

    invoke-virtual {v0, v1, v3, v3, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/FreeAct;->onInit()V

    return-void
.end method

.method private reLoadDataByChildren()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/FreeAct;->onRef()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/ElasticScrollView;->autoHeadRefresh()V

    return-void
.end method

.method private showPassword()V
    .locals 5

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030069

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a02c8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->b:Landroid/widget/Button;

    const v0, 0x7f0a02c9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->c:Landroid/widget/Button;

    const v0, 0x7f0a02ca

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->d:Landroid/widget/EditText;

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mainPageId:Ljava/lang/String;

    iget-object v2, p0, Lcn/apppark/vertify/activity/FreeAct;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/base/FreePageVo;->getSys_pageID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->b:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->b:Landroid/widget/Button;

    new-instance v2, Lcn/apppark/vertify/activity/FreeAct$2;

    invoke-direct {v2, p0}, Lcn/apppark/vertify/activity/FreeAct$2;-><init>(Lcn/apppark/vertify/activity/FreeAct;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->c:Landroid/widget/Button;

    new-instance v2, Lcn/apppark/vertify/activity/FreeAct$3;

    invoke-direct {v2, p0}, Lcn/apppark/vertify/activity/FreeAct$3;-><init>(Lcn/apppark/vertify/activity/FreeAct;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/Dialog;

    sget-object v2, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    const v3, 0x7f060011

    invoke-direct {v0, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->a:Landroid/app/Dialog;

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->a:Landroid/app/Dialog;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    sget v4, Lcn/apppark/ckj10185912/YYGYContants;->screenHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->a:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public onActivityGroupResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->dynViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->dynViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/vertify/activity/ISelfViewDyn;

    invoke-interface {v0, p1, p2, p3}, Lcn/apppark/vertify/activity/ISelfViewDyn;->onActivityResult(IILandroid/content/Intent;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/FreeBasePageActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/FreeAct;->setContentView(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/FreePageVo;->getData_password()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/FreeAct;->showPassword()V

    :cond_0
    const v0, 0x7f0a024f

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/FreeAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/ElasticScrollView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/apppark/vertify/activity/FreeAct;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->content:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/FreeAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    const v0, 0x7f0a024c

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/FreeAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->ll_root:Landroid/widget/LinearLayout;

    const v0, 0x7f0a024e

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/FreeAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->fra_root:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/FreeAct;->content:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/ElasticScrollView;->addChild(Landroid/view/View;I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/FreeAct;->initTopMenu()V

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->jsonArray:Lcom/google/gson/JsonArray;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->jsonArray:Lcom/google/gson/JsonArray;

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->jsonArray:Lcom/google/gson/JsonArray;

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/FreeAct;->getIsNext(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcn/apppark/vertify/activity/FreeAct;->initWidget()V

    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Law;

    invoke-direct {v1, p0}, Law;-><init>(Lcn/apppark/vertify/activity/FreeAct;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcn/apppark/vertify/activity/FreeBasePageActivity;->onDestroy()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->viewArrOnMethod:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->viewArrOnMethod:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/vertify/activity/ISelfView;

    invoke-interface {v0}, Lcn/apppark/vertify/activity/ISelfView;->onDestroy()V

    iput-object v2, p0, Lcn/apppark/vertify/activity/FreeAct;->content:Landroid/widget/RelativeLayout;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcn/apppark/vertify/activity/FreeAct;->viewArrOnMethod:Ljava/util/ArrayList;

    iput-object v2, p0, Lcn/apppark/vertify/activity/FreeAct;->dynViewList:Ljava/util/ArrayList;

    return-void
.end method

.method public onLoadCacheFail(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/FreeAct;->onChildLoadCacheFinish(I)V

    return-void
.end method

.method public onLoadCacheSuccess(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/FreeAct;->onChildLoadCacheFinish(I)V

    return-void
.end method

.method public onLoadFail(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcn/apppark/vertify/activity/FreeAct;->onChildLoadFinish(II)V

    return-void
.end method

.method public onLoadSuccess(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcn/apppark/vertify/activity/FreeAct;->onChildLoadFinish(II)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcn/apppark/vertify/activity/FreeBasePageActivity;->onPause()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->viewArrOnMethod:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->viewArrOnMethod:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/vertify/activity/ISelfView;

    invoke-interface {v0}, Lcn/apppark/vertify/activity/ISelfView;->onPause()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    invoke-super {p0}, Lcn/apppark/vertify/activity/FreeBasePageActivity;->onResume()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->viewArrOnMethod:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->viewArrOnMethod:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/vertify/activity/ISelfView;

    invoke-interface {v0}, Lcn/apppark/vertify/activity/ISelfView;->onResume()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/FreeAct;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    if-eqz v0, :cond_1

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v0}, Lcn/apppark/ckj10185912/Main;->getMainBg()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/FreeAct;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/FreePageVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/FreeAct;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/base/FreePageVo;->getStyle_bgPic()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/FreeAct;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/base/FreePageVo;->getStyle_bgColor()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/activity/FreeAct;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/base/FreePageVo;->getStyle_bgAlpha()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/FreeBasePageActivity;->onWindowFocusChanged(Z)V

    return-void
.end method
