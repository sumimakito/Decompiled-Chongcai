.class public Lcom/baidu/platform/comapi/map/v;
.super Landroid/opengl/GLSurfaceView;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field static a:Lcom/baidu/platform/comapi/map/A;

.field static b:Lcom/baidu/platform/comapi/map/j;

.field public static d:I

.field private static n:Lcom/baidu/platform/comapi/map/t;

.field private static o:I


# instance fields
.field public c:Lcom/baidu/platform/comapi/map/MapRenderer;

.field e:Lcom/baidu/platform/comapi/map/y;

.field f:Lcom/baidu/platform/comapi/map/c;

.field g:Lcom/baidu/platform/comapi/map/g;

.field h:Lcom/baidu/platform/comapi/map/F;

.field i:Landroid/view/GestureDetector;

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/map/Overlay;",
            ">;"
        }
    .end annotation
.end field

.field k:Z

.field private l:Z

.field private m:Z

.field private p:I

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    sput-object v0, Lcom/baidu/platform/comapi/map/v;->a:Lcom/baidu/platform/comapi/map/A;

    sput-object v0, Lcom/baidu/platform/comapi/map/v;->b:Lcom/baidu/platform/comapi/map/j;

    sput v1, Lcom/baidu/platform/comapi/map/v;->o:I

    sput v1, Lcom/baidu/platform/comapi/map/v;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/v;->l:Z

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/v;->m:Z

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/v;->e:Lcom/baidu/platform/comapi/map/y;

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/v;->f:Lcom/baidu/platform/comapi/map/c;

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/v;->g:Lcom/baidu/platform/comapi/map/g;

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/v;->h:Lcom/baidu/platform/comapi/map/F;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/v;->i:Landroid/view/GestureDetector;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/v;->j:Ljava/util/List;

    iput v1, p0, Lcom/baidu/platform/comapi/map/v;->p:I

    iput v1, p0, Lcom/baidu/platform/comapi/map/v;->q:I

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/v;->k:Z

    return-void
.end method

