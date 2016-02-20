.class public Lcom/baidu/mapapi/map/Symbol;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/Symbol$Color;
    }
.end annotation


# instance fields
.field a:I

.field b:Lcom/baidu/mapapi/map/Symbol$Color;

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/baidu/mapapi/map/Symbol;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/map/Symbol;->b:Lcom/baidu/mapapi/map/Symbol$Color;

    iput v1, p0, Lcom/baidu/mapapi/map/Symbol;->c:I

    return-void
.end method


# virtual methods
.method public setLineSymbol(Lcom/baidu/mapapi/map/Symbol$Color;I)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/map/Symbol;->b:Lcom/baidu/mapapi/map/Symbol$Color;

    iput p2, p0, Lcom/baidu/mapapi/map/Symbol;->a:I

    return-void
.end method

.method public setPointSymbol(Lcom/baidu/mapapi/map/Symbol$Color;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/mapapi/map/Symbol;->b:Lcom/baidu/mapapi/map/Symbol$Color;

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mapapi/map/Symbol;->c:I

    return-void
.end method

.method public setSurface(Lcom/baidu/mapapi/map/Symbol$Color;II)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/map/Symbol;->b:Lcom/baidu/mapapi/map/Symbol$Color;

    iput p3, p0, Lcom/baidu/mapapi/map/Symbol;->a:I

    iput p2, p0, Lcom/baidu/mapapi/map/Symbol;->c:I

    return-void
.end method
