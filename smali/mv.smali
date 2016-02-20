.class public final Lmv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;)V
    .locals 0

    iput-object p1, p0, Lmv;->a:Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;

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

    iget-object v0, p0, Lmv;->a:Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->a(Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcn/apppark/mcd/vo/free/SelfGridItem2Vo;

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->pageGroup:Lcn/apppark/vertify/PageGroup;

    iget-object v1, p0, Lmv;->a:Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;->b(Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;)Lcn/apppark/mcd/vo/base/FreePageVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/FreePageVo;->getSys_pageID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/free/SelfGridItem2Vo;->getnPageId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/free/SelfGridItem2Vo;->getnPageType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/free/SelfGridItem2Vo;->getnPageModuleType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcn/apppark/vertify/PageGroup;->goNextPage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
