.class public Lcn/apppark/mcd/widget/DialogOneBtn;
.super Landroid/app/AlertDialog;


# static fields
.field private static final DEFAULT_HEGHT:I


# instance fields
.field private clickNum:I

.field private lastClickTime:J

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemMessage:Landroid/widget/TextView;

.field private mItemTitle:Landroid/widget/TextView;

.field private mView:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x43340000    # 180.0f

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v0

    sput v0, Lcn/apppark/mcd/widget/DialogOneBtn;->DEFAULT_HEGHT:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn;->lastClickTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn;->clickNum:I

    iput-object p1, p0, Lcn/apppark/mcd/widget/DialogOneBtn;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030030

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn;->mView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn;->mView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0168

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn;->mItemTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn;->mView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a016c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn;->mItemMessage:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn;->mView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/DialogOneBtn;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn;->mView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn;->mContext:Landroid/content/Context;

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

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    div-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn;->mView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcn/apppark/mcd/widget/DialogOneBtn;->DEFAULT_HEGHT:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn;->mView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0177

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    new-instance v1, Lcn/apppark/mcd/widget/DialogOneBtn$1;

    invoke-direct {v1, p0, p2}, Lcn/apppark/mcd/widget/DialogOneBtn$1;-><init>(Lcn/apppark/mcd/widget/DialogOneBtn;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn;->mItemMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
