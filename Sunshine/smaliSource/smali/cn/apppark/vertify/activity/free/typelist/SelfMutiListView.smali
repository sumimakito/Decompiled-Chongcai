.class public Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;
.super Landroid/widget/ExpandableListView;

# interfaces
.implements Lcn/apppark/vertify/activity/ISelfView;


# instance fields
.field private childItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;",
            ">;"
        }
    .end annotation
.end field

.field private mutiListViewItem2VoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;",
            ">;"
        }
    .end annotation
.end field

.field private parentItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;",
            ">;"
        }
    .end annotation
.end field

.field private parentItem1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;",
            ">;"
        }
    .end annotation
.end field

.field private parentScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;Ljava/util/ArrayList;Landroid/widget/ScrollView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/apppark/mcd/vo/base/FreePageVo;",
            "Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;",
            ">;",
            "Landroid/widget/ScrollView;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->parentItem:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->childItem:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->parentItem1:Ljava/util/ArrayList;

    iput-object p5, p0, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->parentScrollView:Landroid/widget/ScrollView;

    iput-object p4, p0, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->mutiListViewItem2VoList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->initParentAndChildData()V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->setChild()V

    new-instance v0, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->parentItem1:Ljava/util/ArrayList;

    invoke-direct {v0, p1, p3, v1}, Lcn/apppark/vertify/adapter/SelfMutiListViewAdapter;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lnp;

    invoke-direct {v0, p0, p2}, Lnp;-><init>(Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;Lcn/apppark/mcd/vo/base/FreePageVo;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->parentItem1:Ljava/util/ArrayList;

    return-object v0
.end method

.method private initParentAndChildData()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->mutiListViewItem2VoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->mutiListViewItem2VoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getSys_fid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->parentItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->childItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method private setChild()V
    .locals 8

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->parentItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    new-instance v4, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;

    invoke-direct {v4}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;-><init>()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->parentItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getSys_fid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;->setSys_fid(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getSys_groupID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;->setSys_groupID(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getItemID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;->setItemID(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getData_leftPic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;->setData_leftPic(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getnFlag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;->setnFlag(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getData_rightPic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;->setData_rightPic(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getSeq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;->setSeq(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getData_text1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;->setData_text1(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getData_text2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;->setData_text2(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->childItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->childItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getSys_fid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;->getSys_groupID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v5}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;->setChildItemList(Ljava/util/List;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->parentItem1:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

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

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->parentScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->parentScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method
