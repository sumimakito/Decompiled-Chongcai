.class public Lcom/baidu/vi/AudioRecorder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/vi/AudioRecorder$a;
    }
.end annotation


# static fields
.field private static j:Landroid/os/Handler;


# instance fields
.field private volatile a:Landroid/media/AudioRecord;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:I

.field private g:I

.field private volatile h:Z

.field private i:Ljava/lang/Object;

.field private k:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/vi/d;

    invoke-direct {v0}, Lcom/baidu/vi/d;-><init>()V

    sput-object v0, Lcom/baidu/vi/AudioRecorder;->j:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/baidu/vi/AudioRecorder;->e:Z

    iput-boolean v1, p0, Lcom/baidu/vi/AudioRecorder;->h:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/baidu/vi/AudioRecorder;->i:Ljava/lang/Object;

    new-instance v2, Lcom/baidu/vi/e;

    invoke-direct {v2, p0}, Lcom/baidu/vi/e;-><init>(Lcom/baidu/vi/AudioRecorder;)V

    iput-object v2, p0, Lcom/baidu/vi/AudioRecorder;->k:Ljava/lang/Thread;

    const/16 v2, 0x8

    if-ne p3, v2, :cond_0

    iput v4, p0, Lcom/baidu/vi/AudioRecorder;->d:I

    :goto_0
    if-ne p4, v3, :cond_1

    iput v4, p0, Lcom/baidu/vi/AudioRecorder;->c:I

    :goto_1
    if-ne p7, v0, :cond_2

    :goto_2
    iput-boolean v0, p0, Lcom/baidu/vi/AudioRecorder;->e:Z

    iput p2, p0, Lcom/baidu/vi/AudioRecorder;->b:I

    iput p5, p0, Lcom/baidu/vi/AudioRecorder;->g:I

    iput p6, p0, Lcom/baidu/vi/AudioRecorder;->f:I

    return-void

    :cond_0
    iput v3, p0, Lcom/baidu/vi/AudioRecorder;->d:I

    goto :goto_0

    :cond_1
    iput v3, p0, Lcom/baidu/vi/AudioRecorder;->c:I

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/baidu/vi/AudioRecorder;[BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/vi/AudioRecorder;->handleReadData([BI)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/vi/AudioRecorder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/vi/AudioRecorder;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/baidu/vi/AudioRecorder;)Landroid/media/AudioRecord;
    .locals 1

    iget-object v0, p0, Lcom/baidu/vi/AudioRecorder;->a:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/vi/AudioRecorder;)I
    .locals 1

    iget v0, p0, Lcom/baidu/vi/AudioRecorder;->f:I

    return v0
.end method

.method static synthetic d(Lcom/baidu/vi/AudioRecorder;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/vi/AudioRecorder;->handleReadError()V

    return-void
.end method

.method private static getMinBufferSize(IIII)I
    .locals 4

    const/4 v0, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v3, 0x8

    if-ne p2, v3, :cond_0

    move v3, v0

    :goto_0
    if-ne p3, v1, :cond_1

    :goto_1
    :try_start_0
    invoke-static {p1, v0, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_2

    :goto_2
    return v0

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_2
.end method

.method private handleReadData([BI)V
    .locals 4

    iget-boolean v0, p0, Lcom/baidu/vi/AudioRecorder;->e:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/baidu/vi/AudioRecorder$a;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/baidu/vi/AudioRecorder$a;-><init>(Lcom/baidu/vi/AudioRecorder;Lcom/baidu/vi/AudioRecorder;[BI)V

    sget-object v1, Lcom/baidu/vi/AudioRecorder;->j:Landroid/os/Handler;

    sget-object v2, Lcom/baidu/vi/AudioRecorder;->j:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/baidu/vi/AudioRecorder;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/baidu/vi/AudioRecorder;->onReadData([BI)V

    goto :goto_0
.end method

.method private handleReadError()V
    .locals 4

    iget-boolean v0, p0, Lcom/baidu/vi/AudioRecorder;->e:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/baidu/vi/AudioRecorder$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/baidu/vi/AudioRecorder$a;-><init>(Lcom/baidu/vi/AudioRecorder;Lcom/baidu/vi/AudioRecorder;[BI)V

    sget-object v1, Lcom/baidu/vi/AudioRecorder;->j:Landroid/os/Handler;

    sget-object v2, Lcom/baidu/vi/AudioRecorder;->j:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/baidu/vi/AudioRecorder;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/vi/AudioRecorder;->onReadError()V

    goto :goto_0
.end method

.method private release()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/vi/AudioRecorder;->a:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/vi/AudioRecorder;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/vi/AudioRecorder;->a:Landroid/media/AudioRecord;

    return-void
.end method

.method private setWay(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/baidu/vi/AudioRecorder;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private start()I
    .locals 8

    const/4 v7, 0x7

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/baidu/vi/AudioRecorder;->a:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/vi/AudioRecorder;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    iget-object v0, p0, Lcom/baidu/vi/AudioRecorder;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/vi/AudioRecorder;->a:Landroid/media/AudioRecord;

    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lt v6, v7, :cond_1

    new-instance v0, Landroid/media/AudioRecord;

    iget v2, p0, Lcom/baidu/vi/AudioRecorder;->b:I

    iget v3, p0, Lcom/baidu/vi/AudioRecorder;->c:I

    iget v4, p0, Lcom/baidu/vi/AudioRecorder;->d:I

    iget v5, p0, Lcom/baidu/vi/AudioRecorder;->g:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/baidu/vi/AudioRecorder;->a:Landroid/media/AudioRecord;

    :cond_1
    if-lt v6, v7, :cond_2

    iget-object v0, p0, Lcom/baidu/vi/AudioRecorder;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Landroid/media/AudioRecord;

    iget v2, p0, Lcom/baidu/vi/AudioRecorder;->b:I

    iget v3, p0, Lcom/baidu/vi/AudioRecorder;->c:I

    iget v4, p0, Lcom/baidu/vi/AudioRecorder;->d:I

    iget v5, p0, Lcom/baidu/vi/AudioRecorder;->g:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/baidu/vi/AudioRecorder;->a:Landroid/media/AudioRecord;

    :cond_3
    iget-object v0, p0, Lcom/baidu/vi/AudioRecorder;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/vi/AudioRecorder;->a:Landroid/media/AudioRecord;

    if-nez v0, :cond_5

    :cond_4
    :goto_0
    return v1

    :cond_5
    iput-boolean v1, p0, Lcom/baidu/vi/AudioRecorder;->h:Z

    iget-object v0, p0, Lcom/baidu/vi/AudioRecorder;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/vi/AudioRecorder;->h:Z

    iget-object v0, p0, Lcom/baidu/vi/AudioRecorder;->a:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/vi/AudioRecorder;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :cond_0
    return-void
.end method


# virtual methods
.method native onReadData([BI)V
.end method

.method native onReadError()V
.end method
