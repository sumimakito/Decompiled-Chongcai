.class public Lcom/baidu/platform/comapi/b/e;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/baidu/platform/comapi/b/e;


# instance fields
.field private a:Lcom/baidu/platform/comjni/map/search/a;

.field private c:Lcom/baidu/platform/comapi/b/d;

.field private d:Landroid/os/Handler;

.field private e:I

.field private f:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/platform/comapi/b/e;->b:Lcom/baidu/platform/comapi/b/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/platform/comapi/b/e;->a:Lcom/baidu/platform/comjni/map/search/a;

    iput-object v1, p0, Lcom/baidu/platform/comapi/b/e;->c:Lcom/baidu/platform/comapi/b/d;

    iput-object v1, p0, Lcom/baidu/platform/comapi/b/e;->d:Landroid/os/Handler;

    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/platform/comapi/b/e;->e:I

    iput-object v1, p0, Lcom/baidu/platform/comapi/b/e;->f:Landroid/os/Bundle;

    return-void
.end method

.method private a(Lcom/baidu/platform/comapi/b/b;)Landroid/os/Bundle;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    iget v2, p1, Lcom/baidu/platform/comapi/b/b;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "uid"

    iget-object v2, p1, Lcom/baidu/platform/comapi/b/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/baidu/platform/comapi/b/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    if-eqz v1, :cond_1

    const-string v1, "x"

    iget-object v2, p1, Lcom/baidu/platform/comapi/b/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "y"

    iget-object v2, p1, Lcom/baidu/platform/comapi/b/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const-string v1, "keyword"

    iget-object v2, p1, Lcom/baidu/platform/comapi/b/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/platform/comapi/b/e;)Lcom/baidu/platform/comapi/b/d;
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/e;->c:Lcom/baidu/platform/comapi/b/d;

    return-object v0
.end method

.method public static a()Lcom/baidu/platform/comapi/b/e;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/baidu/platform/comapi/b/e;->b:Lcom/baidu/platform/comapi/b/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/platform/comapi/b/e;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/b/e;-><init>()V

    sput-object v1, Lcom/baidu/platform/comapi/b/e;->b:Lcom/baidu/platform/comapi/b/e;

    sget-object v1, Lcom/baidu/platform/comapi/b/e;->b:Lcom/baidu/platform/comapi/b/e;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/b/e;->d()Z

    move-result v1

    if-nez v1, :cond_0

    sput-object v0, Lcom/baidu/platform/comapi/b/e;->b:Lcom/baidu/platform/comapi/b/e;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/baidu/platform/comapi/b/e;->b:Lcom/baidu/platform/comapi/b/e;

    goto :goto_0
.end method

.method public static b()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/baidu/platform/comapi/b/e;->b:Lcom/baidu/platform/comapi/b/e;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/baidu/platform/comapi/b/e;->b:Lcom/baidu/platform/comapi/b/e;

    iget-object v0, v0, Lcom/baidu/platform/comapi/b/e;->a:Lcom/baidu/platform/comjni/map/search/a;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/baidu/platform/comapi/b/e;->b:Lcom/baidu/platform/comapi/b/e;

    iget-object v0, v0, Lcom/baidu/platform/comapi/b/e;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v0, 0x7d0

    sget-object v1, Lcom/baidu/platform/comapi/b/e;->b:Lcom/baidu/platform/comapi/b/e;

    iget-object v1, v1, Lcom/baidu/platform/comapi/b/e;->d:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/engine/a;->b(ILandroid/os/Handler;)V

    sget-object v0, Lcom/baidu/platform/comapi/b/e;->b:Lcom/baidu/platform/comapi/b/e;

    iput-object v2, v0, Lcom/baidu/platform/comapi/b/e;->d:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/baidu/platform/comapi/b/e;->b:Lcom/baidu/platform/comapi/b/e;

    iget-object v0, v0, Lcom/baidu/platform/comapi/b/e;->a:Lcom/baidu/platform/comjni/map/search/a;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/search/a;->c()I

    sget-object v0, Lcom/baidu/platform/comapi/b/e;->b:Lcom/baidu/platform/comapi/b/e;

    iput-object v2, v0, Lcom/baidu/platform/comapi/b/e;->a:Lcom/baidu/platform/comjni/map/search/a;

    sget-object v0, Lcom/baidu/platform/comapi/b/e;->b:Lcom/baidu/platform/comapi/b/e;

    iput-object v2, v0, Lcom/baidu/platform/comapi/b/e;->f:Landroid/os/Bundle;

    sget-object v0, Lcom/baidu/platform/comapi/b/e;->b:Lcom/baidu/platform/comapi/b/e;

    iget-object v0, v0, Lcom/baidu/platform/comapi/b/e;->c:Lcom/baidu/platform/comapi/b/d;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/b/d;->a()V

    sget-object v0, Lcom/baidu/platform/comapi/b/e;->b:Lcom/baidu/platform/comapi/b/e;

    iput-object v2, v0, Lcom/baidu/platform/comapi/b/e;->c:Lcom/baidu/platform/comapi/b/d;

    :cond_1
    sput-object v2, Lcom/baidu/platform/comapi/b/e;->b:Lcom/baidu/platform/comapi/b/e;

    :cond_2
    return-void
