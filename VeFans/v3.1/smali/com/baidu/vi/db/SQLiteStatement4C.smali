.class public Lcom/baidu/vi/db/SQLiteStatement4C;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/vi/db/SQLiteStatement4C;->a:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Lcom/baidu/vi/db/SQLiteStatement4C;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/vi/db/SQLiteStatement4C;->b:Ljava/util/HashMap;

    return-void
.end method

.method private extractParameters()[Ljava/lang/Object;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/baidu/vi/db/SQLiteStatement4C;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/baidu/vi/db/SQLiteStatement4C;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private extractStringParameters()[Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/baidu/vi/db/SQLiteStatement4C;->extractParameters()[Ljava/lang/Object;

    move-result-object v1

    array-length v0, v1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    :try_start_0
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :catch_0
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public Close()V
    .locals 0

    return-void
.end method

.method public bind(ID)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/vi/db/SQLiteStatement4C;->b:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bind(II)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/vi/db/SQLiteStatement4C;->b:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bind(ILjava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/vi/db/SQLiteStatement4C;->bindNull(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/vi/db/SQLiteStatement4C;->b:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public bind(I[B)V
    .locals 2

    array-length v0, p2

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/baidu/vi/db/SQLiteStatement4C;->bindNull(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/vi/db/SQLiteStatement4C;->b:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public bindNull(I)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/vi/db/SQLiteStatement4C;->b:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearBinds()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/vi/db/SQLiteStatement4C;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public execQuery()Lcom/baidu/vi/db/SQLiteResultSet4C;
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/baidu/vi/db/SQLiteStatement4C;->extractStringParameters()[Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/baidu/vi/db/SQLiteStatement4C;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/baidu/vi/db/SQLiteStatement4C;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/baidu/vi/db/SQLiteResultSet4C;

    invoke-direct {v0, v2}, Lcom/baidu/vi/db/SQLiteResultSet4C;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public execUpdate()Z
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/baidu/vi/db/SQLiteStatement4C;->extractParameters()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/vi/db/SQLiteStatement4C;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/baidu/vi/db/SQLiteStatement4C;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/vi/db/SQLiteStatement4C;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/baidu/vi/db/SQLiteStatement4C;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method
