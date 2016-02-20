.class public Lcn/apppark/mcd/widget/MyBtn;
.super Landroid/widget/FrameLayout;


# instance fields
.field public a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcn/apppark/mcd/widget/MyBtn;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcn/apppark/mcd/widget/MyBtn;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcn/apppark/mcd/widget/MyBtn;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/MyBtn;->setBackgroundColor(I)V

    invoke-virtual {p0, v3}, Lcn/apppark/mcd/widget/MyBtn;->setClickable(Z)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030059

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a0273

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/MyBtn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/mcd/widget/MyBtn;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyBtn;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyBtn;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    const v0, 0x7f0a0274

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/MyBtn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/mcd/widget/MyBtn;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyBtn;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    new-instance v0, Lz;

    invoke-direct {v0, p0}, Lz;-><init>(Lcn/apppark/mcd/widget/MyBtn;)V

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/MyBtn;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Laa;

    invoke-direct {v0, p0}, Laa;-><init>(Lcn/apppark/mcd/widget/MyBtn;)V

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/MyBtn;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method


# virtual methods
.method public setBgColor(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcn/apppark/mcd/widget/MyBtn;->setBackgroundColor(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyBtn;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
