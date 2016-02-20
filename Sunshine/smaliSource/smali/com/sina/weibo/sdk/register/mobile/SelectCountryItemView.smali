.class public Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;
.super Landroid/widget/RelativeLayout;
.source "SelectCountryItemView.java"


# instance fields
.field private mCountryCode:Landroid/widget/TextView;

.field private mCountryName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0, p2, p3}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->initView(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method private initView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x28

    const/16 v8, 0x10

    const/high16 v7, 0x41800000    # 16.0f

    const/16 v6, 0xf

    const/4 v5, -0x2

    .line 23
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    .line 24
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v4

    .line 23
    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 25
    .local v2, "mlly":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p0, v2}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryName:Landroid/widget/TextView;

    .line 28
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryName:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 29
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 32
    .local v1, "mCountryNameLp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 33
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 34
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 35
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryName:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 36
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryName:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryName:Landroid/widget/TextView;

    const v4, -0xcccccd

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryName:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->addView(Landroid/view/View;)V

    .line 41
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryCode:Landroid/widget/TextView;

    .line 42
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryCode:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 43
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45
    .local v0, "mCountryCodeLp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v9}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 48
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryCode:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryCode:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryCode:Landroid/widget/TextView;

    const v4, -0xaf8251

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryCode:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 52
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryCode:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->addView(Landroid/view/View;)V

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->setContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private setContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryCode:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method


# virtual methods
.method public updateContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->setContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method