.end method

.method private d()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/baidu/platform/comapi/b/e;->a:Lcom/baidu/platform/comjni/map/search/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/platform/comjni/map/search/a;

    invoke-direct {v1}, Lcom/baidu/platform/comjni/map/search/a;-><init>()V

    iput-object v1, p0, Lcom/baidu/platform/comapi/b/e;->a:Lcom/baidu/platform/comjni/map/search/a;

    iget-object v1, p0, Lcom/baidu/platform/comapi/b/e;->a:Lcom/baidu/platform/comjni/map/search/a;

    invoke-virtual {v1}, Lcom/baidu/platform/comjni/map/search/a;->a()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/b/e;->a:Lcom/baidu/platform/comjni/map/search/a;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Lcom/baidu/platform/comapi/b/d;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/b/d;-><init>()V

    iput-object v1, p0, Lcom/baidu/platform/comapi/b/e;->c:Lcom/baidu/platform/comapi/b/d;

    new-instance v1, Lcom/baidu/platform/comapi/b/f;

    invoke-direct {v1, p0}, Lcom/baidu/platform/comapi/b/f;-><init>(Lcom/baidu/platform/comapi/b/e;)V

    iput-object v1, p0, Lcom/baidu/platform/comapi/b/e;->d:Landroid/os/Handler;

    const/16 v1, 0x7d0

    iget-object v2, p0, Lcom/baidu/platform/comapi/b/e;->d:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/baidu/platform/comjni/engine/a;->a(ILandroid/os/Handler;)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/b/e;->c:Lcom/baidu/platform/comapi/b/d;

    invoke-virtual {v1, p0}, Lcom/baidu/platform/comapi/b/d;->a(Lcom/baidu/platform/comapi/b/e;)V

    goto :goto_0
.end method

