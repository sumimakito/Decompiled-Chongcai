.class public Lcom/sina/weibo/sdk/utils/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# static fields
.field private static final DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final DRAWABLE_HDPI:Ljava/lang/String; = "drawable-hdpi"

.field private static final DRAWABLE_LDPI:Ljava/lang/String; = "drawable-ldpi"

.field private static final DRAWABLE_MDPI:Ljava/lang/String; = "drawable-mdpi"

.field private static final DRAWABLE_XHDPI:Ljava/lang/String; = "drawable-xhdpi"

.field private static final DRAWABLE_XXHDPI:Ljava/lang/String; = "drawable-xxhdpi"

.field private static final PRE_INSTALL_DRAWBLE_PATHS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const-class v0, Lcom/sina/weibo/sdk/utils/ResourceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/utils/ResourceManager;->TAG:Ljava/lang/String;

    .line 63
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 64
    const-string v2, "drawable-xxhdpi"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 65
    const-string v2, "drawable-xhdpi"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 66
    const-string v2, "drawable-hdpi"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 67
    const-string v2, "drawable-mdpi"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 68
    const-string v2, "drawable-ldpi"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 69
    const-string v2, "drawable"

    aput-object v2, v0, v1

    .line 63
    sput-object v0, Lcom/sina/weibo/sdk/utils/ResourceManager;->PRE_INSTALL_DRAWBLE_PATHS:[Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 8
    .param p0, "normal"    # I
    .param p1, "pressed"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 334
    new-array v0, v2, [I

    aput p1, v0, v4

    aput p1, v0, v5

    aput p1, v0, v6

    aput p0, v0, v7

    .line 335
    .local v0, "colors":[I
    new-array v1, v2, [[I

    .line 336
    .local v1, "states":[[I
    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v4

    .line 337
    new-array v2, v5, [I

    const v3, 0x10100a1

    aput v3, v2, v4

    aput-object v2, v1, v5

    .line 338
    new-array v2, v5, [I

    const v3, 0x101009c

    aput v3, v2, v4

    aput-object v2, v1, v6

    .line 339
    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    aput-object v2, v1, v7

    .line 340
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method public static createStateListDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "normalPicName"    # Ljava/lang/String;
    .param p2, "pressedPicName"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 344
    const/4 v1, 0x0

    .line 345
    .local v1, "normalDrawable":Landroid/graphics/drawable/Drawable;
    const-string v3, ".9"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v4, :cond_0

    .line 346
    invoke-static {p0, p1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 350
    :goto_0
    const/4 v2, 0x0

    .line 351
    .local v2, "pressedDrawable":Landroid/graphics/drawable/Drawable;
    const-string v3, ".9"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v4, :cond_1

    .line 352
    invoke-static {p0, p2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 356
    :goto_1
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 357
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 358
    new-array v3, v6, [I

    const v4, 0x10100a1

    aput v4, v3, v5

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 359
    new-array v3, v6, [I

    const v4, 0x101009c

    aput v4, v3, v5

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 360
    sget-object v3, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 361
    return-object v0

    .line 348
    .end local v0    # "drawable":Landroid/graphics/drawable/StateListDrawable;
    .end local v2    # "pressedDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-static {p0, p1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 354
    .restart local v2    # "pressedDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-static {p0, p2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1
.end method

.method public static createStateListDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "normalPicName"    # Ljava/lang/String;
    .param p2, "pressedPicName"    # Ljava/lang/String;
    .param p3, "enabledPicName"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 366
    const/4 v2, 0x0

    .line 367
    .local v2, "normalDrawable":Landroid/graphics/drawable/Drawable;
    const-string v4, ".9"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v5, :cond_0

    .line 368
    invoke-static {p0, p1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 372
    :goto_0
    const/4 v1, 0x0

    .line 373
    .local v1, "enableDrawable":Landroid/graphics/drawable/Drawable;
    const-string v4, ".9"

    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v5, :cond_1

    .line 374
    invoke-static {p0, p3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 378
    :goto_1
    const/4 v3, 0x0

    .line 379
    .local v3, "pressedDrawable":Landroid/graphics/drawable/Drawable;
    const-string v4, ".9"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v5, :cond_2

    .line 380
    invoke-static {p0, p2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 384
    :goto_2
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 385
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v4, v7, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    invoke-virtual {v0, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 386
    new-array v4, v7, [I

    const v5, 0x10100a1

    aput v5, v4, v6

    invoke-virtual {v0, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 387
    new-array v4, v7, [I

    const v5, 0x101009c

    aput v5, v4, v6

    invoke-virtual {v0, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 388
    new-array v4, v7, [I

    const v5, 0x101000e

    aput v5, v4, v6

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 389
    sget-object v4, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v0, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 390
    return-object v0

    .line 370
    .end local v0    # "drawable":Landroid/graphics/drawable/StateListDrawable;
    .end local v1    # "enableDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "pressedDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-static {p0, p1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 376
    .restart local v1    # "enableDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-static {p0, p3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 382
    .restart local v3    # "pressedDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-static {p0, p2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_2
.end method

.method public static dp2px(Landroid/content/Context;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # I

    .prologue
    .line 328
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 329
    .local v0, "dm":Landroid/util/DisplayMetrics;
    int-to-float v2, p1

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 330
    .local v1, "px":I
    return v1
.end method

.method private static extractDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 310
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 311
    .local v0, "dm":Landroid/util/DisplayMetrics;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 313
    .local v3, "value":Landroid/util/TypedValue;
    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v4, v3, Landroid/util/TypedValue;->density:I

    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 315
    invoke-static {v4, v3, v2, p1}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 317
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 318
    return-object v1
.end method

.method private static extractView(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 303
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 302
    check-cast v0, Landroid/view/LayoutInflater;

    .line 304
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method private static getAppropriatePathOfDrawable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 144
    sget-object v8, Lcom/sina/weibo/sdk/utils/ResourceManager;->TAG:Ljava/lang/String;

    const-string v9, "id is NOT correct!"

    invoke-static {v8, v9}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 189
    :cond_0
    :goto_0
    return-object v6

    .line 148
    :cond_1
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getCurrentDpiFolder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "currentDpi":Ljava/lang/String;
    sget-object v8, Lcom/sina/weibo/sdk/utils/ResourceManager;->TAG:Ljava/lang/String;

    const-string v9, "find Appropriate path..."

    invoke-static {v8, v9}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v2, -0x1

    .line 153
    .local v2, "existIndexLeftDpi":I
    const/4 v1, -0x1

    .line 154
    .local v1, "currentDpiIndex":I
    const/4 v3, -0x1

    .line 155
    .local v3, "existIndexRightDpi":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_1
    sget-object v8, Lcom/sina/weibo/sdk/utils/ResourceManager;->PRE_INSTALL_DRAWBLE_PATHS:[Ljava/lang/String;

    array-length v8, v8

    if-lt v4, v8, :cond_2

    .line 172
    :goto_2
    const/4 v5, -0x1

    .line 173
    .local v5, "properDpi":I
    if-lez v2, :cond_7

    if-lez v3, :cond_7

    .line 174
    sub-int v8, v1, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int v9, v1, v2

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-gt v8, v9, :cond_6

    move v5, v3

    .line 184
    :goto_3
    if-gez v5, :cond_a

    .line 186
    sget-object v8, Lcom/sina/weibo/sdk/utils/ResourceManager;->TAG:Ljava/lang/String;

    const-string v9, "Not find the appropriate path for drawable"

    invoke-static {v8, v9}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 187
    goto :goto_0

    .line 156
    .end local v5    # "properDpi":I
    :cond_2
    sget-object v8, Lcom/sina/weibo/sdk/utils/ResourceManager;->PRE_INSTALL_DRAWBLE_PATHS:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 157
    move v1, v4

    .line 159
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/sina/weibo/sdk/utils/ResourceManager;->PRE_INSTALL_DRAWBLE_PATHS:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, "resPath":Ljava/lang/String;
    invoke-static {p0, v6}, Lcom/sina/weibo/sdk/utils/ResourceManager;->isFileExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 161
    if-eq v1, v4, :cond_0

    .line 163
    if-gez v1, :cond_5

    .line 164
    move v2, v4

    .line 155
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 166
    :cond_5
    move v3, v4

    .line 167
    goto :goto_2

    .end local v6    # "resPath":Ljava/lang/String;
    .restart local v5    # "properDpi":I
    :cond_6
    move v5, v2

    .line 174
    goto :goto_3

    .line 175
    :cond_7
    if-lez v2, :cond_8

    if-gez v3, :cond_8

    .line 176
    move v5, v2

    .line 177
    goto :goto_3

    :cond_8
    if-gez v2, :cond_9

    if-lez v3, :cond_9

    .line 178
    move v5, v3

    .line 179
    goto :goto_3

    .line 180
    :cond_9
    const/4 v5, -0x1

    .line 181
    sget-object v8, Lcom/sina/weibo/sdk/utils/ResourceManager;->TAG:Ljava/lang/String;

    const-string v9, "Not find the appropriate path for drawable"

    invoke-static {v8, v9}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 189
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/sina/weibo/sdk/utils/ResourceManager;->PRE_INSTALL_DRAWBLE_PATHS:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private static getCurrentDpiFolder(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0xf0

    const/16 v4, 0xa0

    const/16 v3, 0x78

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 284
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 285
    .local v0, "density":I
    if-gt v0, v3, :cond_0

    .line 286
    const-string v2, "drawable-ldpi"

    .line 294
    :goto_0
    return-object v2

    .line 287
    :cond_0
    if-le v0, v3, :cond_1

    if-gt v0, v4, :cond_1

    .line 288
    const-string v2, "drawable-mdpi"

    goto :goto_0

    .line 289
    :cond_1
    if-le v0, v4, :cond_2

    if-gt v0, v5, :cond_2

    .line 290
    const-string v2, "drawable-hdpi"

    goto :goto_0

    .line 291
    :cond_2
    if-le v0, v5, :cond_3

    const/16 v2, 0x140

    if-gt v0, v2, :cond_3

    .line 292
    const-string v2, "drawable-xhdpi"

    goto :goto_0

    .line 294
    :cond_3
    const-string v2, "drawable-xxhdpi"

    goto :goto_0
.end method

.method public static getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {p0, p1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getAppropriatePathOfDrawable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "path":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawableFromAssert(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private static getDrawableFromAssert(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "isNinePatch"    # Z

    .prologue
    .line 205
    const/4 v12, 0x0

    .line 206
    .local v12, "rtDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    .line 207
    .local v7, "asseets":Landroid/content/res/AssetManager;
    const/4 v10, 0x0

    .line 209
    .local v10, "is":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 210
    if-eqz v10, :cond_4

    .line 211
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 212
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 213
    .local v11, "metrics":Landroid/util/DisplayMetrics;
    if-eqz p2, :cond_1

    .line 214
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 215
    .local v8, "config":Landroid/content/res/Configuration;
    new-instance v2, Landroid/content/res/Resources;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-direct {v2, v4, v11, v8}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 216
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    .line 217
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v5, v6, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x0

    .line 216
    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "config":Landroid/content/res/Configuration;
    .end local v11    # "metrics":Landroid/util/DisplayMetrics;
    .end local v12    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    .local v1, "rtDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v10, :cond_0

    .line 228
    :try_start_1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 233
    :goto_1
    const/4 v10, 0x0

    .line 237
    :cond_0
    :goto_2
    return-object v1

    .line 219
    .end local v1    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v12    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_2
    iget v4, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 220
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v12    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 223
    .end local v1    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v12    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v9

    .line 224
    .local v9, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 226
    if-eqz v10, :cond_3

    .line 228
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 233
    :goto_3
    const/4 v10, 0x0

    move-object v1, v12

    .end local v12    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 229
    .end local v1    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v9

    .line 230
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 225
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 226
    if-eqz v10, :cond_2

    .line 228
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 233
    :goto_4
    const/4 v10, 0x0

    .line 235
    :cond_2
    throw v4

    .line 229
    :catch_2
    move-exception v9

    .line 230
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 229
    .end local v9    # "e":Ljava/io/IOException;
    .end local v12    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    :catch_3
    move-exception v9

    .line 230
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v1    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object v1, v12

    .end local v12    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .end local v1    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v12    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    move-object v1, v12

    .end local v12    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public static getLanguage()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 124
    .local v0, "locale":Ljava/util/Locale;
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "locale":Ljava/util/Locale;
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    goto :goto_0
.end method

.method public static getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-static {p0, p1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getAppropriatePathOfDrawable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "path":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawableFromAssert(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "en"    # Ljava/lang/String;
    .param p2, "cn"    # Ljava/lang/String;
    .param p3, "tw"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 82
    .local v0, "locale":Ljava/util/Locale;
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    .end local p2    # "cn":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 84
    .restart local p2    # "cn":Ljava/lang/String;
    :cond_0
    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p2, p3

    .line 85
    goto :goto_0

    :cond_1
    move-object p2, p1

    .line 87
    goto :goto_0
.end method

.method private static isFileExisted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 248
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v3

    .line 252
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 253
    .local v0, "asseets":Landroid/content/res/AssetManager;
    const/4 v2, 0x0

    .line 255
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 256
    sget-object v4, Lcom/sina/weibo/sdk/utils/ResourceManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "file ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] existed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    if-eqz v2, :cond_2

    .line 264
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 257
    :cond_2
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 268
    const/4 v2, 0x0

    goto :goto_1

    .line 258
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 260
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    sget-object v4, Lcom/sina/weibo/sdk/utils/ResourceManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "file ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] NOT existed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    if-eqz v2, :cond_0

    .line 264
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 266
    :catch_2
    move-exception v1

    .line 267
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 268
    const/4 v2, 0x0

    goto :goto_0

    .line 261
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 263
    if-eqz v2, :cond_3

    .line 264
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 270
    :cond_3
    :goto_2
    throw v3

    .line 266
    :catch_3
    move-exception v1

    .line 267
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 268
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static readCountryFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetName"    # Ljava/lang/String;

    .prologue
    .line 394
    const-string v1, ""

    .line 396
    .local v1, "content":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 397
    .local v4, "is":Ljava/io/InputStream;
    if-eqz v4, :cond_0

    .line 398
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 399
    .local v2, "dIs":Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v5

    .line 400
    .local v5, "length":I
    new-array v0, v5, [B

    .line 401
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 402
    const-string v6, "UTF-8"

    invoke-static {v0, v6}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .end local v0    # "buffer":[B
    .end local v2    # "dIs":Ljava/io/DataInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "length":I
    :cond_0
    :goto_0
    return-object v1

    .line 405
    :catch_0
    move-exception v3

    .line 406
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
