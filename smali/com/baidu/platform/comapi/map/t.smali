.class public Lcom/baidu/platform/comapi/map/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platform/comapi/map/t$a;
    }
.end annotation


# static fields
.field private static A:Z

.field private static B:Lcom/baidu/platform/comapi/map/t$a;

.field private static C:I

.field private static D:I

.field private static E:Z

.field private static F:Z

.field private static G:Z

.field private static H:Landroid/view/VelocityTracker;

.field private static I:J

.field private static J:J

.field private static K:J

.field private static L:J

.field private static M:I

.field private static N:F

.field private static O:F

.field private static P:Z

.field private static Q:J

.field private static R:J

.field private static T:J

.field private static U:J

.field private static V:J

.field public static i:Z

.field private static final p:I

.field private static v:I

.field private static w:J

.field private static x:I

.field private static y:I

.field private static z:Z


# instance fields
.field private S:Z

.field private W:Z

.field private X:Z

.field private Y:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

.field private Z:Z

.field public a:I

.field private aa:I

.field private ab:I

.field private ac:Z

.field private ad:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/baidu/platform/comjni/map/basemap/a;

.field private k:Landroid/content/Context;

.field private l:Lcom/baidu/platform/comapi/map/v;

.field private m:I

.field private n:Landroid/os/Bundle;

.field private o:Landroid/os/Handler;

.field private q:Z

.field private r:Z

.field private s:I

.field private t:I

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    sput v0, Lcom/baidu/platform/comapi/map/t;->p:I

    new-instance v0, Lcom/baidu/platform/comapi/map/t$a;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/t$a;-><init>()V

    sput-object v0, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    const/4 v0, 0x0

    sput v0, Lcom/baidu/platform/comapi/map/t;->M:I

    const-wide/16 v0, 0x190

    sput-wide v0, Lcom/baidu/platform/comapi/map/t;->T:J

    const-wide/16 v0, 0x1f4

    sput-wide v0, Lcom/baidu/platform/comapi/map/t;->U:J

    const-wide/16 v0, 0x78

    sput-wide v0, Lcom/baidu/platform/comapi/map/t;->V:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/platform/comapi/map/t;->i:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/v;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/baidu/platform/comapi/map/t;->j:Lcom/baidu/platform/comjni/map/basemap/a;

    iput-object v2, p0, Lcom/baidu/platform/comapi/map/t;->k:Landroid/content/Context;

    iput-object v2, p0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    iput v1, p0, Lcom/baidu/platform/comapi/map/t;->m:I

    iput v1, p0, Lcom/baidu/platform/comapi/map/t;->a:I

    iput v1, p0, Lcom/baidu/platform/comapi/map/t;->b:I

    iput v1, p0, Lcom/baidu/platform/comapi/map/t;->c:I

    iput v1, p0, Lcom/baidu/platform/comapi/map/t;->d:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/t;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/t;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/t;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/t;->h:Ljava/util/Map;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    iput-object v2, p0, Lcom/baidu/platform/comapi/map/t;->o:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/baidu/platform/comapi/map/t;->q:Z

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/t;->r:Z

    const/16 v0, 0x14

    iput v0, p0, Lcom/baidu/platform/comapi/map/t;->u:I

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/t;->S:Z

    iput-boolean v3, p0, Lcom/baidu/platform/comapi/map/t;->W:Z

    iput-boolean v3, p0, Lcom/baidu/platform/comapi/map/t;->X:Z

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/t;->ac:Z

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/t;->ad:Z

    iput-object p2, p0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/map/v;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/baidu/platform/comapi/map/t;->s:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/baidu/platform/comapi/map/t;->t:I

    new-instance v0, Lcom/baidu/platform/comapi/map/u;

    invoke-direct {v0, p0}, Lcom/baidu/platform/comapi/map/u;-><init>(Lcom/baidu/platform/comapi/map/t;)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/t;->o:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/t;->o()V

    return-void
.end method

.method public static a(IIII)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/a;->b(IIII)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/baidu/platform/comapi/map/t;)Lcom/baidu/platform/comapi/map/v;
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    return-object v0
.end method

