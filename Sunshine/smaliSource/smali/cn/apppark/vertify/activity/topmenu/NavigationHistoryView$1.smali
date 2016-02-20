.class Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView$1;->a:Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView$1;->a:Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->a(Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;)Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getStyle_nLeftFlag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->pageGroup:Lcn/apppark/vertify/PageGroup;

    invoke-virtual {v0}, Lcn/apppark/vertify/PageGroup;->pageBack()V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->pageGroup:Lcn/apppark/vertify/PageGroup;

    const-string v1, "0"

    iget-object v2, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView$1;->a:Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;

    invoke-static {v2}, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->a(Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;)Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getnLeftPageId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, ""

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcn/apppark/vertify/PageGroup;->goNextPage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
