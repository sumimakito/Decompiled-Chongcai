.class public Lcom/baidu/vi/db/SQLiteDatabase4C;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeDB()Z
    .locals 1

    invoke-static {}, Lcom/baidu/vi/db/SQLiteDatabase4C;->isDBExists()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/vi/db/SQLiteDatabase4C;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static compileStatement(Ljava/lang/String;)Lcom/baidu/vi/db/SQLiteStatement4C;
    .locals 2

    sget-object v0, Lcom/baidu/vi/db/SQLiteDatabase4C;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/baidu/vi/db/SQLiteStatement4C;

    sget-object v1, Lcom/baidu/vi/db/SQLiteDatabase4C;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1, p0}, Lcom/baidu/vi/db/SQLiteStatement4C;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    sget-object v0, Lcom/baidu/vi/db/SQLiteDatabase4C;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public static isDBExists()Z
    .locals 1

    sget-object v0, Lcom/baidu/vi/db/SQLiteDatabase4C;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTableExists(Ljava/lang/String;)Z
    .locals 10

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    sget-object v0, Lcom/baidu/vi/db/SQLiteDatabase4C;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sqlite_master"

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "[sql]"

    aput-object v3, v2, v9

    const-string v3, "[type] = \'table\' and name = ?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p0, v4, v9

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    move v0, v9

    goto :goto_0
.end method

.method public static isThreadSafe()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static openDB(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/baidu/vi/db/SQLiteDatabase4C;->a:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v0, Lcom/baidu/vi/db/SQLiteDatabase4C;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    return v0
.end method

.method public static transactionBegin()Z
    .locals 2

    :try_start_0
    sget-object v0, Lcom/baidu/vi/db/SQLiteDatabase4C;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "BEGIN EXCLUSIVE;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static transactionCommit()Z
    .locals 2

    :try_start_0
    sget-object v0, Lcom/baidu/vi/db/SQLiteDatabase4C;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "COMMIT;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static transactionRollback()Z
    .locals 2

    :try_start_0
    sget-object v0, Lcom/baidu/vi/db/SQLiteDatabase4C;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ROLLBACK;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
