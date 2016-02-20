.class public Lcom/baidu/mapapi/utils/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field static e:Ljava/lang/String;

.field static f:I

.field static g:I

.field static h:I

.field static i:[Ljava/lang/String;

.field static j:[Ljava/lang/String;

.field static k:[Ljava/lang/String;

.field private static l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/utils/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/baidu/mapapi/utils/a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/BaiduMapSDK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    const/high16 v2, 0xa00000

    const/high16 v1, 0x500000

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/utils/a;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/baidu/mapapi/utils/a;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/platform/comapi/d/b;->a()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/mapapi/utils/a;->j()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/utils/a;->d:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/utils/a;->e:Ljava/lang/String;

    const/high16 v0, 0x1400000

    sput v0, Lcom/baidu/mapapi/utils/a;->f:I

    const/high16 v0, 0x3200000

    sput v0, Lcom/baidu/mapapi/utils/a;->g:I

    sput v1, Lcom/baidu/mapapi/utils/a;->h:I

    :goto_0
    invoke-static {p0}, Lcom/baidu/mapapi/utils/a;->c(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/utils/a;->d:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/baidu/mapapi/utils/a;->e:Ljava/lang/String;

    sput v2, Lcom/baidu/mapapi/utils/a;->f:I

    sput v2, Lcom/baidu/mapapi/utils/a;->g:I

    sput v1, Lcom/baidu/mapapi/utils/a;->h:I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/test.0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/utils/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/baidu/mapapi/utils/h;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/baidu/mapapi/utils/h;->b:[Ljava/lang/String;

    sput-object v0, Lcom/baidu/mapapi/utils/a;->i:[Ljava/lang/String;

    sget-object v0, Lcom/baidu/mapapi/utils/h;->a:[Ljava/lang/String;

    sput-object v0, Lcom/baidu/mapapi/utils/a;->j:[Ljava/lang/String;

    sget-object v0, Lcom/baidu/mapapi/utils/h;->c:[Ljava/lang/String;

    sput-object v0, Lcom/baidu/mapapi/utils/a;->k:[Ljava/lang/String;

    const-string v0, "map_pref"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "selected_sdcard"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "selected_sdcard"

    const-string v2, "/sdcard/"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/utils/a;->b:Ljava/lang/String;

    sget-object v0, Lcom/baidu/mapapi/utils/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mapapi/utils/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/baidu/mapapi/utils/a;->i:[Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/baidu/mapapi/utils/a;->i:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/baidu/mapapi/utils/a;->i:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lcom/baidu/mapapi/utils/a;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Lcom/baidu/mapapi/utils/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/baidu/mapapi/utils/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/utils/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/utils/a;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/utils/a;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/utils/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/baidu/mapapi/utils/a;->l:Ljava/lang/String;

    return-void
.end method

.method public static d()I
    .locals 1

    sget v0, Lcom/baidu/mapapi/utils/a;->f:I

    return v0
.end method

.method public static e()I
    .locals 1

    sget v0, Lcom/baidu/mapapi/utils/a;->g:I

    return v0
.end method

.method public static f()I
    .locals 1

    sget v0, Lcom/baidu/mapapi/utils/a;->h:I

    return v0
.end method

.method public static g()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/mapapi/utils/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/baidu/mapapi/utils/a;->g()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/baidu/platform/comapi/d/b;->a()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/baidu/mapapi/utils/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/utils/a;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static j()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-static {}, Lcom/baidu/mapapi/utils/a;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/baidu/mapapi/utils/a;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/BaiduMapSDK/cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object v0
.end method