.method private o()V
    .locals 7

    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "default"

    invoke-virtual {v0, v5, v5, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0, v1, v6}, Lcom/baidu/platform/comjni/map/basemap/a;->b(IZ)V

    invoke-virtual {v0, v1, v5}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    sget-object v2, Lcom/baidu/platform/comapi/map/v;->a:Lcom/baidu/platform/comapi/map/A;

    invoke-static {}, Lcom/baidu/platform/comapi/map/a;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/baidu/platform/comapi/map/A;->a(ILcom/baidu/platform/comapi/map/i;)V

    :cond_2
    const-string v1, "default"

    invoke-virtual {v0, v5, v5, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0, v1, v6}, Lcom/baidu/platform/comjni/map/basemap/a;->b(IZ)V

    invoke-virtual {v0, v1, v5}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    sget-object v2, Lcom/baidu/platform/comapi/map/v;->a:Lcom/baidu/platform/comapi/map/A;

    invoke-static {}, Lcom/baidu/platform/comapi/map/E;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/baidu/platform/comapi/map/A;->a(ILcom/baidu/platform/comapi/map/i;)V

    :cond_3
    const-string v1, "default"

    invoke-virtual {v0, v5, v5, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0, v1, v6}, Lcom/baidu/platform/comjni/map/basemap/a;->b(IZ)V

    invoke-virtual {v0, v1, v5}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    sget-object v2, Lcom/baidu/platform/comapi/map/v;->a:Lcom/baidu/platform/comapi/map/A;

    invoke-static {}, Lcom/baidu/platform/comapi/map/G;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/baidu/platform/comapi/map/A;->a(ILcom/baidu/platform/comapi/map/i;)V

    :cond_4
    const-string v1, "default"

    invoke-virtual {v0, v5, v5, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v0, v1, v6}, Lcom/baidu/platform/comjni/map/basemap/a;->b(IZ)V

    invoke-virtual {v0, v1, v5}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    sget-object v2, Lcom/baidu/platform/comapi/map/v;->a:Lcom/baidu/platform/comapi/map/A;

    invoke-static {}, Lcom/baidu/platform/comapi/map/b;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/baidu/platform/comapi/map/A;->a(ILcom/baidu/platform/comapi/map/i;)V

    :cond_5
    const-string v1, "default"

    invoke-virtual {v0, v5, v5, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {v0, v1, v6}, Lcom/baidu/platform/comjni/map/basemap/a;->b(IZ)V

    invoke-virtual {v0, v1, v5}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    sget-object v2, Lcom/baidu/platform/comapi/map/v;->a:Lcom/baidu/platform/comapi/map/A;

    invoke-static {}, Lcom/baidu/platform/comapi/map/e;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/baidu/platform/comapi/map/A;->a(ILcom/baidu/platform/comapi/map/i;)V

    :cond_6
    const-string v1, "default"

    invoke-virtual {v0, v5, v5, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {v0, v1, v6}, Lcom/baidu/platform/comjni/map/basemap/a;->b(IZ)V

    invoke-virtual {v0, v1, v5}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    sget-object v2, Lcom/baidu/platform/comapi/map/v;->a:Lcom/baidu/platform/comapi/map/A;

    invoke-static {}, Lcom/baidu/platform/comapi/map/D;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/baidu/platform/comapi/map/A;->a(ILcom/baidu/platform/comapi/map/i;)V

    :cond_7
    const v1, 0x2bf20

    const-string v2, "itsroute"

    invoke-virtual {v0, v4, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {v0, v1, v6}, Lcom/baidu/platform/comjni/map/basemap/a;->b(IZ)V

    invoke-virtual {v0, v1, v5}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    sget-object v2, Lcom/baidu/platform/comapi/map/v;->a:Lcom/baidu/platform/comapi/map/A;

    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/baidu/platform/comapi/map/A;->a(ILcom/baidu/platform/comapi/map/i;)V

    :cond_8
    const-string v1, "default"

    invoke-virtual {v0, v5, v5, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_9

    invoke-virtual {v0, v1, v6}, Lcom/baidu/platform/comjni/map/basemap/a;->b(IZ)V

    invoke-virtual {v0, v1, v5}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    sget-object v2, Lcom/baidu/platform/comapi/map/v;->a:Lcom/baidu/platform/comapi/map/A;

    invoke-static {}, Lcom/baidu/platform/comapi/map/B;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/baidu/platform/comapi/map/A;->a(ILcom/baidu/platform/comapi/map/i;)V

    :cond_9
    const/16 v1, 0x3e8

    const-string v2, "location"

    invoke-virtual {v0, v4, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IILjava/lang/String;)I

    move-result v1

    const-string v2, "locationlayer id = %d \r\n"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-lez v1, :cond_a

    invoke-virtual {v0, v1, v6}, Lcom/baidu/platform/comjni/map/basemap/a;->b(IZ)V

    invoke-virtual {v0, v1, v6}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    sget-object v2, Lcom/baidu/platform/comapi/map/v;->a:Lcom/baidu/platform/comapi/map/A;

    invoke-static {}, Lcom/baidu/platform/comapi/map/s;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/baidu/platform/comapi/map/A;->a(ILcom/baidu/platform/comapi/map/i;)V

    :cond_a
    const/4 v1, 0x2

    const-string v2, "location"

    invoke-virtual {v0, v1, v5, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_b

    invoke-virtual {v0, v1, v5}, Lcom/baidu/platform/comjni/map/basemap/a;->b(IZ)V

    invoke-virtual {v0, v1, v5}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    sget-object v2, Lcom/baidu/platform/comapi/map/v;->a:Lcom/baidu/platform/comapi/map/A;

    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/baidu/platform/comapi/map/A;->a(ILcom/baidu/platform/comapi/map/i;)V

    :cond_b
    const-string v1, "default"

    invoke-virtual {v0, v5, v5, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_c

    invoke-virtual {v0, v1, v6}, Lcom/baidu/platform/comjni/map/basemap/a;->b(IZ)V

    invoke-virtual {v0, v1, v5}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    sget-object v2, Lcom/baidu/platform/comapi/map/v;->a:Lcom/baidu/platform/comapi/map/A;

    invoke-static {}, Lcom/baidu/platform/comapi/map/C;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/baidu/platform/comapi/map/A;->a(ILcom/baidu/platform/comapi/map/i;)V

    :cond_c
    const-string v1, "compass"

    invoke-virtual {v0, v5, v5, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_d

    sput v1, Lcom/baidu/platform/comapi/map/v;->d:I

    invoke-virtual {v0, v1, v6}, Lcom/baidu/platform/comjni/map/basemap/a;->b(IZ)V

    invoke-virtual {v0, v1, v6}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    sget-object v2, Lcom/baidu/platform/comapi/map/v;->a:Lcom/baidu/platform/comapi/map/A;

    invoke-static {}, Lcom/baidu/platform/comapi/map/d;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/baidu/platform/comapi/map/A;->a(ILcom/baidu/platform/comapi/map/i;)V

    :cond_d
    const-string v1, "logo"

    invoke-virtual {v0, v5, v5, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_e

    invoke-virtual {v0, v1, v6}, Lcom/baidu/platform/comjni/map/basemap/a;->b(IZ)V

    invoke-virtual {v0, v1, v5}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    sget-object v2, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    iput v1, v2, Lcom/baidu/platform/comapi/map/t;->c:I

    sget-object v2, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    iget-object v2, v2, Lcom/baidu/platform/comapi/map/t;->g:Ljava/util/Map;

    const-string v3, "logo"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    const-string v1, "item"

    invoke-virtual {v0, v5, v5, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_f

    invoke-virtual {v0, v1, v6}, Lcom/baidu/platform/comjni/map/basemap/a;->b(IZ)V

    invoke-virtual {v0, v1, v5}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    sget-object v2, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    iput v1, v2, Lcom/baidu/platform/comapi/map/t;->b:I

    sget-object v2, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    iget-object v2, v2, Lcom/baidu/platform/comapi/map/t;->f:Ljava/util/Map;

    const-string v3, "item"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    const-string v1, "popup"

    invoke-virtual {v0, v5, v5, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_10

    invoke-virtual {v0, v1, v6}, Lcom/baidu/platform/comjni/map/basemap/a;->b(IZ)V

    invoke-virtual {v0, v1, v5}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    sget-object v2, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    iput v1, v2, Lcom/baidu/platform/comapi/map/t;->a:I

    sget-object v2, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    iget-object v2, v2, Lcom/baidu/platform/comapi/map/t;->e:Ljava/util/Map;

    const-string v3, "popup"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const-string v1, "geometry"

    invoke-virtual {v0, v5, v5, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v1, v5}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    iput v1, v0, Lcom/baidu/platform/comapi/map/t;->d:I

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/t;->h:Ljava/util/Map;

    const-string v2, "geometry"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Lcom/baidu/platform/comapi/basestruct/b;)F
    .locals 9

    const/4 v3, 0x0

    const/high16 v1, 0x41980000    # 19.0f

    const/high16 v2, 0x41900000    # 18.0f

    const/high16 v0, 0x40400000    # 3.0f

    sget-object v4, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    iget v4, v4, Lcom/baidu/platform/comapi/basestruct/c;->a:I

    iget-object v5, p1, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    iget v5, v5, Lcom/baidu/platform/comapi/basestruct/c;->a:I

    if-eq v4, v5, :cond_0

    iget-object v4, p1, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    iget v4, v4, Lcom/baidu/platform/comapi/basestruct/c;->b:I

    iget-object v5, p1, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    iget v5, v5, Lcom/baidu/platform/comapi/basestruct/c;->b:I

    if-ne v4, v5, :cond_2

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v4, p1, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    iget v4, v4, Lcom/baidu/platform/comapi/basestruct/c;->a:I

    iget-object v5, p1, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    iget v5, v5, Lcom/baidu/platform/comapi/basestruct/c;->a:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget-object v4, p1, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    iget v4, v4, Lcom/baidu/platform/comapi/basestruct/c;->b:I

    iget-object v6, p1, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    iget v6, v6, Lcom/baidu/platform/comapi/basestruct/c;->b:I

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {}, Lcom/baidu/platform/comapi/d/c;->g()I

    invoke-static {}, Lcom/baidu/platform/comapi/d/c;->i()I

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/v;->getWidth()I

    move-result v6

    div-int/lit8 v7, v6, 0x4

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/v;->getHeight()I

    move-result v6

    div-int/lit8 v8, v6, 0x4

    if-lez v7, :cond_3

    if-gtz v8, :cond_7

    :cond_3
    move v0, v2

    goto :goto_0

    :goto_1
    if-le v2, v7, :cond_6

    shr-int/lit8 v6, v2, 0x1

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v6

    goto :goto_1

    :goto_2
    if-le v3, v8, :cond_4

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    cmpg-float v3, v2, v0

    if-ltz v3, :cond_1

    cmpl-float v0, v2, v1

    if-lez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v2, v3

    move v3, v4

    goto :goto_2

    :cond_7
    move v2, v5

    move v5, v3

    goto :goto_1
.end method

.method public a()V
    .locals 2

    const/4 v1, 0x0

    sget v0, Lcom/baidu/platform/comapi/map/v;->o:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/baidu/platform/comapi/map/v;->o:I

    sget v0, Lcom/baidu/platform/comapi/map/v;->o:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->l()V

    sput-object v1, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    sput-object v1, Lcom/baidu/platform/comapi/map/v;->a:Lcom/baidu/platform/comapi/map/A;

    sput-object v1, Lcom/baidu/platform/comapi/map/v;->b:Lcom/baidu/platform/comapi/map/j;

    :cond_0
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/v;->c:Lcom/baidu/platform/comapi/map/MapRenderer;

    return-void
.end method

.method a(II)V
    .locals 3

    iget v0, p0, Lcom/baidu/platform/comapi/map/v;->p:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget v1, p0, Lcom/baidu/platform/comapi/map/v;->q:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    sget-object v2, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v2, v0, v1}, Lcom/baidu/platform/comapi/map/t;->a(II)V

    return-void
.end method

.method public a(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    if-nez v0, :cond_1

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->a:Lcom/baidu/platform/comapi/map/A;

    if-nez v0, :cond_1

    new-instance v0, Lcom/baidu/platform/comapi/map/t;

    invoke-direct {v0, p2, p0}, Lcom/baidu/platform/comapi/map/t;-><init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/v;)V

    sput-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    new-instance v0, Lcom/baidu/platform/comapi/map/A;

    sget-object v1, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/map/A;-><init>(Lcom/baidu/platform/comapi/map/t;)V

    sput-object v0, Lcom/baidu/platform/comapi/map/v;->a:Lcom/baidu/platform/comapi/map/A;

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    sget-object v1, Lcom/baidu/platform/comapi/map/v;->a:Lcom/baidu/platform/comapi/map/A;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/platform/comapi/map/t;->a(Landroid/os/Bundle;Lcom/baidu/platform/comapi/map/A;)V

    :cond_0
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/v;->o()V

    new-instance v0, Lcom/baidu/platform/comapi/map/j;

    sget-object v1, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/map/j;-><init>(Lcom/baidu/platform/comapi/map/t;)V

    sput-object v0, Lcom/baidu/platform/comapi/map/v;->b:Lcom/baidu/platform/comapi/map/j;

    :cond_1
    sget v0, Lcom/baidu/platform/comapi/map/v;->o:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/platform/comapi/map/v;->o:I

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/map/v;)V

    new-instance v0, Lcom/baidu/platform/comapi/map/MapRenderer;

    sget-object v1, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/t;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/map/MapRenderer;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/v;->c:Lcom/baidu/platform/comapi/map/MapRenderer;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/v;->c:Lcom/baidu/platform/comapi/map/MapRenderer;

    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/v;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(Landroid/os/Bundle;)V

    :cond_2
    invoke-virtual {p0, v2}, Lcom/baidu/platform/comapi/map/v;->setLongClickable(Z)V

    invoke-virtual {p0, v2}, Lcom/baidu/platform/comapi/map/v;->setFocusable(Z)V

    return-void
.end method

.method a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Landroid/os/Message;Ljava/lang/Runnable;)V
    .locals 3

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->j()Lcom/baidu/platform/comapi/map/x;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v1

    iput v1, v0, Lcom/baidu/platform/comapi/map/x;->d:I

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v1

    iput v1, v0, Lcom/baidu/platform/comapi/map/x;->e:I

    sget-object v1, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/map/x;I)V

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/c;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/v;->f:Lcom/baidu/platform/comapi/map/c;

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/x;)V
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/map/x;)V

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/y;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/v;->e:Lcom/baidu/platform/comapi/map/y;

    return-void
.end method

.method public a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/v;->m:Z

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/v;->m:Z

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/v;->i:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/t;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/baidu/platform/comapi/map/t;
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    return-object v0
.end method

.method public b(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/v;->l:Z

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/v;->l:Z

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->b(Z)V

    :cond_0
    return-void
.end method

.method public c()I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/v;->f()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/j;

    invoke-virtual {v0, v1, v1}, Lcom/baidu/platform/comapi/map/j;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    iget v2, p0, Lcom/baidu/platform/comapi/map/v;->p:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/baidu/platform/comapi/map/v;->q:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comapi/map/j;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/v;->f()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/j;

    invoke-virtual {v0, v1, v1}, Lcom/baidu/platform/comapi/map/j;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    iget v2, p0, Lcom/baidu/platform/comapi/map/v;->p:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/baidu/platform/comapi/map/v;->q:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comapi/map/j;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v0

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/map/Overlay;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/v;->j:Ljava/util/List;

    return-object v0
.end method

.method public f()Lcom/baidu/platform/comapi/map/Projection;
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->b:Lcom/baidu/platform/comapi/map/j;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/v;->m:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/v;->l:Z

    return v0
.end method

.method i()D
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/v;->k()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public j()Lcom/baidu/platform/comapi/basestruct/GeoPoint;
    .locals 3

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->j()Lcom/baidu/platform/comapi/map/x;

    move-result-object v0

    new-instance v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    iget v2, v0, Lcom/baidu/platform/comapi/map/x;->e:I

    iget v0, v0, Lcom/baidu/platform/comapi/map/x;->d:I

    invoke-direct {v1, v2, v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    return-object v1
.end method

.method public k()F
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->k()F

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->j()Lcom/baidu/platform/comapi/map/x;

    move-result-object v0

    iget v0, v0, Lcom/baidu/platform/comapi/map/x;->b:I

    return v0
.end method

.method public m()I
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->j()Lcom/baidu/platform/comapi/map/x;

    move-result-object v0

    iget v0, v0, Lcom/baidu/platform/comapi/map/x;->c:I

    return v0
.end method

.method public n()Lcom/baidu/platform/comapi/map/x;
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->j()Lcom/baidu/platform/comapi/map/x;

    move-result-object v0

    return-object v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/platform/comapi/map/t;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v3, 0x13

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1d

    if-ne p1, v2, :cond_2

    :cond_0
    sget-object v2, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    const/16 v3, 0x12

    invoke-virtual {v2, v1, v3, v0}, Lcom/baidu/platform/comapi/map/t;->a(III)I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eq p1, v3, :cond_3

    const/16 v2, 0x33

    if-ne p1, v2, :cond_4

    :cond_3
    sget-object v2, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v2, v1, v3, v0}, Lcom/baidu/platform/comapi/map/t;->a(III)I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_4
    const/16 v2, 0x14

    if-eq p1, v2, :cond_5

    const/16 v2, 0x2f

    if-ne p1, v2, :cond_6

    :cond_5
    sget-object v2, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    const/16 v3, 0x11

    invoke-virtual {v2, v1, v3, v0}, Lcom/baidu/platform/comapi/map/t;->a(III)I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_6
    const/16 v2, 0x16

    if-eq p1, v2, :cond_7

    const/16 v2, 0x20

    if-ne p1, v2, :cond_1

    :cond_7
    sget-object v2, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    const/16 v3, 0x10

    invoke-virtual {v2, v1, v3, v0}, Lcom/baidu/platform/comapi/map/t;->a(III)I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/a;->d()V

    :cond_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/map/v;)V

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/a;->f()V

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/a;->e()V

    :cond_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    const/4 v2, 0x0

    sput p3, Lcom/baidu/platform/comapi/map/MapRenderer;->a:I

    sput p4, Lcom/baidu/platform/comapi/map/MapRenderer;->b:I

    iput p3, p0, Lcom/baidu/platform/comapi/map/v;->p:I

    iput p4, p0, Lcom/baidu/platform/comapi/map/v;->q:I

    sput v2, Lcom/baidu/platform/comapi/map/MapRenderer;->c:I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/v;->n()Lcom/baidu/platform/comapi/map/x;

    move-result-object v0

    iget-object v1, v0, Lcom/baidu/platform/comapi/map/x;->f:Lcom/baidu/platform/comapi/map/x$b;

    iput v2, v1, Lcom/baidu/platform/comapi/map/x$b;->a:I

    iget-object v1, v0, Lcom/baidu/platform/comapi/map/x;->f:Lcom/baidu/platform/comapi/map/x$b;

    iput v2, v1, Lcom/baidu/platform/comapi/map/x$b;->c:I

    iget-object v1, v0, Lcom/baidu/platform/comapi/map/x;->f:Lcom/baidu/platform/comapi/map/x$b;

    iput p4, v1, Lcom/baidu/platform/comapi/map/x$b;->d:I

    iget-object v1, v0, Lcom/baidu/platform/comapi/map/x;->f:Lcom/baidu/platform/comapi/map/x$b;

    iput p3, v1, Lcom/baidu/platform/comapi/map/x$b;->b:I

    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/v;->a(Lcom/baidu/platform/comapi/map/x;)V

    sget-object v0, Lcom/baidu/platform/comapi/map/v;->n:Lcom/baidu/platform/comapi/map/t;

    iget v1, p0, Lcom/baidu/platform/comapi/map/v;->p:I

    iget v2, p0, Lcom/baidu/platform/comapi/map/v;->q:I

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/map/t;->d(II)V

    return-void
.end method