.method private b(III)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, ""

    const/4 v1, -0x1

    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/platform/comapi/map/t;->f:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v5, p0, Lcom/baidu/platform/comapi/map/t;->j:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {v5, v0, p2, p3, p3}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IIII)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "dataset"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v5, "itemindex"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v2

    :goto_1
    move v3, v1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/v;->e:Lcom/baidu/platform/comapi/map/y;

    new-instance v2, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-direct {v2, p2, p3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    invoke-interface {v0, v1, v2}, Lcom/baidu/platform/comapi/map/y;->a(ILcom/baidu/platform/comapi/basestruct/GeoPoint;)V

    :cond_1
    return v3

    :cond_2
    move v0, v1

    move v1, v3

    goto :goto_1
.end method

.method static synthetic b(Lcom/baidu/platform/comapi/map/t;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/t;->ac:Z

    return v0
.end method

.method static synthetic c(Lcom/baidu/platform/comapi/map/t;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/t;->m()V

    return-void
.end method

.method static synthetic d(Lcom/baidu/platform/comapi/map/t;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/t;->ad:Z

    return v0
.end method

.method public static e()V
    .locals 4

    const/4 v3, 0x0

    sput v3, Lcom/baidu/platform/comapi/map/t;->v:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/platform/comapi/map/t;->w:J

    sput v3, Lcom/baidu/platform/comapi/map/t;->x:I

    sput v3, Lcom/baidu/platform/comapi/map/t;->y:I

    sput-boolean v3, Lcom/baidu/platform/comapi/map/t;->z:Z

    sput-boolean v3, Lcom/baidu/platform/comapi/map/t;->A:Z

    sget-object v0, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iput-boolean v3, v0, Lcom/baidu/platform/comapi/map/t$a;->j:Z

    sget-object v0, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/baidu/platform/comapi/map/t$a;->m:D

    sput v3, Lcom/baidu/platform/comapi/map/t;->D:I

    sput v3, Lcom/baidu/platform/comapi/map/t;->C:I

    sput-boolean v3, Lcom/baidu/platform/comapi/map/t;->E:Z

    sput-boolean v3, Lcom/baidu/platform/comapi/map/t;->F:Z

    sput-boolean v3, Lcom/baidu/platform/comapi/map/t;->G:Z

    return-void
.end method

.method private e(Landroid/view/MotionEvent;)V
    .locals 5

    sget-object v0, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget-boolean v0, v0, Lcom/baidu/platform/comapi/map/t$a;->j:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    sput-wide v0, Lcom/baidu/platform/comapi/map/t;->R:J

    sget-wide v0, Lcom/baidu/platform/comapi/map/t;->R:J

    sget-wide v2, Lcom/baidu/platform/comapi/map/t;->Q:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/baidu/platform/comapi/map/t;->T:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sget v1, Lcom/baidu/platform/comapi/map/t;->N:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget-wide v1, Lcom/baidu/platform/comapi/map/t;->V:J

    long-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sget v1, Lcom/baidu/platform/comapi/map/t;->O:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget-wide v1, Lcom/baidu/platform/comapi/map/t;->V:J

    long-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/t;->d(Landroid/view/MotionEvent;)V

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/platform/comapi/map/t;->Q:J

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sput v0, Lcom/baidu/platform/comapi/map/t;->N:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sput v0, Lcom/baidu/platform/comapi/map/t;->O:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    shl-int/lit8 v4, v1, 0x10

    or-int/2addr v4, v0

    invoke-virtual {p0, v2, v3, v4}, Lcom/baidu/platform/comapi/map/t;->a(III)I

    invoke-virtual {p0, v0, v1}, Lcom/baidu/platform/comapi/map/t;->f(II)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/platform/comapi/map/t;->P:Z

    goto :goto_0

    :cond_1
    sget-wide v0, Lcom/baidu/platform/comapi/map/t;->R:J

    sput-wide v0, Lcom/baidu/platform/comapi/map/t;->Q:J

    goto :goto_1

    :cond_2
    sget-wide v0, Lcom/baidu/platform/comapi/map/t;->R:J

    sput-wide v0, Lcom/baidu/platform/comapi/map/t;->Q:J

    goto :goto_1
.end method

.method static synthetic e(Lcom/baidu/platform/comapi/map/t;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/t;->n()V

    return-void
.end method

.method private g(II)Z
    .locals 20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/platform/comapi/map/t;->u:I

    int-to-double v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/t;->c()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/platform/comapi/map/t;->j:Lcom/baidu/platform/comjni/map/basemap/a;

    const/4 v4, -0x1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IIII)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v2, "dataset"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v8, "ty"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const/16 v8, 0x16

    if-ne v12, v8, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    :goto_0
    const/4 v3, 0x0

    move v9, v3

    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v9, v3, :cond_13

    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v13, "ty"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const/16 v14, 0x19

    if-ne v13, v14, :cond_6

    :goto_2
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_1

    :cond_0
    const/4 v8, 0x3

    if-eq v12, v8, :cond_1

    const/16 v8, 0xd

    if-eq v12, v8, :cond_1

    const/16 v8, 0xe

    if-eq v12, v8, :cond_1

    const/16 v8, 0x10

    if-eq v12, v8, :cond_1

    const/16 v8, 0xf

    if-eq v12, v8, :cond_1

    const/4 v8, 0x4

    if-eq v12, v8, :cond_1

    const/16 v8, 0x1c

    if-ne v12, v8, :cond_2

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    goto :goto_0

    :cond_2
    const/16 v8, 0x8

    if-eq v12, v8, :cond_3

    const/4 v8, 0x1

    if-eq v12, v8, :cond_3

    const/4 v8, 0x2

    if-ne v12, v8, :cond_4

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    goto :goto_0

    :cond_4
    const/4 v8, 0x6

    if-ne v12, v8, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    goto :goto_0

    :cond_5
    const/16 v8, 0x18

    if-ne v12, v8, :cond_14

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    goto :goto_0

    :cond_6
    new-instance v14, Lcom/baidu/platform/comapi/map/w;

    invoke-direct {v14}, Lcom/baidu/platform/comapi/map/w;-><init>()V

    const-string v15, "ud"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    const-string v15, "ud"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/baidu/platform/comapi/map/w;->a:Ljava/lang/String;

    :goto_3
    const-string v15, "tx"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/baidu/platform/comapi/map/w;->c:Ljava/lang/String;

    const-string v15, "in"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    const-string v15, "in"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v14, Lcom/baidu/platform/comapi/map/w;->b:I

    :goto_4
    const-string v15, "geo"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    const-string v15, "geo"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    const-string v17, "strkey"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Lcom/baidu/platform/comjni/tools/JNITools;->TransNodeStr2Pt(Ljava/lang/Object;)V

    new-instance v15, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    const-string v17, "pty"

    invoke-virtual/range {v16 .. v17}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    const-string v18, "ptx"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    iput-object v15, v14, Lcom/baidu/platform/comapi/map/w;->d:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    :cond_7
    iput v13, v14, Lcom/baidu/platform/comapi/map/w;->e:I

    const-string v13, "of"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v13, "of"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v14, Lcom/baidu/platform/comapi/map/w;->f:I

    :cond_8
    const/16 v13, 0x16

    if-ne v12, v13, :cond_c

    new-instance v13, Lcom/baidu/platform/comapi/map/k;

    invoke-direct {v13}, Lcom/baidu/platform/comapi/map/k;-><init>()V

    iput-object v14, v13, Lcom/baidu/platform/comapi/map/k;->a:Lcom/baidu/platform/comapi/map/w;

    const-string v14, "iest"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v13, Lcom/baidu/platform/comapi/map/k;->b:J

    const-string v14, "ieend"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v13, Lcom/baidu/platform/comapi/map/k;->c:J

    const-string v14, "iedetail"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/baidu/platform/comapi/map/k;->d:Ljava/lang/String;

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_9
    const/4 v2, 0x0

    :goto_5
    return v2

    :cond_a
    :try_start_1
    const-string v15, ""

    iput-object v15, v14, Lcom/baidu/platform/comapi/map/w;->a:Ljava/lang/String;

    goto/16 :goto_3

    :cond_b
    const/4 v15, 0x0

    iput v15, v14, Lcom/baidu/platform/comapi/map/w;->b:I

    goto/16 :goto_4

    :cond_c
    const/4 v3, 0x3

    if-eq v12, v3, :cond_d

    const/16 v3, 0xd

    if-eq v12, v3, :cond_d

    const/16 v3, 0xe

    if-eq v12, v3, :cond_d

    const/16 v3, 0x10

    if-eq v12, v3, :cond_d

    const/16 v3, 0xf

    if-eq v12, v3, :cond_d

    const/4 v3, 0x4

    if-eq v12, v3, :cond_d

    const/16 v3, 0x1c

    if-ne v12, v3, :cond_e

    :cond_d
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_e
    const/16 v3, 0x8

    if-eq v12, v3, :cond_f

    const/4 v3, 0x1

    if-eq v12, v3, :cond_f

    const/4 v3, 0x2

    if-ne v12, v3, :cond_10

    :cond_f
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_10
    const/4 v3, 0x6

    if-ne v12, v3, :cond_11

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_11
    const/16 v3, 0x18

    if-ne v12, v3, :cond_12

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_12
    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_13
    packed-switch v12, :pswitch_data_0

    :goto_6
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_5

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    iget-object v2, v2, Lcom/baidu/platform/comapi/map/v;->e:Lcom/baidu/platform/comapi/map/y;

    invoke-interface {v2, v10}, Lcom/baidu/platform/comapi/map/y;->b(Ljava/util/List;)V

    goto :goto_6

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    iget-object v2, v2, Lcom/baidu/platform/comapi/map/v;->e:Lcom/baidu/platform/comapi/map/y;

    invoke-interface {v2, v6}, Lcom/baidu/platform/comapi/map/y;->a(Ljava/util/List;)V

    goto :goto_6

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    iget-object v2, v2, Lcom/baidu/platform/comapi/map/v;->e:Lcom/baidu/platform/comapi/map/y;

    invoke-interface {v2, v8}, Lcom/baidu/platform/comapi/map/y;->c(Ljava/util/List;)V

    goto :goto_6

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    iget-object v2, v2, Lcom/baidu/platform/comapi/map/v;->e:Lcom/baidu/platform/comapi/map/y;

    invoke-interface {v2, v10}, Lcom/baidu/platform/comapi/map/y;->b(Ljava/util/List;)V

    goto :goto_6

    :pswitch_5
    const-string v3, "layerid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/v;->e:Lcom/baidu/platform/comapi/map/y;

    invoke-interface {v3, v5, v2}, Lcom/baidu/platform/comapi/map/y;->a(Ljava/util/List;I)V

    goto :goto_6

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    iget-object v2, v2, Lcom/baidu/platform/comapi/map/v;->e:Lcom/baidu/platform/comapi/map/y;

    invoke-interface {v2, v4}, Lcom/baidu/platform/comapi/map/y;->b(Ljava/util/List;)V

    goto :goto_6

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    iget-object v2, v2, Lcom/baidu/platform/comapi/map/v;->e:Lcom/baidu/platform/comapi/map/y;

    invoke-interface {v2, v7}, Lcom/baidu/platform/comapi/map/y;->d(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :cond_14
    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private m()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/t;->Z:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/v;->f()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/t;->Y:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-interface {v1, v2, v0}, Lcom/baidu/platform/comapi/map/Projection;->toPixels(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/baidu/platform/comapi/map/t;->aa:I

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/baidu/platform/comapi/map/t;->ab:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/baidu/platform/comapi/map/t;->e(II)V

    iput-boolean v3, p0, Lcom/baidu/platform/comapi/map/t;->Z:Z

    :cond_0
    iput-boolean v3, p0, Lcom/baidu/platform/comapi/map/t;->ac:Z

    iput v3, p0, Lcom/baidu/platform/comapi/map/t;->aa:I

    iput v3, p0, Lcom/baidu/platform/comapi/map/t;->ab:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/t;->Y:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    return-void
.end method

.method private n()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/t;->Z:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/v;->f()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/t;->Y:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-interface {v1, v2, v0}, Lcom/baidu/platform/comapi/map/Projection;->toPixels(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/baidu/platform/comapi/map/t;->aa:I

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/baidu/platform/comapi/map/t;->ab:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/baidu/platform/comapi/map/t;->e(II)V

    iput-boolean v3, p0, Lcom/baidu/platform/comapi/map/t;->Z:Z

    :cond_0
    iput-boolean v3, p0, Lcom/baidu/platform/comapi/map/t;->ad:Z

    iput v3, p0, Lcom/baidu/platform/comapi/map/t;->aa:I

    iput v3, p0, Lcom/baidu/platform/comapi/map/t;->ab:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/t;->Y:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    return-void
.end method

.method private o()V
    .locals 2

    const/16 v0, 0xfa0

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->o:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/engine/a;->a(ILandroid/os/Handler;)V

    const/16 v0, 0x27

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->o:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/engine/a;->a(ILandroid/os/Handler;)V

    const/16 v0, 0x200

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->o:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/engine/a;->a(ILandroid/os/Handler;)V

    return-void
.end method

.method private p()V
    .locals 2

    const/16 v0, 0xfa0

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->o:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/engine/a;->b(ILandroid/os/Handler;)V

    const/16 v0, 0x27

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->o:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/engine/a;->b(ILandroid/os/Handler;)V

    const/16 v0, 0x200

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->o:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/engine/a;->b(ILandroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/baidu/platform/comapi/map/t;->m:I

    return v0
.end method

.method public a(III)I
    .locals 1

    iget v0, p0, Lcom/baidu/platform/comapi/map/t;->m:I

    invoke-static {v0, p1, p2, p3}, Lcom/baidu/platform/comapi/map/t;->a(IIII)I

    move-result v0

    return v0
.end method

.method a(II)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->j:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/a;->c(II)V

    return-void
.end method

.method public a(Landroid/os/Bundle;Lcom/baidu/platform/comapi/map/A;)V
    .locals 13

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IllegalArgument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->j:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-direct {v0}, Lcom/baidu/platform/comjni/map/basemap/a;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/t;->j:Lcom/baidu/platform/comjni/map/basemap/a;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->j:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/a;->a()Z

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->j:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/a;->c()I

    move-result v0

    iput v0, p0, Lcom/baidu/platform/comapi/map/t;->m:I

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->j:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {v0, p2}, Lcom/baidu/platform/comjni/map/basemap/a;->a(Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;)Z

    :cond_2
    const/4 v0, 0x0

    invoke-static {}, Lcom/baidu/platform/comapi/d/c;->m()I

    move-result v1

    const/16 v2, 0xb4

    if-lt v1, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-static {}, Lcom/baidu/platform/comapi/d/c;->m()I

    move-result v1

    const/16 v2, 0xa0

    if-ge v1, v2, :cond_5

    const/16 v1, 0x12

    iput v1, p0, Lcom/baidu/platform/comapi/map/t;->u:I

    :goto_0
    const-string v1, "modulePath"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "appSdcardPath"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "appCachePath"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "appSecondCachePath"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "mapTmpMax"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v1, "domTmpMax"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v1, "itsTmpMax"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cfg/h/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/cfg/h/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/vmp/h/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "/vmp/h/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "/tmp/"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "/tmp/"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cfg/l/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/cfg/l/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/vmp/l/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/vmp/l/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->j:Lcom/baidu/platform/comjni/map/basemap/a;

    iget v7, p0, Lcom/baidu/platform/comapi/map/t;->s:I

    iget v8, p0, Lcom/baidu/platform/comapi/map/t;->t:I

    invoke-static {}, Lcom/baidu/platform/comapi/d/c;->m()I

    move-result v9

    invoke-virtual/range {v0 .. v12}, Lcom/baidu/platform/comjni/map/basemap/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)Z

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->j:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/a;->e()V

    return-void

    :cond_5
    invoke-static {}, Lcom/baidu/platform/comapi/d/c;->m()I

    move-result v1

    const/16 v2, 0xf0

    if-ge v1, v2, :cond_6

    const/16 v1, 0x19

    iput v1, p0, Lcom/baidu/platform/comapi/map/t;->u:I

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/baidu/platform/comapi/d/c;->m()I

    move-result v1

    const/16 v2, 0x140

    if-ge v1, v2, :cond_7

    const/16 v1, 0x25

    iput v1, p0, Lcom/baidu/platform/comapi/map/t;->u:I

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x32

    iput v1, p0, Lcom/baidu/platform/comapi/map/t;->u:I

    goto/16 :goto_0
.end method

.method public a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0, p1, v1, v1}, Lcom/baidu/platform/comapi/map/v;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Landroid/os/Message;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/baidu/platform/comapi/map/v;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Landroid/os/Message;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/v;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/map/v;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/x;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->j:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "level"

    iget v3, p1, Lcom/baidu/platform/comapi/map/x;->a:F

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "rotation"

    iget v3, p1, Lcom/baidu/platform/comapi/map/x;->b:I

    int-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "overlooking"

    iget v3, p1, Lcom/baidu/platform/comapi/map/x;->c:I

    int-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "centerptx"

    iget v3, p1, Lcom/baidu/platform/comapi/map/x;->d:I

    int-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "centerpty"

    iget v3, p1, Lcom/baidu/platform/comapi/map/x;->e:I

    int-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "left"

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->f:Lcom/baidu/platform/comapi/map/x$b;

    iget v3, v3, Lcom/baidu/platform/comapi/map/x$b;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "right"

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->f:Lcom/baidu/platform/comapi/map/x$b;

    iget v3, v3, Lcom/baidu/platform/comapi/map/x$b;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "top"

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->f:Lcom/baidu/platform/comapi/map/x$b;

    iget v3, v3, Lcom/baidu/platform/comapi/map/x$b;->c:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "bottom"

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->f:Lcom/baidu/platform/comapi/map/x$b;

    iget v3, v3, Lcom/baidu/platform/comapi/map/x$b;->d:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "lbx"

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/x$a;->e:Lcom/baidu/platform/comapi/basestruct/c;

    iget v3, v3, Lcom/baidu/platform/comapi/basestruct/c;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "lby"

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/x$a;->e:Lcom/baidu/platform/comapi/basestruct/c;

    iget v3, v3, Lcom/baidu/platform/comapi/basestruct/c;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "ltx"

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/x$a;->f:Lcom/baidu/platform/comapi/basestruct/c;

    iget v3, v3, Lcom/baidu/platform/comapi/basestruct/c;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "lty"

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/x$a;->f:Lcom/baidu/platform/comapi/basestruct/c;

    iget v3, v3, Lcom/baidu/platform/comapi/basestruct/c;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "rtx"

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/x$a;->g:Lcom/baidu/platform/comapi/basestruct/c;

    iget v3, v3, Lcom/baidu/platform/comapi/basestruct/c;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "rty"

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/x$a;->g:Lcom/baidu/platform/comapi/basestruct/c;

    iget v3, v3, Lcom/baidu/platform/comapi/basestruct/c;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "rbx"

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/x$a;->h:Lcom/baidu/platform/comapi/basestruct/c;

    iget v3, v3, Lcom/baidu/platform/comapi/basestruct/c;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "rby"

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/x$a;->h:Lcom/baidu/platform/comapi/basestruct/c;

    iget v3, v3, Lcom/baidu/platform/comapi/basestruct/c;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "yoffset"

    iget-wide v3, p1, Lcom/baidu/platform/comapi/map/x;->i:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "xoffset"

    iget-wide v3, p1, Lcom/baidu/platform/comapi/map/x;->h:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "animation"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "animatime"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "bfpp"

    iget-boolean v3, p1, Lcom/baidu/platform/comapi/map/x;->j:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->j:Lcom/baidu/platform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/baidu/platform/comapi/map/x;I)V
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->j:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "level"

    iget v3, p1, Lcom/baidu/platform/comapi/map/x;->a:F

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "rotation"

    iget v3, p1, Lcom/baidu/platform/comapi/map/x;->b:I

    int-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "overlooking"

    iget v3, p1, Lcom/baidu/platform/comapi/map/x;->c:I

    int-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "centerptx"

    iget v3, p1, Lcom/baidu/platform/comapi/map/x;->d:I

    int-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "centerpty"

    iget v3, p1, Lcom/baidu/platform/comapi/map/x;->e:I

    int-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "left"

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->f:Lcom/baidu/platform/comapi/map/x$b;

    iget v3, v3, Lcom/baidu/platform/comapi/map/x$b;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "right"

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->f:Lcom/baidu/platform/comapi/map/x$b;

    iget v3, v3, Lcom/baidu/platform/comapi/map/x$b;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "top"

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->f:Lcom/baidu/platform/comapi/map/x$b;

    iget v3, v3, Lcom/baidu/platform/comapi/map/x$b;->c:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "bottom"

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->f:Lcom/baidu/platform/comapi/map/x$b;

    iget v3, v3, Lcom/baidu/platform/comapi/map/x$b;->d:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "lbx"

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/x$a;->e:Lcom/baidu/platform/comapi/basestruct/c;

    iget v3, v3, Lcom/baidu/platform/comapi/basestruct/c;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "lby"

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/x$a;->e:Lcom/baidu/platform/comapi/basestruct/c;

    iget v3, v3, Lcom/baidu/platform/comapi/basestruct/c;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "ltx"

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/x$a;->f:Lcom/baidu/platform/comapi/basestruct/c;

    iget v3, v3, Lcom/baidu/platform/comapi/basestruct/c;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "lty"

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/x$a;->f:Lcom/baidu/platform/comapi/basestruct/c;

    iget v3, v3, Lcom/baidu/platform/comapi/basestruct/c;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "rtx"

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/x$a;->g:Lcom/baidu/platform/comapi/basestruct/c;

    iget v3, v3, Lcom/baidu/platform/comapi/basestruct/c;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "rty"

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/x$a;->g:Lcom/baidu/platform/comapi/basestruct/c;

    iget v3, v3, Lcom/baidu/platform/comapi/basestruct/c;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "rbx"

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/x$a;->h:Lcom/baidu/platform/comapi/basestruct/c;

    iget v3, v3, Lcom/baidu/platform/comapi/basestruct/c;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "rby"

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/x$a;->h:Lcom/baidu/platform/comapi/basestruct/c;

    iget v3, v3, Lcom/baidu/platform/comapi/basestruct/c;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "xoffset"

    iget-wide v3, p1, Lcom/baidu/platform/comapi/map/x;->h:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "yoffset"

    iget-wide v3, p1, Lcom/baidu/platform/comapi/map/x;->i:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "animation"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "animatime"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    const-string v2, "bfpp"

    iget-boolean v3, p1, Lcom/baidu/platform/comapi/map/x;->j:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->j:Lcom/baidu/platform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->n:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->requestRender()V

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the path is invalid!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->j:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/t;->W:Z

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 22
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "NewApi",
            "NewApi",
            "NewApi"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    sget-object v3, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/t;->i()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v4, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/t;->i()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v5, v2, v3

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    sget-object v2, Lcom/baidu/platform/comapi/map/t;->H:Landroid/view/VelocityTracker;

    if-nez v2, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    sput-object v2, Lcom/baidu/platform/comapi/map/t;->H:Landroid/view/VelocityTracker;

    :cond_0
    sget-object v2, Lcom/baidu/platform/comapi/map/t;->H:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    sget-object v8, Lcom/baidu/platform/comapi/map/t;->H:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    int-to-float v3, v3

    invoke-virtual {v8, v9, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    sget-object v3, Lcom/baidu/platform/comapi/map/t;->H:Landroid/view/VelocityTracker;

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    sget-object v8, Lcom/baidu/platform/comapi/map/t;->H:Landroid/view/VelocityTracker;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v8

    sget-object v9, Lcom/baidu/platform/comapi/map/t;->H:Landroid/view/VelocityTracker;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v9

    sget-object v10, Lcom/baidu/platform/comapi/map/t;->H:Landroid/view/VelocityTracker;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v10

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v11

    int-to-float v12, v2

    cmpl-float v11, v11, v12

    if-gtz v11, :cond_1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v11, v2

    cmpl-float v8, v8, v11

    if-gtz v8, :cond_1

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v11, v2

    cmpl-float v8, v8, v11

    if-gtz v8, :cond_1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v2, v2

    cmpl-float v2, v8, v2

    if-lez v2, :cond_20

    :cond_1
    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget-boolean v2, v2, Lcom/baidu/platform/comapi/map/t$a;->j:Z

    const/4 v8, 0x1

    if-ne v2, v8, :cond_c

    sget v2, Lcom/baidu/platform/comapi/map/t;->v:I

    if-nez v2, :cond_9

    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v2, v2, Lcom/baidu/platform/comapi/map/t$a;->h:F

    sub-float/2addr v2, v4

    const/4 v8, 0x0

    cmpl-float v2, v2, v8

    if-lez v2, :cond_2

    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v2, v2, Lcom/baidu/platform/comapi/map/t$a;->i:F

    sub-float/2addr v2, v5

    const/4 v8, 0x0

    cmpl-float v2, v2, v8

    if-gtz v2, :cond_3

    :cond_2
    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v2, v2, Lcom/baidu/platform/comapi/map/t$a;->h:F

    sub-float/2addr v2, v4

    const/4 v8, 0x0

    cmpg-float v2, v2, v8

    if-gez v2, :cond_8

    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v2, v2, Lcom/baidu/platform/comapi/map/t$a;->i:F

    sub-float/2addr v2, v5

    const/4 v8, 0x0

    cmpg-float v2, v2, v8

    if-gez v2, :cond_8

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/platform/comapi/map/t;->X:Z

    const/4 v8, 0x1

    if-ne v2, v8, :cond_8

    sub-float v2, v5, v4

    float-to-double v10, v2

    sub-float v2, v7, v6

    float-to-double v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v2, v2, Lcom/baidu/platform/comapi/map/t$a;->i:F

    sget-object v8, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v8, v8, Lcom/baidu/platform/comapi/map/t$a;->h:F

    sub-float/2addr v2, v8

    float-to-double v12, v2

    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v2, v2, Lcom/baidu/platform/comapi/map/t$a;->g:F

    sget-object v8, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v8, v8, Lcom/baidu/platform/comapi/map/t$a;->f:F

    sub-float/2addr v2, v8

    float-to-double v14, v2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    sub-double/2addr v10, v12

    sub-float v2, v7, v6

    sub-float v8, v7, v6

    mul-float/2addr v2, v8

    sub-float v8, v5, v4

    sub-float v12, v5, v4

    mul-float/2addr v8, v12

    add-float/2addr v2, v8

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    float-to-double v12, v2

    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget-wide v14, v2, Lcom/baidu/platform/comapi/map/t$a;->m:D

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    div-double v14, v14, v16

    const-wide v16, 0x40c3880000000000L    # 10000.0

    mul-double v14, v14, v16

    double-to-int v2, v14

    const-wide v14, 0x4066800000000000L    # 180.0

    mul-double/2addr v10, v14

    const-wide v14, 0x400921ff2e48e8a7L    # 3.1416

    div-double/2addr v10, v14

    double-to-int v8, v10

    const-wide/16 v10, 0x0

    cmpl-double v10, v12, v10

    if-lez v10, :cond_4

    const/16 v10, 0xbb8

    if-gt v2, v10, :cond_5

    const/16 v10, -0xbb8

    if-lt v2, v10, :cond_5

    :cond_4
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v10, 0xa

    if-lt v2, v10, :cond_7

    :cond_5
    const/4 v2, 0x2

    sput v2, Lcom/baidu/platform/comapi/map/t;->v:I

    :cond_6
    :goto_1
    sget v2, Lcom/baidu/platform/comapi/map/t;->v:I

    if-nez v2, :cond_9

    const/4 v2, 0x1

    :goto_2
    return v2

    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sput-wide v2, Lcom/baidu/platform/comapi/map/t;->J:J

    sget v2, Lcom/baidu/platform/comapi/map/t;->M:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/baidu/platform/comapi/map/t;->M:I

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sput-wide v2, Lcom/baidu/platform/comapi/map/t;->I:J

    sget v2, Lcom/baidu/platform/comapi/map/t;->M:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/baidu/platform/comapi/map/t;->M:I

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sput-wide v2, Lcom/baidu/platform/comapi/map/t;->L:J

    sget v2, Lcom/baidu/platform/comapi/map/t;->M:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/baidu/platform/comapi/map/t;->M:I

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sput-wide v2, Lcom/baidu/platform/comapi/map/t;->K:J

    sget v2, Lcom/baidu/platform/comapi/map/t;->M:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/baidu/platform/comapi/map/t;->M:I

    goto/16 :goto_0

    :cond_7
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v8, 0x1

    if-ge v2, v8, :cond_6

    const/4 v2, 0x1

    sput v2, Lcom/baidu/platform/comapi/map/t;->v:I

    goto :goto_1

    :cond_8
    const/4 v2, 0x2

    sput v2, Lcom/baidu/platform/comapi/map/t;->v:I

    goto :goto_1

    :cond_9
    sget v2, Lcom/baidu/platform/comapi/map/t;->v:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/platform/comapi/map/t;->q:Z

    if-eqz v2, :cond_11

    sget-boolean v2, Lcom/baidu/platform/comapi/map/t;->z:Z

    if-nez v2, :cond_a

    const/4 v2, 0x1

    sput-boolean v2, Lcom/baidu/platform/comapi/map/t;->z:Z

    :cond_a
    sget-boolean v2, Lcom/baidu/platform/comapi/map/t;->E:Z

    if-nez v2, :cond_b

    const/4 v2, 0x1

    sput-boolean v2, Lcom/baidu/platform/comapi/map/t;->E:Z

    :cond_b
    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v2, v2, Lcom/baidu/platform/comapi/map/t$a;->h:F

    sub-float/2addr v2, v4

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_10

    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v2, v2, Lcom/baidu/platform/comapi/map/t$a;->i:F

    sub-float/2addr v2, v5

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_10

    const/4 v2, 0x1

    const/16 v3, 0x53

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v8}, Lcom/baidu/platform/comapi/map/t;->a(III)I

    :cond_c
    :goto_3
    sget v2, Lcom/baidu/platform/comapi/map/t;->v:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    sget v2, Lcom/baidu/platform/comapi/map/t;->M:I

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/platform/comapi/map/t;->r:Z

    if-nez v2, :cond_1d

    invoke-static {}, Lcom/baidu/platform/comapi/c/a;->a()Lcom/baidu/platform/comapi/c/a;

    move-result-object v2

    const-string v3, "mapview_gesture_3d_enter"

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/c/a;->a(Ljava/lang/String;)V

    :cond_d
    :goto_4
    const/4 v2, 0x2

    sget v3, Lcom/baidu/platform/comapi/map/t;->v:I

    if-eq v2, v3, :cond_e

    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iput v4, v2, Lcom/baidu/platform/comapi/map/t$a;->h:F

    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iput v5, v2, Lcom/baidu/platform/comapi/map/t$a;->i:F

    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iput v6, v2, Lcom/baidu/platform/comapi/map/t$a;->f:F

    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iput v7, v2, Lcom/baidu/platform/comapi/map/t$a;->g:F

    :cond_e
    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget-boolean v2, v2, Lcom/baidu/platform/comapi/map/t$a;->j:Z

    if-nez v2, :cond_f

    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/t;->h()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, v2, Lcom/baidu/platform/comapi/map/t$a;->k:F

    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/t;->i()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, v2, Lcom/baidu/platform/comapi/map/t$a;->l:F

    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iput v6, v2, Lcom/baidu/platform/comapi/map/t$a;->b:F

    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iput v4, v2, Lcom/baidu/platform/comapi/map/t$a;->c:F

    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iput v7, v2, Lcom/baidu/platform/comapi/map/t$a;->d:F

    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iput v5, v2, Lcom/baidu/platform/comapi/map/t$a;->e:F

    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/baidu/platform/comapi/map/t$a;->j:Z

    const-wide/16 v2, 0x0

    sget-object v4, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget-wide v4, v4, Lcom/baidu/platform/comapi/map/t$a;->m:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_f

    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v2, v2, Lcom/baidu/platform/comapi/map/t$a;->g:F

    sget-object v3, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v3, v3, Lcom/baidu/platform/comapi/map/t$a;->f:F

    sub-float/2addr v2, v3

    sget-object v3, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v3, v3, Lcom/baidu/platform/comapi/map/t$a;->g:F

    sget-object v4, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v4, v4, Lcom/baidu/platform/comapi/map/t$a;->f:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    sget-object v3, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v3, v3, Lcom/baidu/platform/comapi/map/t$a;->i:F

    sget-object v4, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v4, v4, Lcom/baidu/platform/comapi/map/t$a;->h:F

    sub-float/2addr v3, v4

    sget-object v4, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v4, v4, Lcom/baidu/platform/comapi/map/t$a;->i:F

    sget-object v5, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v5, v5, Lcom/baidu/platform/comapi/map/t$a;->h:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    float-to-double v2, v2

    sget-object v4, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iput-wide v2, v4, Lcom/baidu/platform/comapi/map/t$a;->m:D

    :cond_f
    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_10
    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v2, v2, Lcom/baidu/platform/comapi/map/t$a;->h:F

    sub-float/2addr v2, v4

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_c

    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v2, v2, Lcom/baidu/platform/comapi/map/t$a;->i:F

    sub-float/2addr v2, v5

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_c

    const/4 v2, 0x1

    const/16 v3, 0x57

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v8}, Lcom/baidu/platform/comapi/map/t;->a(III)I

    goto/16 :goto_3

    :cond_11
    sget v2, Lcom/baidu/platform/comapi/map/t;->v:I

    const/4 v8, 0x2

    if-eq v2, v8, :cond_12

    sget v2, Lcom/baidu/platform/comapi/map/t;->v:I

    const/4 v8, 0x4

    if-eq v2, v8, :cond_12

    sget v2, Lcom/baidu/platform/comapi/map/t;->v:I

    const/4 v8, 0x3

    if-ne v2, v8, :cond_c

    :cond_12
    sget-boolean v2, Lcom/baidu/platform/comapi/map/t;->A:Z

    if-nez v2, :cond_13

    const/4 v2, 0x1

    sput-boolean v2, Lcom/baidu/platform/comapi/map/t;->A:Z

    :cond_13
    sub-float v2, v5, v4

    float-to-double v10, v2

    sub-float v2, v7, v6

    float-to-double v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v2, v2, Lcom/baidu/platform/comapi/map/t$a;->i:F

    sget-object v8, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v8, v8, Lcom/baidu/platform/comapi/map/t$a;->h:F

    sub-float/2addr v2, v8

    float-to-double v12, v2

    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v2, v2, Lcom/baidu/platform/comapi/map/t$a;->g:F

    sget-object v8, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v8, v8, Lcom/baidu/platform/comapi/map/t$a;->f:F

    sub-float/2addr v2, v8

    float-to-double v14, v2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    sub-double/2addr v10, v12

    sub-float v2, v7, v6

    sub-float v8, v7, v6

    mul-float/2addr v2, v8

    sub-float v8, v5, v4

    sub-float v12, v5, v4

    mul-float/2addr v8, v12

    add-float/2addr v2, v8

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    float-to-double v12, v2

    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget-wide v14, v2, Lcom/baidu/platform/comapi/map/t$a;->m:D

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    div-double v14, v14, v16

    const-wide v16, 0x40c3880000000000L    # 10000.0

    mul-double v14, v14, v16

    double-to-int v2, v14

    sget-object v8, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v8, v8, Lcom/baidu/platform/comapi/map/t$a;->l:F

    sget-object v14, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v14, v14, Lcom/baidu/platform/comapi/map/t$a;->h:F

    sub-float/2addr v8, v14

    float-to-double v14, v8

    sget-object v8, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v8, v8, Lcom/baidu/platform/comapi/map/t$a;->k:F

    sget-object v16, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/baidu/platform/comapi/map/t$a;->f:F

    move/from16 v16, v0

    sub-float v8, v8, v16

    float-to-double v0, v8

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    sget-object v8, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget v8, v8, Lcom/baidu/platform/comapi/map/t$a;->k:F

    sget-object v16, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/baidu/platform/comapi/map/t$a;->f:F

    move/from16 v16, v0

    sub-float v8, v8, v16

    sget-object v16, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/baidu/platform/comapi/map/t$a;->k:F

    move/from16 v16, v0

    sget-object v17, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/baidu/platform/comapi/map/t$a;->f:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    mul-float v8, v8, v16

    sget-object v16, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/baidu/platform/comapi/map/t$a;->l:F

    move/from16 v16, v0

    sget-object v17, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/baidu/platform/comapi/map/t$a;->h:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    sget-object v17, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/baidu/platform/comapi/map/t$a;->l:F

    move/from16 v17, v0

    sget-object v18, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/baidu/platform/comapi/map/t$a;->h:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    mul-float v16, v16, v17

    add-float v8, v8, v16

    invoke-static {v8}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v8

    float-to-double v0, v8

    move-wide/from16 v16, v0

    add-double v18, v14, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v18, v18, v16

    mul-double v18, v18, v12

    float-to-double v0, v6

    move-wide/from16 v20, v0

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v8, v0

    add-double/2addr v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double v14, v14, v16

    mul-double/2addr v14, v12

    float-to-double v0, v4

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    double-to-float v14, v14

    const-wide v15, 0x4066800000000000L    # 180.0

    mul-double/2addr v10, v15

    const-wide v15, 0x400921ff2e48e8a7L    # 3.1416

    div-double/2addr v10, v15

    double-to-int v10, v10

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/baidu/platform/comapi/map/t;->X:Z

    const/4 v15, 0x1

    if-ne v11, v15, :cond_1a

    const-wide/16 v15, 0x0

    cmpl-double v3, v12, v15

    if-lez v3, :cond_17

    const/4 v3, 0x3

    sget v9, Lcom/baidu/platform/comapi/map/t;->v:I

    if-eq v3, v9, :cond_14

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v9, 0x7d0

    if-le v3, v9, :cond_17

    const/4 v3, 0x2

    sget v9, Lcom/baidu/platform/comapi/map/t;->v:I

    if-ne v3, v9, :cond_17

    :cond_14
    const/4 v3, 0x3

    sput v3, Lcom/baidu/platform/comapi/map/t;->v:I

    sget-boolean v3, Lcom/baidu/platform/comapi/map/t;->G:Z

    if-nez v3, :cond_15

    const/4 v3, 0x1

    sput-boolean v3, Lcom/baidu/platform/comapi/map/t;->G:Z

    :cond_15
    const/16 v3, 0x2001

    const/4 v9, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9, v2}, Lcom/baidu/platform/comapi/map/t;->a(III)I

    :cond_16
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/map/v;->setRenderMode(I)V

    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iput v8, v2, Lcom/baidu/platform/comapi/map/t$a;->k:F

    sget-object v2, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iput v14, v2, Lcom/baidu/platform/comapi/map/t$a;->l:F

    goto/16 :goto_3

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/platform/comapi/map/t;->X:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    if-eqz v10, :cond_16

    const/4 v2, 0x4

    sget v3, Lcom/baidu/platform/comapi/map/t;->v:I

    if-eq v2, v3, :cond_18

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_16

    const/4 v2, 0x2

    sget v3, Lcom/baidu/platform/comapi/map/t;->v:I

    if-ne v2, v3, :cond_16

    :cond_18
    const/4 v2, 0x4

    sput v2, Lcom/baidu/platform/comapi/map/t;->v:I

    sget-boolean v2, Lcom/baidu/platform/comapi/map/t;->F:Z

    if-nez v2, :cond_19

    const/4 v2, 0x1

    sput-boolean v2, Lcom/baidu/platform/comapi/map/t;->F:Z

    :cond_19
    const/16 v2, 0x2001

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v10}, Lcom/baidu/platform/comapi/map/t;->a(III)I

    goto :goto_5

    :cond_1a
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v10, Lcom/baidu/platform/comapi/map/t;->p:I

    int-to-float v10, v10

    cmpl-float v3, v3, v10

    if-gtz v3, :cond_1b

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v9, Lcom/baidu/platform/comapi/map/t;->p:I

    int-to-float v9, v9

    cmpl-float v3, v3, v9

    if-lez v3, :cond_16

    :cond_1b
    const/4 v3, 0x3

    sput v3, Lcom/baidu/platform/comapi/map/t;->v:I

    sget-boolean v3, Lcom/baidu/platform/comapi/map/t;->G:Z

    if-nez v3, :cond_1c

    const/4 v3, 0x1

    sput-boolean v3, Lcom/baidu/platform/comapi/map/t;->G:Z

    :cond_1c
    const/16 v3, 0x2001

    const/4 v9, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9, v2}, Lcom/baidu/platform/comapi/map/t;->a(III)I

    goto :goto_5

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/t;->j()Lcom/baidu/platform/comapi/map/x;

    move-result-object v2

    iget v2, v2, Lcom/baidu/platform/comapi/map/x;->c:I

    if-nez v2, :cond_d

    invoke-static {}, Lcom/baidu/platform/comapi/c/a;->a()Lcom/baidu/platform/comapi/c/a;

    move-result-object v2

    const-string v3, "mapview_gesture_3d_exit"

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/c/a;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1e
    sget v2, Lcom/baidu/platform/comapi/map/t;->v:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_d

    sget v2, Lcom/baidu/platform/comapi/map/t;->M:I

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/platform/comapi/map/t;->r:Z

    if-nez v2, :cond_1f

    invoke-static {}, Lcom/baidu/platform/comapi/c/a;->a()Lcom/baidu/platform/comapi/c/a;

    move-result-object v2

    const-string v3, "mapview_gesture_2d_rotate"

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/c/a;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1f
    invoke-static {}, Lcom/baidu/platform/comapi/c/a;->a()Lcom/baidu/platform/comapi/c/a;

    move-result-object v2

    const-string v3, "mapview_gesture_3d_rotate"

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/c/a;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_20
    sget v2, Lcom/baidu/platform/comapi/map/t;->v:I

    if-nez v2, :cond_d

    sget v2, Lcom/baidu/platform/comapi/map/t;->M:I

    if-nez v2, :cond_d

    sget-wide v2, Lcom/baidu/platform/comapi/map/t;->K:J

    sget-wide v8, Lcom/baidu/platform/comapi/map/t;->L:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_21

    sget-wide v2, Lcom/baidu/platform/comapi/map/t;->K:J

    :goto_6
    sput-wide v2, Lcom/baidu/platform/comapi/map/t;->K:J

    sget-wide v2, Lcom/baidu/platform/comapi/map/t;->I:J

    sget-wide v8, Lcom/baidu/platform/comapi/map/t;->J:J

    cmp-long v2, v2, v8

    if-gez v2, :cond_22

    sget-wide v2, Lcom/baidu/platform/comapi/map/t;->J:J

    :goto_7
    sput-wide v2, Lcom/baidu/platform/comapi/map/t;->I:J

    sget-wide v2, Lcom/baidu/platform/comapi/map/t;->K:J

    sget-wide v8, Lcom/baidu/platform/comapi/map/t;->I:J

    sub-long/2addr v2, v8

    const-wide/16 v8, 0xc8

    cmp-long v2, v2, v8

    if-gez v2, :cond_d

    const/16 v2, 0x2001

    const/4 v3, 0x4

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v8}, Lcom/baidu/platform/comapi/map/t;->a(III)I

    goto/16 :goto_4

    :cond_21
    sget-wide v2, Lcom/baidu/platform/comapi/map/t;->L:J

    goto :goto_6

    :cond_22
    sget-wide v2, Lcom/baidu/platform/comapi/map/t;->I:J

    goto :goto_7

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/t;->j()Lcom/baidu/platform/comapi/map/x;

    move-result-object v2

    iget v2, v2, Lcom/baidu/platform/comapi/map/x;->c:I

    if-eqz v2, :cond_24

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/platform/comapi/map/t;->r:Z

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_24
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/platform/comapi/map/t;->r:Z

    goto :goto_8

    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/baidu/platform/comapi/map/t;->e(Landroid/view/MotionEvent;)V

    :goto_9
    const/4 v2, 0x1

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/platform/comapi/map/t;->c(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/platform/comapi/map/t;->b(Landroid/view/MotionEvent;)Z

    goto :goto_9

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_2
        0x105 -> :sswitch_1
        0x106 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FloatMath"
        }
    .end annotation

    mul-float v0, p3, p3

    mul-float v1, p4, p4

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x43fa0000    # 500.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x22

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    or-int/2addr v2, v3

    invoke-virtual {p0, v1, v0, v2}, Lcom/baidu/platform/comapi/map/t;->a(III)I

    invoke-static {}, Lcom/baidu/platform/comapi/map/t;->e()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Lcom/baidu/platform/comjni/map/basemap/a;
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->j:Lcom/baidu/platform/comjni/map/basemap/a;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/t;->S:Z

    return-void
