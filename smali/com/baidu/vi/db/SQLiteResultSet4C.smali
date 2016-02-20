.class public Lcom/baidu/vi/db/SQLiteResultSet4C;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/vi/db/SQLiteResultSet4C;->a:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/vi/db/SQLiteResultSet4C;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public getBlobValue(I)[B
    .locals 1

    iget-object v0, p0, Lcom/baidu/vi/db/SQLiteResultSet4C;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/vi/db/SQLiteResultSet4C;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/vi/db/SQLiteResultSet4C;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDoubleValue(I)D
    .locals 2

    iget-object v0, p0, Lcom/baidu/vi/db/SQLiteResultSet4C;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getIntValue(I)I
    .locals 1

    iget-object v0, p0, Lcom/baidu/vi/db/SQLiteResultSet4C;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/vi/db/SQLiteResultSet4C;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/vi/db/SQLiteResultSet4C;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method
