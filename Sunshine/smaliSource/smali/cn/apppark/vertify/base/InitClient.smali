.class public Lcn/apppark/vertify/base/InitClient;
.super Landroid/app/Activity;


# static fields
.field private static final COPY_FAILED:I = 0x3

.field private static final GUI_NEXT_NOTIFIER:I = 0x1

.field private static final GUI_STOP_NOTIFIER:I = 0x2


# instance fields
.field public a:Landroid/os/Handler;

.field private assetsList:[Ljava/lang/String;

.field private fileIo:Lcn/apppark/mcd/util/file/AssetsIO;

.field private img:Landroid/widget/ImageView;

.field private index:I

.field private initSuccess:Z

.field private isExistCopyListFile:Z

.field private loadPercentTV:Landroid/widget/TextView;

.field private max:I

.field private sdcardPath:Ljava/lang/String;

.field private txtList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/vertify/base/InitClient;->initSuccess:Z

    new-instance v0, Lvp;

    invoke-direct {v0, p0}, Lvp;-><init>(Lcn/apppark/vertify/base/InitClient;)V

    iput-object v0, p0, Lcn/apppark/vertify/base/InitClient;->a:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/base/InitClient;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/base/InitClient;->max:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/base/InitClient;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/base/InitClient;->index:I

    return p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/base/InitClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/vertify/base/InitClient;->initSuccess:Z

    return p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/base/InitClient;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/base/InitClient;->index:I

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/base/InitClient;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/base/InitClient;->loadPercentTV:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/base/InitClient;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/base/InitClient;->assetsList:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/base/InitClient;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/base/InitClient;->sdcardPath:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/base/InitClient;)Lcn/apppark/mcd/util/file/AssetsIO;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/base/InitClient;->fileIo:Lcn/apppark/mcd/util/file/AssetsIO;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/base/InitClient;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/base/InitClient;->initSuccess:Z

    return v0
.end method

.method private native getCopyFileListName()Ljava/lang/String;
.end method

.method private native getInitPath()Ljava/lang/String;
.end method

.method private native getLoadbgPath()Ljava/lang/String;
.end method

.method private native getSDPath()Ljava/lang/String;
.end method

.method public static synthetic h(Lcn/apppark/vertify/base/InitClient;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/base/InitClient;->txtList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public initFinish()V
    .locals 0

    invoke-virtual {p0}, Lcn/apppark/vertify/base/InitClient;->finish()V

    return-void
.end method

.method protected initFromAssets()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/base/InitClient;->fileIo:Lcn/apppark/mcd/util/file/AssetsIO;

    invoke-direct {p0}, Lcn/apppark/vertify/base/InitClient;->getInitPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/util/file/AssetsIO;->getAssetsCopyList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/base/InitClient;->assetsList:[Ljava/lang/String;

    iget-object v0, p0, Lcn/apppark/vertify/base/InitClient;->assetsList:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcn/apppark/vertify/base/InitClient;->max:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lvq;

    invoke-direct {v1, p0}, Lvq;-><init>(Lcn/apppark/vertify/base/InitClient;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected initFromTxt()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/base/InitClient;->fileIo:Lcn/apppark/mcd/util/file/AssetsIO;

    invoke-direct {p0}, Lcn/apppark/vertify/base/InitClient;->getCopyFileListName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/util/file/AssetsIO;->getTxtCopyList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/base/InitClient;->txtList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/apppark/vertify/base/InitClient;->txtList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/base/InitClient;->max:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lvr;

    invoke-direct {v1, p0}, Lvr;-><init>(Lcn/apppark/vertify/base/InitClient;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030054

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/base/InitClient;->setContentView(I)V

    const v0, 0x7f0a026c

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/base/InitClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/base/InitClient;->loadPercentTV:Landroid/widget/TextView;

    const v0, 0x7f0a026b

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/base/InitClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/apppark/vertify/base/InitClient;->img:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/apppark/vertify/base/InitClient;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    :try_start_0
    invoke-direct {p0}, Lcn/apppark/vertify/base/InitClient;->getLoadbgPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcn/apppark/vertify/base/InitClient;->img:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcn/apppark/vertify/base/InitClient;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0}, Lcn/apppark/vertify/base/InitClient;->getSDPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/base/InitClient;->sdcardPath:Ljava/lang/String;

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->resetTimeStamp()V

    new-instance v0, Lcn/apppark/mcd/util/file/AssetsIO;

    invoke-direct {v0, p0}, Lcn/apppark/mcd/util/file/AssetsIO;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/base/InitClient;->fileIo:Lcn/apppark/mcd/util/file/AssetsIO;

    iput-boolean v4, p0, Lcn/apppark/vertify/base/InitClient;->isExistCopyListFile:Z

    :try_start_2
    iget-object v0, p0, Lcn/apppark/vertify/base/InitClient;->fileIo:Lcn/apppark/mcd/util/file/AssetsIO;

    iget-object v1, p0, Lcn/apppark/vertify/base/InitClient;->sdcardPath:Ljava/lang/String;

    const-string v3, "temp.dat"

    invoke-virtual {v0, v1, v3}, Lcn/apppark/mcd/util/file/AssetsIO;->copyDataSdcard(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/base/InitClient;->fileIo:Lcn/apppark/mcd/util/file/AssetsIO;

    iget-object v1, p0, Lcn/apppark/vertify/base/InitClient;->sdcardPath:Ljava/lang/String;

    const-string v3, "db_city.db"

    invoke-virtual {v0, v1, v3}, Lcn/apppark/mcd/util/file/AssetsIO;->copyDataSdcard(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    invoke-direct {p0}, Lcn/apppark/vertify/base/InitClient;->getCopyFileListName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/vertify/base/InitClient;->isExistCopyListFile:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    iget-boolean v0, p0, Lcn/apppark/vertify/base/InitClient;->isExistCopyListFile:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcn/apppark/vertify/base/InitClient;->initFromTxt()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v4, p0, Lcn/apppark/vertify/base/InitClient;->isExistCopyListFile:Z

    goto :goto_3

    :cond_2
    :try_start_5
    invoke-virtual {p0}, Lcn/apppark/vertify/base/InitClient;->initFromAssets()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    const v1, 0x7f08000f

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method
