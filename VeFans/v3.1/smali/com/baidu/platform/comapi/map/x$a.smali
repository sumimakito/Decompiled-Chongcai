.class public Lcom/baidu/platform/comapi/map/x$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platform/comapi/map/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:Lcom/baidu/platform/comapi/basestruct/c;

.field public f:Lcom/baidu/platform/comapi/basestruct/c;

.field public g:Lcom/baidu/platform/comapi/basestruct/c;

.field public h:Lcom/baidu/platform/comapi/basestruct/c;

.field final synthetic i:Lcom/baidu/platform/comapi/map/x;


# direct methods
.method public constructor <init>(Lcom/baidu/platform/comapi/map/x;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/x$a;->i:Lcom/baidu/platform/comapi/map/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/baidu/platform/comapi/map/x$a;->a:J

    iput-wide v2, p0, Lcom/baidu/platform/comapi/map/x$a;->b:J

    iput-wide v2, p0, Lcom/baidu/platform/comapi/map/x$a;->c:J

    iput-wide v2, p0, Lcom/baidu/platform/comapi/map/x$a;->d:J

    new-instance v0, Lcom/baidu/platform/comapi/basestruct/c;

    invoke-direct {v0, v1, v1}, Lcom/baidu/platform/comapi/basestruct/c;-><init>(II)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/x$a;->e:Lcom/baidu/platform/comapi/basestruct/c;

    new-instance v0, Lcom/baidu/platform/comapi/basestruct/c;

    invoke-direct {v0, v1, v1}, Lcom/baidu/platform/comapi/basestruct/c;-><init>(II)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/x$a;->f:Lcom/baidu/platform/comapi/basestruct/c;

    new-instance v0, Lcom/baidu/platform/comapi/basestruct/c;

    invoke-direct {v0, v1, v1}, Lcom/baidu/platform/comapi/basestruct/c;-><init>(II)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/x$a;->g:Lcom/baidu/platform/comapi/basestruct/c;

    new-instance v0, Lcom/baidu/platform/comapi/basestruct/c;

    invoke-direct {v0, v1, v1}, Lcom/baidu/platform/comapi/basestruct/c;-><init>(II)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/x$a;->h:Lcom/baidu/platform/comapi/basestruct/c;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/baidu/platform/comapi/map/x$a;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/baidu/platform/comapi/map/x$a;

    iget-wide v2, p0, Lcom/baidu/platform/comapi/map/x$a;->d:J

    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/x$a;->d:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-wide v2, p0, Lcom/baidu/platform/comapi/map/x$a;->a:J

    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/x$a;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-wide v2, p0, Lcom/baidu/platform/comapi/map/x$a;->b:J

    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/x$a;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-wide v2, p0, Lcom/baidu/platform/comapi/map/x$a;->c:J

    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/x$a;->c:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    const/16 v5, 0x20

    iget-wide v0, p0, Lcom/baidu/platform/comapi/map/x$a;->d:J

    iget-wide v2, p0, Lcom/baidu/platform/comapi/map/x$a;->d:J

    ushr-long/2addr v2, v5

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/baidu/platform/comapi/map/x$a;->a:J

    iget-wide v3, p0, Lcom/baidu/platform/comapi/map/x$a;->a:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/baidu/platform/comapi/map/x$a;->b:J

    iget-wide v3, p0, Lcom/baidu/platform/comapi/map/x$a;->b:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/baidu/platform/comapi/map/x$a;->c:J

    iget-wide v3, p0, Lcom/baidu/platform/comapi/map/x$a;->c:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method