.method private e()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/e;->f:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/b/e;->f:Landroid/os/Bundle;

    :goto_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/e;->f:Landroid/os/Bundle;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/e;->f:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-lez p1, :cond_0

    const/16 v0, 0x32

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/baidu/platform/comapi/b/e;->e:I

    :cond_0
    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/b/c;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/e;->c:Lcom/baidu/platform/comapi/b/d;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/b/d;->a(Lcom/baidu/platform/comapi/b/c;)V

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/b/b;Lcom/baidu/platform/comapi/b/b;Ljava/lang/String;Lcom/baidu/platform/comapi/basestruct/b;IILjava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/platform/comapi/b/b;",
            "Lcom/baidu/platform/comapi/b/b;",
            "Ljava/lang/String;",
            "Lcom/baidu/platform/comapi/basestruct/b;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/baidu/platform/comapi/b/e;->e()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/b/e;->a(Lcom/baidu/platform/comapi/b/b;)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/baidu/platform/comapi/b/e;->a(Lcom/baidu/platform/comapi/b/b;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const-string v4, "start"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v2, "end"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v2, 0x3

    if-lt p6, v2, :cond_0

    const/4 v2, 0x6

    if-gt p6, v2, :cond_0

    const-string v0, "strategy"

    invoke-virtual {v1, v0, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "cityid"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    iget-object v0, p4, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    if-eqz v0, :cond_2

    iget-object v0, p4, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "level"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ll_x"

    iget-object v3, p4, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ll_y"

    iget-object v3, p4, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ru_x"

    iget-object v3, p4, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ru_y"

    iget-object v3, p4, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "mapbound"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    if-eqz p7, :cond_4

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "extparams"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/e;->a:Lcom/baidu/platform/comjni/map/search/a;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/search/a;->d(Landroid/os/Bundle;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public a(Lcom/baidu/platform/comapi/b/b;Lcom/baidu/platform/comapi/b/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/platform/comapi/basestruct/b;IIILjava/util/ArrayList;Ljava/util/Map;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/platform/comapi/b/b;",
            "Lcom/baidu/platform/comapi/b/b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/platform/comapi/basestruct/b;",
            "III",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/platform/comapi/b/g;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v1, p1, Lcom/baidu/platform/comapi/b/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    if-nez v1, :cond_3

    if-eqz p4, :cond_2

    const-string v1, ""

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p2, Lcom/baidu/platform/comapi/b/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    if-nez v1, :cond_5

    if-eqz p5, :cond_4

    const-string v1, ""

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/baidu/platform/comapi/b/e;->e()Landroid/os/Bundle;

    move-result-object v5

    const-string v1, "starttype"

    iget v2, p1, Lcom/baidu/platform/comapi/b/b;->a:I

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p1, Lcom/baidu/platform/comapi/b/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    if-eqz v1, :cond_6

    const-string v1, "startptx"

    iget-object v2, p1, Lcom/baidu/platform/comapi/b/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "startpty"

    iget-object v2, p1, Lcom/baidu/platform/comapi/b/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    const-string v1, "startkeyword"

    iget-object v2, p1, Lcom/baidu/platform/comapi/b/b;->c:Ljava/lang/String;

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "startuid"

    iget-object v2, p1, Lcom/baidu/platform/comapi/b/b;->d:Ljava/lang/String;

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "endtype"

    iget v2, p2, Lcom/baidu/platform/comapi/b/b;->a:I

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p2, Lcom/baidu/platform/comapi/b/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    if-eqz v1, :cond_7

    const-string v1, "endptx"

    iget-object v2, p2, Lcom/baidu/platform/comapi/b/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "endpty"

    iget-object v2, p2, Lcom/baidu/platform/comapi/b/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    const-string v1, "endkeyword"

    iget-object v2, p2, Lcom/baidu/platform/comapi/b/b;->c:Ljava/lang/String;

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "enduid"

    iget-object v2, p2, Lcom/baidu/platform/comapi/b/b;->d:Ljava/lang/String;

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "level"

    move/from16 v0, p7

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p6, :cond_8

    move-object/from16 v0, p6

    iget-object v1, v0, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    if-eqz v1, :cond_8

    move-object/from16 v0, p6

    iget-object v1, v0, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    if-eqz v1, :cond_8

    const-string v1, "ll_x"

    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ll_y"

    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ru_x"

    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ru_y"

    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_8
    const-string v1, "strategy"

    move/from16 v0, p8

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "cityid"

    invoke-virtual {v5, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "st_cityid"

    invoke-virtual {v5, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "en_cityid"

    invoke-virtual {v5, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "traffic"

    move/from16 v0, p9

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p10, :cond_b

    invoke-virtual/range {p10 .. p10}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, v6, :cond_a

    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const/4 v8, 0x1

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "keyword"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/b/g;

    iget-object v1, v1, Lcom/baidu/platform/comapi/b/g;->b:Ljava/lang/String;

    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "xy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/b/g;

    iget-object v1, v1, Lcom/baidu/platform/comapi/b/g;->a:Lcom/baidu/platform/comapi/basestruct/c;

    iget v1, v1, Lcom/baidu/platform/comapi/basestruct/c;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ","

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/b/g;

    iget-object v1, v1, Lcom/baidu/platform/comapi/b/g;->a:Lcom/baidu/platform/comapi/basestruct/c;

    iget v1, v1, Lcom/baidu/platform/comapi/basestruct/c;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    add-int/lit8 v3, v6, -0x1

    if-eq v2, v3, :cond_9

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "|"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v1

    goto/16 :goto_1

    :cond_a
    const-string v1, "wp"

    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz p11, :cond_d

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-interface/range {p11 .. p11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p11

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    const-string v1, "extparams"

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_d
    iget-object v1, p0, Lcom/baidu/platform/comapi/b/e;->a:Lcom/baidu/platform/comjni/map/search/a;

    invoke-virtual {v1, v5}, Lcom/baidu/platform/comjni/map/search/a;->e(Landroid/os/Bundle;)Z

    move-result v1

    goto/16 :goto_0

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v1, v3

    goto :goto_2
.end method

.method public a(Lcom/baidu/platform/comapi/b/b;Lcom/baidu/platform/comapi/b/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/platform/comapi/basestruct/b;ILjava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/platform/comapi/b/b;",
            "Lcom/baidu/platform/comapi/b/b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/platform/comapi/basestruct/b;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/baidu/platform/comapi/b/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    if-nez v1, :cond_2

    if-eqz p4, :cond_0

    const-string v1, ""

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p2, Lcom/baidu/platform/comapi/b/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    if-nez v1, :cond_3

    if-eqz p5, :cond_0

    const-string v1, ""

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/baidu/platform/comapi/b/e;->e()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "starttype"

    iget v2, p1, Lcom/baidu/platform/comapi/b/b;->a:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p1, Lcom/baidu/platform/comapi/b/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    if-eqz v0, :cond_4

    const-string v0, "startptx"

    iget-object v2, p1, Lcom/baidu/platform/comapi/b/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "startpty"

    iget-object v2, p1, Lcom/baidu/platform/comapi/b/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    const-string v0, "startkeyword"

    iget-object v2, p1, Lcom/baidu/platform/comapi/b/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "startuid"

    iget-object v2, p1, Lcom/baidu/platform/comapi/b/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "endtype"

    iget v2, p2, Lcom/baidu/platform/comapi/b/b;->a:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p2, Lcom/baidu/platform/comapi/b/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    if-eqz v0, :cond_5

    const-string v0, "endptx"

    iget-object v2, p2, Lcom/baidu/platform/comapi/b/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "endpty"

    iget-object v2, p2, Lcom/baidu/platform/comapi/b/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    const-string v0, "endkeyword"

    iget-object v2, p2, Lcom/baidu/platform/comapi/b/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "enduid"

    iget-object v2, p2, Lcom/baidu/platform/comapi/b/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-virtual {v1, v0, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p6, :cond_6

    iget-object v0, p6, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    if-eqz v0, :cond_6

    iget-object v0, p6, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    if-eqz v0, :cond_6

    const-string v0, "ll_x"

    iget-object v2, p6, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ll_y"

    iget-object v2, p6, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ru_x"

    iget-object v2, p6, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ru_y"

    iget-object v2, p6, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    const-string v0, "cityid"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "st_cityid"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "en_cityid"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p8, :cond_8

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v0, "extparams"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/e;->a:Lcom/baidu/platform/comjni/map/search/a;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/search/a;->f(Landroid/os/Bundle;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public a(Lcom/baidu/platform/comapi/basestruct/c;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/platform/comapi/b/e;->a:Lcom/baidu/platform/comjni/map/search/a;

    invoke-virtual {v2, v1, v0}, Lcom/baidu/platform/comjni/map/search/a;->a(II)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x63

    if-gt v2, v3, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/e;->a:Lcom/baidu/platform/comjni/map/search/a;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/search/a;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;IIILcom/baidu/platform/comapi/basestruct/b;Lcom/baidu/platform/comapi/basestruct/b;Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lcom/baidu/platform/comapi/basestruct/b;",
            "Lcom/baidu/platform/comapi/basestruct/b;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x63

    if-gt v2, v3, :cond_0

    invoke-direct {p0}, Lcom/baidu/platform/comapi/b/e;->e()Landroid/os/Bundle;

    move-result-object v2

    const-string v0, "keyword"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pagenum"

    invoke-virtual {v2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "count"

    iget v1, p0, Lcom/baidu/platform/comapi/b/e;->e:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "cityid"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "level"

    invoke-virtual {v2, v0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p6, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ll_x"

    iget-object v3, p6, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ll_y"

    iget-object v3, p6, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ru_x"

    iget-object v3, p6, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ru_y"

    iget-object v3, p6, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mapbound"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    if-eqz p5, :cond_3

    const-string v0, "ll_x"

    iget-object v1, p5, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ll_y"

    iget-object v1, p5, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ru_x"

    iget-object v1, p5, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ru_y"

    iget-object v1, p5, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "loc_x"

    iget-object v1, p5, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v1

    iget-object v3, p5, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v3

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "loc_y"

    iget-object v1, p5, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v1

    iget-object v3, p5, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v3

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    if-eqz p7, :cond_5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "extparams"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/e;->a:Lcom/baidu/platform/comjni/map/search/a;

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comjni/map/search/a;->b(Landroid/os/Bundle;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;IILcom/baidu/platform/comapi/basestruct/b;ILcom/baidu/platform/comapi/basestruct/c;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x63

    if-gt v1, v2, :cond_0

    invoke-direct {p0}, Lcom/baidu/platform/comapi/b/e;->e()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "keyword"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "cityid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "level"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "mapbound"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz p6, :cond_3

    const-string v1, "loc_x"

    iget v2, p6, Lcom/baidu/platform/comapi/basestruct/c;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "loc_y"

    iget v2, p6, Lcom/baidu/platform/comapi/basestruct/c;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    iget-object v1, p0, Lcom/baidu/platform/comapi/b/e;->a:Lcom/baidu/platform/comjni/map/search/a;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comjni/map/search/a;->g(Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;IILcom/baidu/platform/comapi/basestruct/b;ILcom/baidu/platform/comapi/basestruct/c;Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/baidu/platform/comapi/basestruct/b;",
            "I",
            "Lcom/baidu/platform/comapi/basestruct/c;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x63

    if-gt v2, v3, :cond_0

    invoke-direct {p0}, Lcom/baidu/platform/comapi/b/e;->e()Landroid/os/Bundle;

    move-result-object v2

    const-string v0, "keyword"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pagenum"

    invoke-virtual {v2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "count"

    iget v1, p0, Lcom/baidu/platform/comapi/b/e;->e:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "cityid"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-virtual {v2, v0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p4, :cond_2

    const-string v0, "ll_x"

    iget-object v1, p4, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ll_y"

    iget-object v1, p4, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ru_x"

    iget-object v1, p4, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ru_y"

    iget-object v1, p4, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    if-eqz p6, :cond_3

    const-string v0, "loc_x"

    iget v1, p6, Lcom/baidu/platform/comapi/basestruct/c;->a:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "loc_y"

    iget v1, p6, Lcom/baidu/platform/comapi/basestruct/c;->b:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    if-eqz p7, :cond_5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "extparams"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/e;->a:Lcom/baidu/platform/comjni/map/search/a;

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comjni/map/search/a;->j(Landroid/os/Bundle;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x63

    if-gt v2, v3, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/e;->a:Lcom/baidu/platform/comjni/map/search/a;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/platform/comjni/map/search/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILcom/baidu/platform/comapi/basestruct/b;ILjava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/baidu/platform/comapi/basestruct/b;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x63

    if-gt v2, v3, :cond_0

    invoke-direct {p0}, Lcom/baidu/platform/comapi/b/e;->e()Landroid/os/Bundle;

    move-result-object v2

    const-string v0, "keyword"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pagenum"

    invoke-virtual {v2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "count"

    iget v1, p0, Lcom/baidu/platform/comapi/b/e;->e:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "cityid"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-virtual {v2, v0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p4, :cond_2

    const-string v0, "ll_x"

    iget-object v1, p4, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ll_y"

    iget-object v1, p4, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ru_x"

    iget-object v1, p4, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ru_y"

    iget-object v1, p4, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    if-eqz p6, :cond_4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "extparams"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/e;->a:Lcom/baidu/platform/comjni/map/search/a;

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comjni/map/search/a;->a(Landroid/os/Bundle;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public a([Ljava/lang/String;IIIILcom/baidu/platform/comapi/basestruct/b;Lcom/baidu/platform/comapi/basestruct/b;Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "IIII",
            "Lcom/baidu/platform/comapi/basestruct/b;",
            "Lcom/baidu/platform/comapi/basestruct/b;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/16 v6, 0x63

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    array-length v0, p1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    array-length v0, p1

    const/16 v2, 0xa

    if-gt v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_3

    aget-object v3, p1, v0

    if-eqz v3, :cond_0

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v6, :cond_0

    aget-object v4, p1, v0

    const-string v5, "$$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_2

    const-string v3, "$$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v6, :cond_0

    invoke-direct {p0}, Lcom/baidu/platform/comapi/b/e;->e()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "keyword"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pagenum"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "count"

    iget v2, p0, Lcom/baidu/platform/comapi/b/e;->e:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "cityid"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "level"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "radius"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p7, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ll_x"

    iget-object v3, p7, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ll_y"

    iget-object v3, p7, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ru_x"

    iget-object v3, p7, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ru_y"

    iget-object v3, p7, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "mapbound"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    if-eqz p6, :cond_5

    const-string v0, "ll_x"

    iget-object v2, p6, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ll_y"

    iget-object v2, p6, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ru_x"

    iget-object v2, p6, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ru_y"

    iget-object v2, p6, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "loc_x"

    iget-object v2, p6, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v2

    iget-object v3, p6, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "loc_y"

    iget-object v2, p6, Lcom/baidu/platform/comapi/basestruct/b;->a:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v2

    iget-object v3, p6, Lcom/baidu/platform/comapi/basestruct/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    if-eqz p8, :cond_7

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v0, "extparams"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/e;->a:Lcom/baidu/platform/comjni/map/search/a;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/search/a;->c(Landroid/os/Bundle;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method b(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/e;->a:Lcom/baidu/platform/comjni/map/search/a;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/search/a;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/e;->a:Lcom/baidu/platform/comjni/map/search/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/search/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/baidu/platform/comapi/b/e;->e:I

    return v0
.end method
