.class public Lcn/apppark/mcd/widget/DialogOneBtn$Builder;
.super Landroid/app/AlertDialog$Builder;


# instance fields
.field private mContext:Landroid/content/Context;

.field private md:Lcn/apppark/mcd/widget/DialogOneBtn;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcn/apppark/mcd/widget/DialogOneBtn;

    invoke-direct {v0, p1}, Lcn/apppark/mcd/widget/DialogOneBtn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->md:Lcn/apppark/mcd/widget/DialogOneBtn;

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->md:Lcn/apppark/mcd/widget/DialogOneBtn;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogOneBtn;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->md:Lcn/apppark/mcd/widget/DialogOneBtn;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogOneBtn;->setCancelable(Z)V

    iput-object p1, p0, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Landroid/app/AlertDialog;
    .locals 1

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->create()Lcn/apppark/mcd/widget/DialogOneBtn;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcn/apppark/mcd/widget/DialogOneBtn;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->md:Lcn/apppark/mcd/widget/DialogOneBtn;

    return-object v0
.end method

.method public bridge synthetic setMessage(I)Landroid/app/AlertDialog$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->setMessage(I)Lcn/apppark/mcd/widget/DialogOneBtn$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/apppark/mcd/widget/DialogOneBtn$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMessage(I)Lcn/apppark/mcd/widget/DialogOneBtn$Builder;
    .locals 2

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->md:Lcn/apppark/mcd/widget/DialogOneBtn;

    iget-object v1, p0, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogOneBtn;->setMessage(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcn/apppark/mcd/widget/DialogOneBtn$Builder;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->md:Lcn/apppark/mcd/widget/DialogOneBtn;

    invoke-virtual {v0, p1}, Lcn/apppark/mcd/widget/DialogOneBtn;->setMessage(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public bridge synthetic setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogOneBtn$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogOneBtn$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogOneBtn$Builder;
    .locals 2

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->md:Lcn/apppark/mcd/widget/DialogOneBtn;

    iget-object v1, p0, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcn/apppark/mcd/widget/DialogOneBtn;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogOneBtn$Builder;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->md:Lcn/apppark/mcd/widget/DialogOneBtn;

    invoke-virtual {v0, p1, p2}, Lcn/apppark/mcd/widget/DialogOneBtn;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public bridge synthetic setTitle(I)Landroid/app/AlertDialog$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->setTitle(I)Lcn/apppark/mcd/widget/DialogOneBtn$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/apppark/mcd/widget/DialogOneBtn$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(I)Lcn/apppark/mcd/widget/DialogOneBtn$Builder;
    .locals 2

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->md:Lcn/apppark/mcd/widget/DialogOneBtn;

    iget-object v1, p0, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogOneBtn;->setTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcn/apppark/mcd/widget/DialogOneBtn$Builder;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->md:Lcn/apppark/mcd/widget/DialogOneBtn;

    invoke-virtual {v0, p1}, Lcn/apppark/mcd/widget/DialogOneBtn;->setTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method
