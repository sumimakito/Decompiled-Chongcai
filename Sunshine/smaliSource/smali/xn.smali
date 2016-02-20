.class public final Lxn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lxp;

.field final synthetic b:Lxm;


# direct methods
.method public constructor <init>(Lxm;Lxp;)V
    .locals 0

    iput-object p1, p0, Lxn;->b:Lxm;

    iput-object p2, p0, Lxn;->a:Lxp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lxn;->b:Lxm;

    iget-object v0, v0, Lxm;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->o:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    iget-object v1, p0, Lxn;->a:Lxp;

    invoke-virtual {v1}, Lxp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lxn;->b:Lxm;

    invoke-virtual {v1}, Lxm;->a()V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lxn;->b:Lxm;

    iget-object v0, v0, Lxm;->c:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lxn;->a:Lxp;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lxn;->b:Lxm;

    iget-object v0, v0, Lxm;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lxn;->a:Lxp;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