.end method

.method public b(II)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/t;->ac:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/t;->ad:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/t;->ac:Z

    iput p1, p0, Lcom/baidu/platform/comapi/map/t;->aa:I

    iput p2, p0, Lcom/baidu/platform/comapi/map/t;->ab:I

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/v;->f()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/baidu/platform/comapi/map/Projection;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/platform/comapi/map/t;->Y:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->Y:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    if-nez v1, :cond_2

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/t;->ac:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/t;->f()Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/t;->Z:Z

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/t;->Z:Z

    if-nez v1, :cond_3

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/t;->ac:Z

    :cond_3
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/t;->Z:Z

    goto :goto_0
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v3, 0x1

    const/high16 v8, 0x40400000    # 3.0f

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    const/4 v2, 0x0

    sget-object v0, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget-boolean v0, v0, Lcom/baidu/platform/comapi/map/t$a;->j:Z

    if-eqz v0, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sget v1, Lcom/baidu/platform/comapi/map/t;->N:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sget v1, Lcom/baidu/platform/comapi/map/t;->O:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sget v0, Lcom/baidu/platform/comapi/d/c;->A:F

    float-to-double v0, v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_1

    sget v0, Lcom/baidu/platform/comapi/d/c;->A:F

    float-to-double v0, v0

    mul-double/2addr v0, v6

    :goto_1
    double-to-float v0, v0

    sget-boolean v1, Lcom/baidu/platform/comapi/map/t;->P:Z

    if-eqz v1, :cond_2

    div-float v1, v4, v0

    cmpg-float v1, v1, v8

    if-gtz v1, :cond_2

    div-float v0, v5, v0

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_2

    move v2, v3

    goto :goto_0

    :cond_1
    sget v0, Lcom/baidu/platform/comapi/d/c;->A:F

    float-to-double v0, v0

    goto :goto_1

    :cond_2
    sput-boolean v2, Lcom/baidu/platform/comapi/map/t;->P:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    if-gez v1, :cond_3

    move v1, v2

    :cond_3
    if-gez v0, :cond_4

    move v0, v2

    :cond_4
    const/4 v3, 0x3

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0, v3, v2, v0}, Lcom/baidu/platform/comapi/map/t;->a(III)I

    goto :goto_0
