.class public Lcom/baidu/platform/comapi/map/A;
.super Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;


# instance fields
.field a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/baidu/platform/comapi/map/i;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/baidu/platform/comapi/map/t;


# direct methods
.method public constructor <init>(Lcom/baidu/platform/comapi/map/t;)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/A;->a:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/A;->b:Lcom/baidu/platform/comapi/map/t;

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/A;->b:Lcom/baidu/platform/comapi/map/t;

    return-void
.end method


# virtual methods
.method public ReqLayerData(Landroid/os/Bundle;II)I
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/A;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/i;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jsondata"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/i;->d()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "param"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/i;->f()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILcom/baidu/platform/comapi/map/i;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/A;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/A;->b:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {p2, p1, v0}, Lcom/baidu/platform/comapi/map/i;->a(ILcom/baidu/platform/comapi/map/t;)V

    return-void
.end method
