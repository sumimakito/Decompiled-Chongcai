.class public Lcom/baidu/platform/comapi/map/x;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platform/comapi/map/x$b;,
        Lcom/baidu/platform/comapi/map/x$a;
    }
.end annotation


# instance fields
.field public a:F

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Lcom/baidu/platform/comapi/map/x$b;

.field public g:Lcom/baidu/platform/comapi/map/x$a;

.field public h:J

.field public i:J

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/baidu/platform/comapi/map/x;->a:F

    iput v1, p0, Lcom/baidu/platform/comapi/map/x;->b:I

    iput v1, p0, Lcom/baidu/platform/comapi/map/x;->c:I

    iput v1, p0, Lcom/baidu/platform/comapi/map/x;->d:I

    iput v1, p0, Lcom/baidu/platform/comapi/map/x;->e:I

    iput-wide v2, p0, Lcom/baidu/platform/comapi/map/x;->h:J

    iput-wide v2, p0, Lcom/baidu/platform/comapi/map/x;->i:J

    new-instance v0, Lcom/baidu/platform/comapi/map/x$b;

    invoke-direct {v0, p0}, Lcom/baidu/platform/comapi/map/x$b;-><init>(Lcom/baidu/platform/comapi/map/x;)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/x;->f:Lcom/baidu/platform/comapi/map/x$b;

    new-instance v0, Lcom/baidu/platform/comapi/map/x$a;

    invoke-direct {v0, p0}, Lcom/baidu/platform/comapi/map/x$a;-><init>(Lcom/baidu/platform/comapi/map/x;)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/x;->j:Z

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
    check-cast p1, Lcom/baidu/platform/comapi/map/x;

    iget v2, p0, Lcom/baidu/platform/comapi/map/x;->d:I

    iget v3, p1, Lcom/baidu/platform/comapi/map/x;->d:I

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/baidu/platform/comapi/map/x;->e:I

    iget v3, p1, Lcom/baidu/platform/comapi/map/x;->e:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lcom/baidu/platform/comapi/map/x;->j:Z

    iget-boolean v3, p1, Lcom/baidu/platform/comapi/map/x;->j:Z

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/map/x$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/baidu/platform/comapi/map/x;->a:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/baidu/platform/comapi/map/x;->a:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget v2, p0, Lcom/baidu/platform/comapi/map/x;->c:I

    iget v3, p1, Lcom/baidu/platform/comapi/map/x;->c:I

    if-eq v2, v3, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget v2, p0, Lcom/baidu/platform/comapi/map/x;->b:I

    iget v3, p1, Lcom/baidu/platform/comapi/map/x;->b:I

    if-eq v2, v3, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget-wide v2, p0, Lcom/baidu/platform/comapi/map/x;->i:J

    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/x;->i:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget-wide v2, p0, Lcom/baidu/platform/comapi/map/x;->h:J

    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/x;->h:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/x;->f:Lcom/baidu/platform/comapi/map/x$b;

    if-nez v2, :cond_d

    iget-object v2, p1, Lcom/baidu/platform/comapi/map/x;->f:Lcom/baidu/platform/comapi/map/x$b;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_d
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/x;->f:Lcom/baidu/platform/comapi/map/x$b;

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->f:Lcom/baidu/platform/comapi/map/x$b;

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/map/x$b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/baidu/platform/comapi/map/x;->d:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/baidu/platform/comapi/map/x;->e:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/x;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/baidu/platform/comapi/map/x;->a:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/baidu/platform/comapi/map/x;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/baidu/platform/comapi/map/x;->b:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/x;->f:Lcom/baidu/platform/comapi/map/x$b;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/x$a;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/x;->f:Lcom/baidu/platform/comapi/map/x$b;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/x$b;->hashCode()I

    move-result v1

    goto :goto_2
.end method