.end method

.method public c()D
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->i()D

    move-result-wide v0

    return-wide v0
.end method

.method public c(II)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/t;->ac:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/t;->ad:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/t;->ad:Z

    iput p1, p0, Lcom/baidu/platform/comapi/map/t;->aa:I

    iput p2, p0, Lcom/baidu/platform/comapi/map/t;->ab:I

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/v;->f()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/baidu/platform/comapi/map/Projection;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/platform/comapi/map/t;->Y:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->Y:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    if-nez v1, :cond_2

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/t;->ad:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/t;->g()Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/t;->Z:Z

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/t;->Z:Z

    if-nez v1, :cond_3

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/t;->ad:Z

    :cond_3
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/t;->Z:Z

    goto :goto_0
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 8

    const/high16 v7, 0x41200000    # 10.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/baidu/platform/comapi/map/t;->B:Lcom/baidu/platform/comapi/map/t$a;

    iget-boolean v0, v0, Lcom/baidu/platform/comapi/map/t$a;->j:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    sget-wide v5, Lcom/baidu/platform/comapi/map/t;->R:J

    sub-long/2addr v3, v5

    sget-wide v5, Lcom/baidu/platform/comapi/map/t;->T:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sget v3, Lcom/baidu/platform/comapi/map/t;->N:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v7

    if-gez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sget v3, Lcom/baidu/platform/comapi/map/t;->O:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v7

    if-gez v0, :cond_6

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/baidu/platform/comapi/map/t;->e()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v4, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v4, v3}, Lcom/baidu/platform/comapi/map/t;->f(II)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    return v2

    :cond_1
    invoke-direct {p0, v0, v4, v3}, Lcom/baidu/platform/comapi/map/t;->b(III)Z

    move-result v5

    if-nez v5, :cond_0

    if-ne v0, v1, :cond_2

    iget-boolean v5, p0, Lcom/baidu/platform/comapi/map/t;->S:Z

    if-eqz v5, :cond_2

    invoke-direct {p0, v4, v3}, Lcom/baidu/platform/comapi/map/t;->g(II)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    if-nez v0, :cond_4

    if-gez v4, :cond_3

    move v4, v2

    :cond_3
    if-gez v3, :cond_5

    move v0, v2

    :goto_2
    const/4 v3, 0x5

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v4

    invoke-virtual {p0, v3, v2, v0}, Lcom/baidu/platform/comapi/map/t;->a(III)I

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method public d(II)V
    .locals 0

    iput p1, p0, Lcom/baidu/platform/comapi/map/t;->s:I

    iput p2, p0, Lcom/baidu/platform/comapi/map/t;->t:I

    return-void
