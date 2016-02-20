.class public Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcn/apppark/vertify/activity/ISelfView;


# instance fields
.field private context:Landroid/content/Context;

.field private parentScroll:Landroid/widget/ScrollView;

.field private scroll:Lcn/apppark/mcd/widget/InnerScrollView;

.field private textView:Landroid/widget/TextView;

.field private vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/SelfDefineItemVo;Landroid/widget/ScrollView;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->context:Landroid/content/Context;

    iput-object p3, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->parentScroll:Landroid/widget/ScrollView;

    invoke-virtual {p2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bgPic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bgColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bgAlpha()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->init()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 5

    const/4 v1, -0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->textView:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3fb33333    # 1.4f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    new-instance v1, Lcn/apppark/mcd/widget/InnerScrollView;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->context:Landroid/content/Context;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->parentScroll:Landroid/widget/ScrollView;

    invoke-direct {v1, v2, v3}, Lcn/apppark/mcd/widget/InnerScrollView;-><init>(Landroid/content/Context;Landroid/widget/ScrollView;)V

    iput-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->scroll:Lcn/apppark/mcd/widget/InnerScrollView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->scroll:Lcn/apppark/mcd/widget/InnerScrollView;

    invoke-virtual {v1, v4}, Lcn/apppark/mcd/widget/InnerScrollView;->setFadingEdgeLength(I)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->scroll:Lcn/apppark/mcd/widget/InnerScrollView;

    invoke-virtual {v1, v4}, Lcn/apppark/mcd/widget/InnerScrollView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->scroll:Lcn/apppark/mcd/widget/InnerScrollView;

    invoke-virtual {v1, v4}, Lcn/apppark/mcd/widget/InnerScrollView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bgPic()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bgColor()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_bgAlpha()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v1, v2, v3, v4}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getData_text()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_textSize()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_textColor()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_textBold()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getStyle_textAlign()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->scroll:Lcn/apppark/mcd/widget/InnerScrollView;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Lcn/apppark/mcd/widget/InnerScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->scroll:Lcn/apppark/mcd/widget/InnerScrollView;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->addView(Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->textView:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->textView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;->textView:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

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
