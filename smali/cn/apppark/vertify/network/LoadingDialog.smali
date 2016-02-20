.class public abstract Lcn/apppark/vertify/network/LoadingDialog;
.super Landroid/os/AsyncTask;

# interfaces
.implements Lcn/apppark/vertify/network/ResultProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Input:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TInput;",
        "Ljava/lang/Exception;",
        "TResult;>;",
        "Lcn/apppark/vertify/network/ResultProvider",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field public mActivity:Landroid/app/Activity;

.field private mFailMsg:Ljava/lang/String;

.field private mLoadingMsg:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mTitleMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcn/apppark/vertify/network/LoadingDialog;->mTitleMsg:Ljava/lang/String;

    iput-object p1, p0, Lcn/apppark/vertify/network/LoadingDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/network/LoadingDialog;->mActivity:Landroid/app/Activity;

    :cond_0
    iput-object p3, p0, Lcn/apppark/vertify/network/LoadingDialog;->mLoadingMsg:Ljava/lang/String;

    iput-object p4, p0, Lcn/apppark/vertify/network/LoadingDialog;->mFailMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TInput;)TResult;"
        }
    .end annotation
.end method

.method protected doStuffWithNull()V
    .locals 0

    return-void
.end method

.method public onCancelled()V
    .locals 0

    invoke-virtual {p0}, Lcn/apppark/vertify/network/LoadingDialog;->showFailMsg()V

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcn/apppark/vertify/network/LoadingDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcn/apppark/vertify/network/LoadingDialog;->doStuffWithResult(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcn/apppark/vertify/network/LoadingDialog;->doStuffWithNull()V

    invoke-virtual {p0}, Lcn/apppark/vertify/network/LoadingDialog;->showFailMsg()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPreExecute()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcn/apppark/vertify/network/LoadingDialog;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/apppark/vertify/network/LoadingDialog;->mTitleMsg:Ljava/lang/String;

    iget-object v2, p0, Lcn/apppark/vertify/network/LoadingDialog;->mLoadingMsg:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lvc;

    invoke-direct {v5, p0}, Lvc;-><init>(Lcn/apppark/vertify/network/LoadingDialog;)V

    invoke-static/range {v0 .. v5}, Lcn/apppark/mcd/widget/DialogProgress;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/network/LoadingDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Exception;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/apppark/vertify/network/LoadingDialog;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/network/LoadingDialog;->cancel(Z)Z

    iget-object v0, p0, Lcn/apppark/vertify/network/LoadingDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcn/apppark/vertify/network/LoadingDialog;->onProgressUpdate([Ljava/lang/Exception;)V

    return-void
.end method

.method protected showFailMsg()V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/network/LoadingDialog;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/apppark/vertify/network/LoadingDialog;->mFailMsg:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
