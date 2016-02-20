.class public Lcn/apppark/vertify/activity/free/dyn/DynRss5003;
.super Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

# interfaces
.implements Lcn/apppark/vertify/activity/ISelfViewDyn;


# static fields
.field private static final GET_WHAT:I = 0x1

.field private static final REF_DATA:I = 0x2


# instance fields
.field private adapter:Lcn/apppark/vertify/adapter/DynRss5003Adapter;

.field private code:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private currentPage:I

.field private currentY:I

.field private firstItemIndex:I

.field private found:Z

.field private handler:Ljr;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynRssItem5003Vo;",
            ">;"
        }
    .end annotation
.end field

.field private itemListTemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynRssItem5003Vo;",
            ">;"
        }
    .end annotation
.end field

.field private itemVo:Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;

.field private loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

.field private pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

.field private parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;Lcn/apppark/mcd/widget/ElasticScrollView;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->firstItemIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->itemList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->currentPage:I

    iput-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->result:Ljava/lang/String;

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->found:Z

    const-string v0, "utf-8"

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->code:Ljava/lang/String;

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->context:Landroid/content/Context;

    iput-object p3, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->itemVo:Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    new-instance v0, Ljr;

    invoke-direct {v0, p0, v2}, Ljr;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;Ljn;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->handler:Ljr;

    iput-object p4, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->setCacheColorHint(I)V

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->setFadingEdgeLength(I)V

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->setScrollingCacheEnabled(Z)V

    new-instance v0, Ljn;

    invoke-direct {v0, p0}, Ljn;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0, p4}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->setParentScroll(Lcn/apppark/mcd/widget/ElasticScrollView;)V

    new-instance v0, Ljo;

    invoke-direct {v0, p0}, Ljo;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListViewAutoLoad$OnFootRefreshListener;)V

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;->getStyle_bgPic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;->getStyle_bgColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;->getStyle_bgAlpha()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;->getStyle_rowBgType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;->getStyle_rowLinePic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;->getStyle_rowLineColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;->getStyle_rowLineHeight()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setDevider(Landroid/widget/ListView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;Lcn/apppark/vertify/adapter/DynRss5003Adapter;)Lcn/apppark/vertify/adapter/DynRss5003Adapter;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->adapter:Lcn/apppark/vertify/adapter/DynRss5003Adapter;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->code:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->itemListTemp:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;II)V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljp;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ljp;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->found:Z

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->currentPage:I

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->result:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->code:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Lcn/apppark/vertify/adapter/DynRss5003Adapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->adapter:Lcn/apppark/vertify/adapter/DynRss5003Adapter;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->itemListTemp:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->itemVo:Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;

    return-object v0
.end method

.method private getData(II)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljp;

    invoke-direct {v1, p0, p2}, Ljp;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->found:Z

    return v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->result:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Ljr;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->handler:Ljr;

    return-object v0
.end method

.method private refData()V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->currentPage:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljp;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Ljp;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    return-void
.end method

.method public initData()V
    .locals 3

    const/4 v2, 0x1

    iput v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->currentPage:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljp;

    invoke-direct {v1, p0, v2}, Ljp;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public isCache()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOnMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadFail(I)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    invoke-interface {v0, p1}, Lcn/apppark/vertify/activity/ILoadDataEndListener;->onLoadFail(I)V

    :cond_0
    return-void
.end method

.method public loadSuccess(I)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    invoke-interface {v0, p1}, Lcn/apppark/vertify/activity/ILoadDataEndListener;->onLoadSuccess(I)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRefresh()V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->currentPage:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljp;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Ljp;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onResume()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->adapter:Lcn/apppark/vertify/adapter/DynRss5003Adapter;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->setAdapter(Landroid/widget/BaseAdapter;)V

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->firstItemIndex:I

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public read(Ljava/io/InputStream;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public setLoadendListener(Lcn/apppark/vertify/activity/ILoadDataEndListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    return-void
.end method
