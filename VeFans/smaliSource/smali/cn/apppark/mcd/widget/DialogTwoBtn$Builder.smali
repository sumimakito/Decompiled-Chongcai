.class public Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;
.super Landroid/app/AlertDialog$Builder;


# instance fields
.field private mContext:Landroid/content/Context;

.field private md:Lcn/apppark/mcd/widget/DialogTwoBtn;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcn/apppark/mcd/widget/DialogTwoBtn;

    invoke-direct {v0, p1}, Lcn/apppark/mcd/widget/DialogTwoBtn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->md:Lcn/apppark/mcd/widget/DialogTwoBtn;

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->md:Lcn/apppark/mcd/widget/DialogTwoBtn;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->md:Lcn/apppark/mcd/widget/DialogTwoBtn;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn;->setCancelable(Z)V

    iput-object p1, p0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Landroid/app/AlertDialog;
    .locals 1

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->create()Lcn/apppark/mcd/widget/DialogTwoBtn;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcn/apppark/mcd/widget/DialogTwoBtn;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->md:Lcn/apppark/mcd/widget/DialogTwoBtn;

    return-object v0
.end method

.method public bridge synthetic setMessage(I)Landroid/app/AlertDialog$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setMessage(I)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMessage(I)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;
    .locals 2

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->md:Lcn/apppark/mcd/widget/DialogTwoBtn;

    iget-object v1, p0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn;->setMessage(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->md:Lcn/apppark/mcd/widget/DialogTwoBtn;

    invoke-virtual {v0, p1}, Lcn/apppark/mcd/widget/DialogTwoBtn;->setMessage(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public bridge synthetic setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;
    .locals 2

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->md:Lcn/apppark/mcd/widget/DialogTwoBtn;

    iget-object v1, p0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcn/apppark/mcd/widget/DialogTwoBtn;->setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->md:Lcn/apppark/mcd/widget/DialogTwoBtn;

    invoke-virtual {v0, p1, p2}, Lcn/apppark/mcd/widget/DialogTwoBtn;->setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public bridge synthetic setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;
    .locals 2

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->md:Lcn/apppark/mcd/widget/DialogTwoBtn;

    iget-object v1, p0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcn/apppark/mcd/widget/DialogTwoBtn;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->md:Lcn/apppark/mcd/widget/DialogTwoBtn;

    invoke-virtual {v0, p1, p2}, Lcn/apppark/mcd/widget/DialogTwoBtn;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public bridge synthetic setTitle(I)Landroid/app/AlertDialog$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setTitle(I)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(I)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;
    .locals 2

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->md:Lcn/apppark/mcd/widget/DialogTwoBtn;

    iget-object v1, p0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn;->setTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->md:Lcn/apppark/mcd/widget/DialogTwoBtn;

    invoke-virtual {v0, p1}, Lcn/apppark/mcd/widget/DialogTwoBtn;->setTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method
