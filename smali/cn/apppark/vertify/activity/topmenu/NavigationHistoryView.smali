.class public Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcn/apppark/vertify/activity/topmenu/ITopView;


# instance fields
.field private clickListener:Lcn/apppark/vertify/activity/topmenu/ITopMenuViewClickListener;

.field private context:Landroid/content/Context;

.field private navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

.field private showName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->context:Landroid/content/Context;

    iput-object p2, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    iput-object p3, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->showName:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->init()V

    return-void
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;)Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 8

    const/4 v7, 0x1

    const/high16 v4, 0x40a00000    # 5.0f

    const/16 v6, 0x11

    const/4 v3, -0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getSys_h()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcn/apppark/ckj10185912/YYGYContants;->scaleUnite:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getStyle_bgPic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getStyle_bgColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getStyle_bgAlpha()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    mul-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v4}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v0

    invoke-static {v4}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v1

    invoke-virtual {p0, v0, v5, v1, v5}, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->setPadding(IIII)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->showName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getStyle_text1Size()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getStyle_text1Color()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getStyle_text1Blod()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "1"

    iget-object v1, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getStyle_leftBtnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setMaxLines(I)V

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/Button;->setPadding(IIII)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setGravity(I)V

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getStyle_leftBtnPic()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getSys_h()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/apppark/mcd/util/FunctionPublic;->setViewBackByHieght(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getData_leftBtnText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getStyle_leftBtnTextSize()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getStyle_leftBtnTextColor()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getStyle_leftBtnTextBold()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getStyle_leftBtnPic()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, ""

    iget-object v3, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getStyle_leftBtnPic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    :cond_1
    if-eqz v1, :cond_2

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v2, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView$1;

    invoke-direct {v2, p0}, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView$1;-><init>(Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    const-string v0, "1"

    iget-object v1, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getStyle_rightBtnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setMaxLines(I)V

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/Button;->setPadding(IIII)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setGravity(I)V

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getStyle_rightBtnPic()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getSys_h()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/apppark/mcd/util/FunctionPublic;->setViewBackByHieght(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getData_rightBtnText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getStyle_rightBtnTextSize()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getStyle_rightBtnTextColor()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getStyle_rightBtnTextBold()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getStyle_rightBtnPic()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, ""

    iget-object v3, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->navItem:Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;->getStyle_rightBtnPic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    :cond_4
    if-eqz v1, :cond_5

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v2, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView$2;

    invoke-direct {v2, p0}, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView$2;-><init>(Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public setClickListener(Lcn/apppark/vertify/activity/topmenu/ITopMenuViewClickListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/topmenu/NavigationHistoryView;->clickListener:Lcn/apppark/vertify/activity/topmenu/ITopMenuViewClickListener;

    return-void
.end method
