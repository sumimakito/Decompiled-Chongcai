.class Lcom/baidu/mapapi/map/MapView$b;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/map/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/map/MapView;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/MapView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/map/MapView$b;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView$b;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->a()V

    return-void
.end method
