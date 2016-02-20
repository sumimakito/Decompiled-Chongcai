.class public Lcn/apppark/vertify/activity/free/self/SelfMultLine1;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcn/apppark/vertify/activity/ISelfView;


# instance fields
.field private context:Landroid/content/Context;

.field private scroll:Lcn/apppark/mcd/widget/InnerScrollView;

.field private textView:Lcn/apppark/mcd/widget/MyTextView1;

.field private vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/SelfDefineItemVo;Landroid/widget/ScrollView;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLine1;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLine1;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/self/SelfMultLine1;->init()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lcn/apppark/mcd/widget/MyTextView1;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLine1;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcn/apppark/mcd/widget/MyTextView1;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLine1;->textView:Lcn/apppark/mcd/widget/MyTextView1;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLine1;->textView:Lcn/apppark/mcd/widget/MyTextView1;

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Lcn/apppark/mcd/widget/MyTextView1;->setBackgroundColor(I)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLine1;->textView:Lcn/apppark/mcd/widget/MyTextView1;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLine1;->vo:Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;->getData_text()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/apppark/mcd/widget/MyTextView1;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/SelfMultLine1;->textView:Lcn/apppark/mcd/widget/MyTextView1;

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/free/self/SelfMultLine1;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

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
