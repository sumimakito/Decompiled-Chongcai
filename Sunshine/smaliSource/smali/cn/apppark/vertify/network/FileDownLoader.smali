.class public Lcn/apppark/vertify/network/FileDownLoader;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public mActivity:Landroid/app/Activity;

.field private mDownLoadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDialog:Lcn/apppark/mcd/widget/DialogProgress;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    instance-of v0, p1, Lcn/apppark/ckj10185912/Main;

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcn/apppark/vertify/network/FileDownLoader;->mActivity:Landroid/app/Activity;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/network/FileDownLoader;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcn/apppark/vertify/network/FileDownLoader;->mActivity:Landroid/app/Activity;

    :cond_1
    iput-object p2, p0, Lcn/apppark/vertify/network/FileDownLoader;->mDownLoadList:Ljava/util/ArrayList;

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/network/FileDownLoader;->mActivity:Landroid/app/Activity;

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/apppark/vertify/network/FileDownLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcn/apppark/vertify/network/FileDownLoader;->mDownLoadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    sget-boolean v0, Lcn/apppark/ckj10185912/HQCHApplication;->DEBUG:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/network/FileDownLoader;->mDownLoadList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/apppark/ckj10185912/HQCHApplication;->getInstance()Lcn/apppark/ckj10185912/HQCHApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcn/apppark/ckj10185912/HQCHApplication;->getResourceDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/apppark/mcd/util/NetworkIO;->downFilesToSdcard(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/network/FileDownLoader;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/apppark/vertify/network/FileDownLoader;->mDownLoadList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/apppark/ckj10185912/HQCHApplication;->getInstance()Lcn/apppark/ckj10185912/HQCHApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcn/apppark/ckj10185912/HQCHApplication;->getResourceDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/apppark/mcd/util/NetworkIO;->downFilesToSdcard(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "url:"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/network/FileDownLoader;->mDownLoadList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " not exist!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v0, Lcn/apppark/ckj10185912/HQCHApplication;->DEBUG:Z

    if-nez v0, :cond_1

    new-array v0, v5, [Ljava/lang/Integer;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/network/FileDownLoader;->publishProgress([Ljava/lang/Object;)V

    :cond_1
    :goto_2
    const/4 v0, 0x0

    return-object v0

    :catch_2
    move-exception v0

    :try_start_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "url:"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/network/FileDownLoader;->mDownLoadList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " error!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->lastUpdateTimeFlag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->updateTimeStamp(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method protected finishCheckUPdate()V
    .locals 3

    new-instance v0, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;

    iget-object v1, p0, Lcn/apppark/vertify/network/FileDownLoader;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcn/apppark/vertify/network/FileDownLoader;->mActivity:Landroid/app/Activity;

    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/apppark/mcd/widget/DialogOneBtn$Builder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/network/FileDownLoader;->mActivity:Landroid/app/Activity;

    const v2, 0x7f080014

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/apppark/mcd/widget/DialogOneBtn$Builder;

    move-result-object v0

    const v1, 0x7f08000b

    new-instance v2, Lwb;

    invoke-direct {v2, p0}, Lwb;-><init>(Lcn/apppark/vertify/network/FileDownLoader;)V

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogOneBtn$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->create()Lcn/apppark/mcd/widget/DialogOneBtn;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogOneBtn;->show()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/apppark/vertify/network/FileDownLoader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/apppark/vertify/network/FileDownLoader;->mProgressDialog:Lcn/apppark/mcd/widget/DialogProgress;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogProgress;->dismiss()V

    invoke-virtual {p0}, Lcn/apppark/vertify/network/FileDownLoader;->finishCheckUPdate()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    new-instance v0, Lcn/apppark/mcd/widget/DialogProgress;

    iget-object v1, p0, Lcn/apppark/vertify/network/FileDownLoader;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/apppark/mcd/widget/DialogProgress;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/network/FileDownLoader;->mProgressDialog:Lcn/apppark/mcd/widget/DialogProgress;

    iget-object v0, p0, Lcn/apppark/vertify/network/FileDownLoader;->mProgressDialog:Lcn/apppark/mcd/widget/DialogProgress;

    iget-object v1, p0, Lcn/apppark/vertify/network/FileDownLoader;->mActivity:Landroid/app/Activity;

    const v2, 0x7f08001b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogProgress;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/network/FileDownLoader;->mProgressDialog:Lcn/apppark/mcd/widget/DialogProgress;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogProgress;->setProgressStyle(I)V

    iget-object v0, p0, Lcn/apppark/vertify/network/FileDownLoader;->mProgressDialog:Lcn/apppark/mcd/widget/DialogProgress;

    iget-object v1, p0, Lcn/apppark/vertify/network/FileDownLoader;->mDownLoadList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogProgress;->setMax(I)V

    iget-object v0, p0, Lcn/apppark/vertify/network/FileDownLoader;->mProgressDialog:Lcn/apppark/mcd/widget/DialogProgress;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogProgress;->setProgress(I)V

    iget-object v0, p0, Lcn/apppark/vertify/network/FileDownLoader;->mProgressDialog:Lcn/apppark/mcd/widget/DialogProgress;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogProgress;->show()V

    iget-object v0, p0, Lcn/apppark/vertify/network/FileDownLoader;->mProgressDialog:Lcn/apppark/mcd/widget/DialogProgress;

    new-instance v1, Lwa;

    invoke-direct {v1, p0}, Lwa;-><init>(Lcn/apppark/vertify/network/FileDownLoader;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogProgress;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/network/FileDownLoader;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/apppark/vertify/network/FileDownLoader;->mActivity:Landroid/app/Activity;

    const v2, 0x7f080015

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/network/FileDownLoader;->cancel(Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/network/FileDownLoader;->mProgressDialog:Lcn/apppark/mcd/widget/DialogProgress;

    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogProgress;->setProgress(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcn/apppark/vertify/network/FileDownLoader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
