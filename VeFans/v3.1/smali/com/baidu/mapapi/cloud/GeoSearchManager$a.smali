.class Lcom/baidu/mapapi/cloud/GeoSearchManager$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/cloud/GeoSearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcom/baidu/mapapi/cloud/GeoSearchListener;

.field b:Lcom/baidu/mapapi/cloud/GeoSearchManager;

.field final synthetic c:Lcom/baidu/mapapi/cloud/GeoSearchManager;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/cloud/GeoSearchManager;Lcom/baidu/mapapi/cloud/GeoSearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager$a;->c:Lcom/baidu/mapapi/cloud/GeoSearchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager$a;->a:Lcom/baidu/mapapi/cloud/GeoSearchListener;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager$a;->a:Lcom/baidu/mapapi/cloud/GeoSearchListener;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager$a;->b:Lcom/baidu/mapapi/cloud/GeoSearchManager;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/mapapi/cloud/GeoSearchResult;

    invoke-direct {v1}, Lcom/baidu/mapapi/cloud/GeoSearchResult;-><init>()V

    invoke-static {v0, v1}, Lcom/baidu/mapapi/search/c;->a(Ljava/lang/String;Lcom/baidu/mapapi/cloud/GeoSearchResult;)Z

    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager$a;->a:Lcom/baidu/mapapi/cloud/GeoSearchListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/mapapi/cloud/GeoSearchListener;->onGetGeoResult(Lcom/baidu/mapapi/cloud/GeoSearchResult;II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager$a;->b:Lcom/baidu/mapapi/cloud/GeoSearchManager;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/mapapi/cloud/DetailResult;

    invoke-direct {v1}, Lcom/baidu/mapapi/cloud/DetailResult;-><init>()V

    invoke-static {v0, v1}, Lcom/baidu/mapapi/search/c;->a(Ljava/lang/String;Lcom/baidu/mapapi/cloud/DetailResult;)Z

    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager$a;->a:Lcom/baidu/mapapi/cloud/GeoSearchListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/mapapi/cloud/GeoSearchListener;->onGetGeoDetailsResult(Lcom/baidu/mapapi/cloud/DetailResult;II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method a(Lcom/baidu/mapapi/cloud/GeoSearchManager;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager$a;->b:Lcom/baidu/mapapi/cloud/GeoSearchManager;

    return-void
.end method
