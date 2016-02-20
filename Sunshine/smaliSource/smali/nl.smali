.class public final Lnl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcn/apppark/mcd/vo/base/FreePageVo;

.field final synthetic c:Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;Ljava/util/ArrayList;Lcn/apppark/mcd/vo/base/FreePageVo;)V
    .locals 0

    iput-object p1, p0, Lnl;->c:Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;

    iput-object p2, p0, Lnl;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lnl;->b:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lnl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->pageGroup:Lcn/apppark/vertify/PageGroup;

    iget-object v1, p0, Lnl;->b:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/FreePageVo;->getSys_pageID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;->getnPageId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;->getnPageType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/free/SelfListViewItem2Vo;->getnPageModuleType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcn/apppark/vertify/PageGroup;->goNextPage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
