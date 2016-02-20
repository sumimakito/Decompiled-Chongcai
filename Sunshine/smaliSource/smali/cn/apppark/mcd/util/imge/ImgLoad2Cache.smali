.class public Lcn/apppark/mcd/util/imge/ImgLoad2Cache;
.super Ljava/lang/Object;


# instance fields
.field private baseSDCachePath:Ljava/lang/String;

.field private downImgEnd:Lcn/apppark/mcd/util/imge/ImgLoad2Cache$DownImgEnd;

.field private isSuccess:Z

.field private maxTime:I

.field private tryTime:I


# direct methods
.method public constructor <init>(Lcn/apppark/mcd/util/imge/ImgLoad2Cache$DownImgEnd;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->tryTime:I

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->maxTime:I

    iput-boolean v1, p0, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->isSuccess:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/apppark/ckj10185912/HQCHApplication;->getInstance()Lcn/apppark/ckj10185912/HQCHApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/ckj10185912/HQCHApplication;->getResourceDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->IMAGE_CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->baseSDCachePath:Ljava/lang/String;

    iput-object p1, p0, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->downImgEnd:Lcn/apppark/mcd/util/imge/ImgLoad2Cache$DownImgEnd;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/mcd/util/imge/ImgLoad2Cache;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->isSuccess:Z

    return v0
.end method

.method public static synthetic a(Lcn/apppark/mcd/util/imge/ImgLoad2Cache;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->isSuccess:Z

    return p1
.end method

.method public static synthetic b(Lcn/apppark/mcd/util/imge/ImgLoad2Cache;)I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->tryTime:I

    return v0
.end method

.method public static synthetic c(Lcn/apppark/mcd/util/imge/ImgLoad2Cache;)I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->maxTime:I

    return v0
.end method

.method public static synthetic d(Lcn/apppark/mcd/util/imge/ImgLoad2Cache;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->baseSDCachePath:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/mcd/util/imge/ImgLoad2Cache;)I
    .locals 2

    iget v0, p0, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->tryTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->tryTime:I

    return v0
.end method

.method public static synthetic f(Lcn/apppark/mcd/util/imge/ImgLoad2Cache;)Lcn/apppark/mcd/util/imge/ImgLoad2Cache$DownImgEnd;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->downImgEnd:Lcn/apppark/mcd/util/imge/ImgLoad2Cache$DownImgEnd;

    return-object v0
.end method


# virtual methods
.method public getDownImgEnd()Lcn/apppark/mcd/util/imge/ImgLoad2Cache$DownImgEnd;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->downImgEnd:Lcn/apppark/mcd/util/imge/ImgLoad2Cache$DownImgEnd;

    return-object v0
.end method

.method public getMaxTime()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->maxTime:I

    return v0
.end method

.method public getTryTime()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->tryTime:I

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->isSuccess:Z

    return v0
.end method

.method public loadPic(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->baseImgCachePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcn/apppark/mcd/util/PublicUtil;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->downImgEnd:Lcn/apppark/mcd/util/imge/ImgLoad2Cache$DownImgEnd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->downImgEnd:Lcn/apppark/mcd/util/imge/ImgLoad2Cache$DownImgEnd;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/apppark/mcd/util/imge/ImgLoad2Cache$DownImgEnd;->downImgEnd(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lo;

    invoke-direct {v1, p0, p1}, Lo;-><init>(Lcn/apppark/mcd/util/imge/ImgLoad2Cache;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setDownImgEnd(Lcn/apppark/mcd/util/imge/ImgLoad2Cache$DownImgEnd;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->downImgEnd:Lcn/apppark/mcd/util/imge/ImgLoad2Cache$DownImgEnd;

    return-void
.end method

.method public setMaxTime(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->maxTime:I

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->isSuccess:Z

    return-void
.end method

.method public setTryTime(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/util/imge/ImgLoad2Cache;->tryTime:I

    return-void
.end method
