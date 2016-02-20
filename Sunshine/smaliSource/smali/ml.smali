.class public final Lml;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/self/SelfButtonView;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/self/SelfButtonView;)V
    .locals 0

    iput-object p1, p0, Lml;->a:Lcn/apppark/vertify/activity/free/self/SelfButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lml;->a:Lcn/apppark/vertify/activity/free/self/SelfButtonView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->c(Lcn/apppark/vertify/activity/free/self/SelfButtonView;)V

    const/4 v3, 0x0

    :goto_0
    return v3

    :pswitch_0
    const-string v0, "1"

    iget-object v1, p0, Lml;->a:Lcn/apppark/vertify/activity/free/self/SelfButtonView;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->a(Lcn/apppark/vertify/activity/free/self/SelfButtonView;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v2, Lcn/apppark/mcd/util/ButtonColorFilter;->BT_SELECTED:[F

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcn/apppark/mcd/util/ButtonColorFilter;->CLICKALPHA:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v2, Lcn/apppark/mcd/util/ButtonColorFilter;->BT_SELECTED:[F

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->pageGroup:Lcn/apppark/vertify/PageGroup;

    iget-object v1, p0, Lml;->a:Lcn/apppark/vertify/activity/free/self/SelfButtonView;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->b(Lcn/apppark/vertify/activity/free/self/SelfButtonView;)Lcn/apppark/mcd/vo/base/FreePageVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/FreePageVo;->getSys_pageID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lml;->a:Lcn/apppark/vertify/activity/free/self/SelfButtonView;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->a(Lcn/apppark/vertify/activity/free/self/SelfButtonView;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getnPageId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lml;->a:Lcn/apppark/vertify/activity/free/self/SelfButtonView;

    invoke-static {v4}, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->a(Lcn/apppark/vertify/activity/free/self/SelfButtonView;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    move-result-object v4

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getnPageType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lml;->a:Lcn/apppark/vertify/activity/free/self/SelfButtonView;

    invoke-static {v5}, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->a(Lcn/apppark/vertify/activity/free/self/SelfButtonView;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    move-result-object v5

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getnPageModuleType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcn/apppark/vertify/PageGroup;->goNextPage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
