.class public final Lnp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/vo/base/FreePageVo;

.field final synthetic b:Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;Lcn/apppark/mcd/vo/base/FreePageVo;)V
    .locals 0

    iput-object p1, p0, Lnp;->b:Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;

    iput-object p2, p0, Lnp;->a:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 6

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->pageGroup:Lcn/apppark/vertify/PageGroup;

    iget-object v1, p0, Lnp;->a:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/FreePageVo;->getSys_pageID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnp;->b:Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->a(Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;->getChildItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getnPageId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lnp;->b:Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;

    invoke-static {v4}, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->a(Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;->getChildItemList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getnPageType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnp;->b:Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;

    invoke-static {v5}, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;->a(Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent;->getChildItemList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/free/SelfMutiListViewItem2Vo;->getnPageModuleType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcn/apppark/vertify/PageGroup;->goNextPage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
