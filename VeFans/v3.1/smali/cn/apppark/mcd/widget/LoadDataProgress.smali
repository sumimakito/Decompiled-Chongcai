.class public Lcn/apppark/mcd/widget/LoadDataProgress;
.super Landroid/widget/LinearLayout;


# instance fields
.field private iLoadDataProgress:Lcn/apppark/mcd/widget/IReloadDataProgress;

.field private imgFail:Landroid/widget/ImageView;

.field private lay_progress:Landroid/widget/LinearLayout;

.field private pb_progress:Landroid/widget/ProgressBar;

.field private tv_progress:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030054

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a0261

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/LoadDataProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    const v0, 0x7f0a025f

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/LoadDataProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->imgFail:Landroid/widget/ImageView;

    const v0, 0x7f0a0260

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/LoadDataProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->pb_progress:Landroid/widget/ProgressBar;

    const v0, 0x7f0a025e

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/LoadDataProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->lay_progress:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->imgFail:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->lay_progress:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/apppark/mcd/widget/LoadDataProgress$1;

    invoke-direct {v1, p0}, Lcn/apppark/mcd/widget/LoadDataProgress$1;-><init>(Lcn/apppark/mcd/widget/LoadDataProgress;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    new-instance v1, Lcn/apppark/mcd/util/ScaleAnima;

    invoke-direct {v1}, Lcn/apppark/mcd/util/ScaleAnima;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic a(Lcn/apppark/mcd/widget/LoadDataProgress;)Lcn/apppark/mcd/widget/IReloadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->iLoadDataProgress:Lcn/apppark/mcd/widget/IReloadDataProgress;

    return-object v0
.end method


# virtual methods
.method public hidden()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->lay_progress:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->lay_progress:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hiddenAnima()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->lay_progress:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->lay_progress:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->iLoadDataProgress:Lcn/apppark/mcd/widget/IReloadDataProgress;

    return-void
.end method

.method public setTextBack(I)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method public show(I)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->lay_progress:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->lay_progress:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->lay_progress:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->pb_progress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->pb_progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->imgFail:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->pb_progress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->pb_progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method

.method public show(IZZLjava/lang/String;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->lay_progress:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->lay_progress:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    const-string v0, ""

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p4, :cond_3

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->lay_progress:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p4}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->pb_progress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    if-eqz p3, :cond_5

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->pb_progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->imgFail:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->lay_progress:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->pb_progress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->pb_progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2
.end method

.method public show(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->lay_progress:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->lay_progress:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    const-string v0, ""

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p4, :cond_3

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->lay_progress:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p4}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->pb_progress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    if-eqz p3, :cond_5

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->pb_progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->imgFail:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->lay_progress:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->pb_progress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->pb_progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2
.end method

.method public showError(IZZLjava/lang/String;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->lay_progress:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->lay_progress:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    const-string v0, ""

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p4, :cond_3

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->lay_progress:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p4}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->pb_progress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    if-eqz p3, :cond_5

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->pb_progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->lay_progress:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->pb_progress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->pb_progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2
.end method

.method public showError(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->lay_progress:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->lay_progress:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    const-string v0, ""

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p4, :cond_3

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->lay_progress:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p4}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->pb_progress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    if-eqz p3, :cond_5

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->pb_progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->lay_progress:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->tv_progress:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->pb_progress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/mcd/widget/LoadDataProgress;->pb_progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2
.end method
