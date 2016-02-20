.class public Lcn/apppark/vertify/activity/free/self/SelfButtonView;
.super Landroid/widget/Button;

# interfaces
.implements Lcn/apppark/vertify/activity/ISelfView;


# instance fields
.field private pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

.field private vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/SelfDefineItemVo;Lcn/apppark/mcd/vo/base/FreePageVo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    iput-object p3, p0, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->init()V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/self/SelfButtonView;)Lcn/apppark/mcd/vo/free/SelfDefineItemVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/self/SelfButtonView;)Lcn/apppark/mcd/vo/base/FreePageVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/self/SelfButtonView;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->setBtnBg()V

    return-void
.end method

.method private setBtnBg()V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bgPic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bgColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bgAlpha()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->setBtnBg()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_textSize()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_textColor()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_textBold()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcn/apppark/mcd/util/FunctionPublic;->setBtnStyle(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getData_text()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->setSingleLine(Z)V

    invoke-virtual {p0, v3, v3, v3, v3}, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->setPadding(IIII)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_textAlign()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    new-instance v0, Llo;

    invoke-direct {v0, p0}, Llo;-><init>(Lcn/apppark/vertify/activity/free/self/SelfButtonView;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :pswitch_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->setGravity(I)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->setGravity(I)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->setGravity(I)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/self/SelfButtonView;->setGravity(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
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