.end method

.method public d(Landroid/view/MotionEvent;)V
    .locals 4

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/t;->W:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2003

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    or-int/2addr v1, v2

    iget v2, p0, Lcom/baidu/platform/comapi/map/t;->t:I

    div-int/lit8 v2, v2, 0x2

    shl-int/lit8 v2, v2, 0x10

    iget v3, p0, Lcom/baidu/platform/comapi/map/t;->s:I

    div-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/platform/comapi/map/t;->a(III)I

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/t;->W:Z

    return v0
.end method

.method public e(II)V
    .locals 1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comapi/map/v;->a(II)V

    goto :goto_0
.end method

.method public f()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/v;->k()F

    move-result v2

    const/high16 v3, 0x41980000    # 19.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x1000

    invoke-virtual {p0, v2, v0, v0}, Lcom/baidu/platform/comapi/map/t;->a(III)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public f(II)Z
    .locals 6

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/t;->e:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/baidu/platform/comapi/map/t;->u:I

    int-to-double v2, v2

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/t;->c()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/baidu/platform/comapi/map/t;->j:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {v3, v0, p1, p2, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IIII)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/v;->k()F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x1001

    invoke-virtual {p0, v2, v0, v0}, Lcom/baidu/platform/comapi/map/t;->a(III)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/baidu/platform/comapi/map/t;->s:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/baidu/platform/comapi/map/t;->t:I

    return v0
