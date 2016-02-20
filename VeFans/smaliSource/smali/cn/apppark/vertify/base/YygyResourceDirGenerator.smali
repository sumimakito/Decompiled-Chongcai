.class public Lcn/apppark/vertify/base/YygyResourceDirGenerator;
.super Ljava/lang/Object;


# static fields
.field static a:Lcn/apppark/vertify/base/YygyResourceDirGenerator;


# instance fields
.field private baseFileName:Ljava/lang/String;

.field private mClientFlag:Ljava/lang/String;

.field private yygyPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->a:Lcn/apppark/vertify/base/YygyResourceDirGenerator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "yygy"

    iput-object v0, p0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->baseFileName:Ljava/lang/String;

    iput-object p1, p0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->mClientFlag:Ljava/lang/String;

    return-void
.end method

.method public static getGenerator()Lcn/apppark/vertify/base/YygyResourceDirGenerator;
    .locals 1

    sget-object v0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->a:Lcn/apppark/vertify/base/YygyResourceDirGenerator;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcn/apppark/vertify/base/YygyResourceDirGenerator;
    .locals 1

    sget-object v0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->a:Lcn/apppark/vertify/base/YygyResourceDirGenerator;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->a:Lcn/apppark/vertify/base/YygyResourceDirGenerator;

    iget-object v0, v0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->mClientFlag:Ljava/lang/String;

    if-eq v0, p0, :cond_1

    :cond_0
    new-instance v0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;

    invoke-direct {v0, p0}, Lcn/apppark/vertify/base/YygyResourceDirGenerator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->a:Lcn/apppark/vertify/base/YygyResourceDirGenerator;

    :cond_1
    sget-object v0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->a:Lcn/apppark/vertify/base/YygyResourceDirGenerator;

    return-object v0
.end method

.method public static setGenerator(Lcn/apppark/vertify/base/YygyResourceDirGenerator;)V
    .locals 0

    sput-object p0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->a:Lcn/apppark/vertify/base/YygyResourceDirGenerator;

    return-void
.end method


# virtual methods
.method public generateyygyPath()V
    .locals 2

    invoke-static {}, Lcn/apppark/mcd/util/file/StorageAllocator;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/apppark/mcd/util/file/StorageAllocator;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/file/StorageAllocator;->hasEnoughCapacity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/apppark/mcd/util/file/StorageAllocator;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->baseFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->yygyPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getDownLoadDir(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->getyygyDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->yygyPath:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFileResourcePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->yygyPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "10185912"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFoldPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->getResourceDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-object v0
.end method

.method public getFolderResourcePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->yygyPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "10185912"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceDir()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->mClientFlag:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->getyygyDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->yygyPath:Ljava/lang/String;

    iget-object v2, p0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->mClientFlag:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getmClientFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->mClientFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getyygyDir()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->yygyPath:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->generateyygyPath()V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->yygyPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->yygyPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getyygyPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->yygyPath:Ljava/lang/String;

    return-object v0
.end method

.method public setmClientFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->mClientFlag:Ljava/lang/String;

    return-void
.end method

.method public setyygyPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->yygyPath:Ljava/lang/String;

    return-void
.end method
