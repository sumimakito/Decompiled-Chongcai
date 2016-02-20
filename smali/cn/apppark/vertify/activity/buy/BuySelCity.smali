.class public Lcn/apppark/vertify/activity/buy/BuySelCity;
.super Landroid/app/Activity;


# static fields
.field private static final GET_WHAT:I = 0x1


# instance fields
.field private adapter:Lcn/apppark/vertify/activity/buy/adapter/BuySelAreaListAdapter;

.field private btn_back:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private f:Ljava/io/File;

.field private handler:Lfr;

.field private listView:Landroid/widget/ListView;

.field private ll_topmenubg:Landroid/widget/RelativeLayout;

.field private name:Ljava/lang/String;

.field private province_id:Ljava/lang/String;

.field private provinctList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object p0, p0, Lcn/apppark/vertify/activity/buy/BuySelCity;->context:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelCity;->provinctList:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuySelCity;Lcn/apppark/vertify/activity/buy/adapter/BuySelAreaListAdapter;)Lcn/apppark/vertify/activity/buy/adapter/BuySelAreaListAdapter;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuySelCity;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuySelAreaListAdapter;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuySelCity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelCity;->provinctList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuySelCity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelCity;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/buy/BuySelCity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelCity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/buy/BuySelCity;)Lfr;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelCity;->handler:Lfr;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/buy/BuySelCity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelCity;->province_id:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/buy/BuySelCity;)Lcn/apppark/vertify/activity/buy/adapter/BuySelAreaListAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelCity;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuySelAreaListAdapter;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/buy/BuySelCity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelCity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method private getData()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfq;

    invoke-direct {v1, p0}, Lfq;-><init>(Lcn/apppark/vertify/activity/buy/BuySelCity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private initWidget()V
    .locals 2

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuySelCity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a0115

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuySelCity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelCity;->btn_back:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelCity;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelCity;->btn_back:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/buy/BuySelCity$1;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/buy/BuySelCity$1;-><init>(Lcn/apppark/vertify/activity/buy/BuySelCity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0116

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuySelCity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelCity;->listView:Landroid/widget/ListView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelCity;->listView:Landroid/widget/ListView;

    new-instance v1, Lfp;

    invoke-direct {v1, p0}, Lfp;-><init>(Lcn/apppark/vertify/activity/buy/BuySelCity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public getProSet(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelCity;->f:Ljava/io/File;

    invoke-static {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "citys"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "provience_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/apppark/vertify/activity/buy/BuySelCity;->province_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "id"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;

    invoke-direct {v2}, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;-><init>()V

    const-string v3, "city"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->setName(Ljava/lang/String;)V

    const-string v3, "id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->setId(I)V

    const-string v3, "city_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->setCity_id(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->setNext(Z)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, v0, p3}, Lcn/apppark/vertify/activity/buy/BuySelCity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuySelCity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuySelCity;->setContentView(I)V

    new-instance v0, Lfr;

    invoke-direct {v0, p0}, Lfr;-><init>(Lcn/apppark/vertify/activity/buy/BuySelCity;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelCity;->handler:Lfr;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuySelCity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelCity;->province_id:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuySelCity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelCity;->name:Ljava/lang/String;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuySelCity;->initWidget()V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcn/apppark/ckj10185912/HQCHApplication;->getInstance()Lcn/apppark/ckj10185912/HQCHApplication;

    move-result-object v1

    const-string v2, "db_city.db"

    invoke-virtual {v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelCity;->f:Ljava/io/File;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelCity;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuySelCity;->getData()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/apppark/ckj10185912/HQCHApplication;->getInstance()Lcn/apppark/ckj10185912/HQCHApplication;

    move-result-object v0

    const-string v1, "\u5730\u533a\u52a0\u8f7d\u5931\u8d25"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    goto :goto_0
.end method