.end method

.method public j()Lcom/baidu/platform/comapi/map/x;
    .locals 10

    const/4 v0, 0x1

    const-wide/32 v8, 0x131bf84

    const-wide/32 v6, -0x131bf84

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->j:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->j:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {v1}, Lcom/baidu/platform/comjni/map/basemap/a;->g()Landroid/os/Bundle;

    move-result-object v2

    new-instance v1, Lcom/baidu/platform/comapi/map/x;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/map/x;-><init>()V

    const-string v3, "level"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v1, Lcom/baidu/platform/comapi/map/x;->a:F

    const-string v3, "rotation"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v1, Lcom/baidu/platform/comapi/map/x;->b:I

    const-string v3, "overlooking"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v1, Lcom/baidu/platform/comapi/map/x;->c:I

    const-string v3, "centerptx"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v1, Lcom/baidu/platform/comapi/map/x;->d:I

    const-string v3, "centerpty"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v1, Lcom/baidu/platform/comapi/map/x;->e:I

    iget-object v3, v1, Lcom/baidu/platform/comapi/map/x;->f:Lcom/baidu/platform/comapi/map/x$b;

    const-string v4, "left"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/baidu/platform/comapi/map/x$b;->a:I

    iget-object v3, v1, Lcom/baidu/platform/comapi/map/x;->f:Lcom/baidu/platform/comapi/map/x$b;

    const-string v4, "right"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/baidu/platform/comapi/map/x$b;->b:I

    iget-object v3, v1, Lcom/baidu/platform/comapi/map/x;->f:Lcom/baidu/platform/comapi/map/x$b;

    const-string v4, "top"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/baidu/platform/comapi/map/x$b;->c:I

    iget-object v3, v1, Lcom/baidu/platform/comapi/map/x;->f:Lcom/baidu/platform/comapi/map/x$b;

    const-string v4, "bottom"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/baidu/platform/comapi/map/x$b;->d:I

    iget-object v3, v1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    const-string v4, "gleft"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/baidu/platform/comapi/map/x$a;->a:J

    iget-object v3, v1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    const-string v4, "gright"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/baidu/platform/comapi/map/x$a;->b:J

    iget-object v3, v1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    const-string v4, "gtop"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/baidu/platform/comapi/map/x$a;->c:J

    iget-object v3, v1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    const-string v4, "gbottom"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/baidu/platform/comapi/map/x$a;->d:J

    iget-object v3, v1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/x$a;->e:Lcom/baidu/platform/comapi/basestruct/c;

    const-string v4, "lbx"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/baidu/platform/comapi/basestruct/c;->a:I

    iget-object v3, v1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/x$a;->e:Lcom/baidu/platform/comapi/basestruct/c;

    const-string v4, "lby"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/baidu/platform/comapi/basestruct/c;->b:I

    iget-object v3, v1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/x$a;->f:Lcom/baidu/platform/comapi/basestruct/c;

    const-string v4, "ltx"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/baidu/platform/comapi/basestruct/c;->a:I

    iget-object v3, v1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/x$a;->f:Lcom/baidu/platform/comapi/basestruct/c;

    const-string v4, "lty"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/baidu/platform/comapi/basestruct/c;->b:I

    iget-object v3, v1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/x$a;->g:Lcom/baidu/platform/comapi/basestruct/c;

    const-string v4, "rtx"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/baidu/platform/comapi/basestruct/c;->a:I

    iget-object v3, v1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/x$a;->g:Lcom/baidu/platform/comapi/basestruct/c;

    const-string v4, "rty"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/baidu/platform/comapi/basestruct/c;->b:I

    iget-object v3, v1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/x$a;->h:Lcom/baidu/platform/comapi/basestruct/c;

    const-string v4, "rbx"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/baidu/platform/comapi/basestruct/c;->a:I

    iget-object v3, v1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/x$a;->h:Lcom/baidu/platform/comapi/basestruct/c;

    const-string v4, "rby"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/baidu/platform/comapi/basestruct/c;->b:I

    const-string v3, "xoffset"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/baidu/platform/comapi/map/x;->h:J

    const-string v3, "yoffset"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/baidu/platform/comapi/map/x;->i:J

    const-string v3, "bfpp"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_5

    :goto_1
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/x;->j:Z

    iget-object v0, v1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-wide v2, v0, Lcom/baidu/platform/comapi/map/x$a;->a:J

    cmp-long v0, v2, v6

    if-gtz v0, :cond_1

    iget-object v0, v1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iput-wide v6, v0, Lcom/baidu/platform/comapi/map/x$a;->a:J

    :cond_1
    iget-object v0, v1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-wide v2, v0, Lcom/baidu/platform/comapi/map/x$a;->b:J

    cmp-long v0, v2, v8

    if-ltz v0, :cond_2

    iget-object v0, v1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iput-wide v8, v0, Lcom/baidu/platform/comapi/map/x$a;->b:J

    :cond_2
    iget-object v0, v1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-wide v2, v0, Lcom/baidu/platform/comapi/map/x$a;->c:J

    cmp-long v0, v2, v8

    if-ltz v0, :cond_3

    iget-object v0, v1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iput-wide v8, v0, Lcom/baidu/platform/comapi/map/x$a;->c:J

    :cond_3
    iget-object v0, v1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iget-wide v2, v0, Lcom/baidu/platform/comapi/map/x$a;->d:J

    cmp-long v0, v2, v6

    if-gtz v0, :cond_4

    iget-object v0, v1, Lcom/baidu/platform/comapi/map/x;->g:Lcom/baidu/platform/comapi/map/x$a;

    iput-wide v6, v0, Lcom/baidu/platform/comapi/map/x$a;->d:J

    :cond_4
    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public k()F
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->j:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    const/high16 v0, 0x40400000    # 3.0f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->j:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/a;->g()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "level"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method public l()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/t;->p()V

    iput-object v1, p0, Lcom/baidu/platform/comapi/map/t;->o:Landroid/os/Handler;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->j:Lcom/baidu/platform/comjni/map/basemap/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/t;->j:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/a;->b()Z

    iput-object v1, p0, Lcom/baidu/platform/comapi/map/t;->j:Lcom/baidu/platform/comjni/map/basemap/a;

    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v3, 0x32

    const/16 v2, -0x32

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->l:Lcom/baidu/platform/comapi/map/v;

    if-ne v1, p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v0, v2}, Lcom/baidu/platform/comapi/map/t;->e(II)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v2, v0}, Lcom/baidu/platform/comapi/map/t;->e(II)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v3, v0}, Lcom/baidu/platform/comapi/map/t;->e(II)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v0, v3}, Lcom/baidu/platform/comapi/map/t;->e(II)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
