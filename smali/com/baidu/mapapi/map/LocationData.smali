.class public Lcom/baidu/mapapi/map/LocationData;
.super Ljava/lang/Object;


# instance fields
.field public accuracy:F

.field public direction:F

.field public latitude:D

.field public longitude:D

.field public satellitesNum:I

.field public speed:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 7

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/baidu/platform/comapi/a/a;->a()Lcom/baidu/platform/comapi/a/a;

    move-result-object v3

    iget-wide v4, p0, Lcom/baidu/mapapi/map/LocationData;->longitude:D

    double-to-float v4, v4

    iget-wide v5, p0, Lcom/baidu/mapapi/map/LocationData;->latitude:D

    double-to-float v5, v5

    const-string v6, "bd09ll"

    invoke-virtual {v3, v4, v5, v6}, Lcom/baidu/platform/comapi/a/a;->a(FFLjava/lang/String;)Lcom/baidu/platform/comapi/basestruct/c;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    const-string v4, "type"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "ptx"

    iget v5, v3, Lcom/baidu/platform/comapi/basestruct/c;->a:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "pty"

    iget v3, v3, Lcom/baidu/platform/comapi/basestruct/c;->b:I

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "radius"

    iget v4, p0, Lcom/baidu/mapapi/map/LocationData;->accuracy:F

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "direction"

    iget v4, p0, Lcom/baidu/mapapi/map/LocationData;->direction:F

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "iconarrownor"

    const-string v4, "NormalLocArrow"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "iconarrownorid"

    const/16 v4, 0x1c

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "iconarrowfoc"

    const-string v4, "FocusLocArrow"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "iconarrowfocid"

    const/16 v4, 0x1d

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
