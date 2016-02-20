.class public Lcn/apppark/mcd/widget/DialogProgress;
.super Landroid/app/ProgressDialog;


# static fields
.field private static final DEFAULT_HEIGHT:I


# instance fields
.field private dialogButtons:Landroid/widget/LinearLayout;

.field protected mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMax:I

.field private mStyle:I

.field private mStyleHorizotal:Landroid/widget/RelativeLayout;

.field private mStyleSmall:Landroid/widget/RelativeLayout;

.field private mTitle:Ljava/lang/String;

.field private mTitlePanel:Landroid/widget/LinearLayout;

.field private mView:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x43160000    # 150.0f

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v0

    sput v0, Lcn/apppark/mcd/widget/DialogProgress;->DEFAULT_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mStyle:I

    iput-object p1, p0, Lcn/apppark/mcd/widget/DialogProgress;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mView:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mView:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a016a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mStyleSmall:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mView:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a016d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mStyleHorizotal:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mView:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0167

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mTitlePanel:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mView:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0176

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->dialogButtons:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/apppark/mcd/widget/DialogProgress;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcn/apppark/mcd/widget/DialogProgress;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcn/apppark/mcd/widget/DialogProgress;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;
    .locals 2

    new-instance v0, Lcn/apppark/mcd/widget/DialogProgress;

    invoke-direct {v0, p0}, Lcn/apppark/mcd/widget/DialogProgress;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcn/apppark/mcd/widget/DialogProgress;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lcn/apppark/mcd/widget/DialogProgress;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Lcn/apppark/mcd/widget/DialogProgress;->setIndeterminate(Z)V

    invoke-virtual {v0, p4}, Lcn/apppark/mcd/widget/DialogProgress;->setCancelable(Z)V

    invoke-virtual {v0, p5}, Lcn/apppark/mcd/widget/DialogProgress;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogProgress;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogProgress;->show()V

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x0

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    const/16 v7, 0x8

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/DialogProgress;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcn/apppark/mcd/widget/DialogProgress;->DEFAULT_HEIGHT:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x4012000000000000L    # 4.5

    mul-double/2addr v2, v4

    div-double/2addr v2, v8

    double-to-int v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mTitlePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v1, 0xa

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcn/apppark/mcd/widget/DialogProgress;->DEFAULT_HEIGHT:I

    add-int/lit8 v1, v1, -0x23

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    iget v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mStyle:I

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x4012cccccccccccdL    # 4.7

    mul-double/2addr v2, v4

    div-double/2addr v2, v8

    double-to-int v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mStyleHorizotal:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mStyleSmall:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0a016e

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/DialogProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget v1, p0, Lcn/apppark/mcd/widget/DialogProgress;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v1, 0x7f0a016f

    invoke-virtual {p0, v1}, Lcn/apppark/mcd/widget/DialogProgress;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0170

    invoke-virtual {p0, v2}, Lcn/apppark/mcd/widget/DialogProgress;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mProgress"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mProgressPercent"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mProgressNumber"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mStyleHorizotal:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mStyleSmall:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->setMax(I)V

    iput p1, p0, Lcn/apppark/mcd/widget/DialogProgress;->mMax:I

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mView:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a016c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iput p1, p0, Lcn/apppark/mcd/widget/DialogProgress;->mStyle:I

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mTitle:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogProgress;->mView:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0168

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
