.class public Lcn/apppark/mcd/util/imge/BitmapCache;
.super Ljava/util/WeakHashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/WeakHashMap",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/WeakHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public isCached(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcn/apppark/mcd/util/imge/BitmapCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcn/apppark/mcd/util/imge/BitmapCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
