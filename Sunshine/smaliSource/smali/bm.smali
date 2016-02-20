.class public final Lbm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)V
    .locals 0

    iput-object p1, p0, Lbm;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f080013

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/apppark/mcd/vo/navigation/NavigationTabItemVo;

    iget-object v0, p0, Lbm;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    iget-object v1, p0, Lbm;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-static {v1}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->d(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->a(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;I)I

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/navigation/NavigationTabItemVo;->getnPageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lbm;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->a(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lbm;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->updateTabBar()V

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->pageGroup:Lcn/apppark/vertify/PageGroup;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/navigation/NavigationTabItemVo;->getnPageType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/navigation/NavigationTabItemVo;->getnPageModuleType()Ljava/lang/String;

    move-result-object v5

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcn/apppark/vertify/PageGroup;->goNextPage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lbm;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->updateTabBar()V

    goto :goto_0
.end method
