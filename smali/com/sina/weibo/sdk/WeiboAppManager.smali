.class public Lcom/sina/weibo/sdk/WeiboAppManager;
.super Ljava/lang/Object;
.source "WeiboAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;
    }
.end annotation


# static fields
.field private static final SDK_INT_FILE_NAME:Ljava/lang/String; = "weibo_for_sdk.json"

.field private static final TAG:Ljava/lang/String;

.field private static final WEIBO_IDENTITY_ACTION:Ljava/lang/String; = "com.sina.weibo.action.sdkidentity"

.field private static final WEIBO_NAME_URI:Landroid/net/Uri;

.field private static sInstance:Lcom/sina/weibo/sdk/WeiboAppManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/sina/weibo/sdk/WeiboAppManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/WeiboAppManager;->TAG:Ljava/lang/String;

    .line 26
    const-string v0, "content://com.sina.weibo.sdkProvider/query/package"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/WeiboAppManager;->WEIBO_NAME_URI:Landroid/net/Uri;

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/WeiboAppManager;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sina/weibo/sdk/WeiboAppManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const-class v1, Lcom/sina/weibo/sdk/WeiboAppManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sina/weibo/sdk/WeiboAppManager;->sInstance:Lcom/sina/weibo/sdk/WeiboAppManager;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/sina/weibo/sdk/WeiboAppManager;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/WeiboAppManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sina/weibo/sdk/WeiboAppManager;->sInstance:Lcom/sina/weibo/sdk/WeiboAppManager;

    .line 77
    :cond_0
    sget-object v0, Lcom/sina/weibo/sdk/WeiboAppManager;->sInstance:Lcom/sina/weibo/sdk/WeiboAppManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private queryWeiboInfoByAsset(Landroid/content/Context;)Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.sina.weibo.action.sdkidentity"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 170
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 171
    :cond_0
    const/4 v5, 0x0

    .line 193
    :cond_1
    return-object v5

    .line 174
    :cond_2
    const/4 v5, 0x0

    .line 175
    .local v5, "weiboInfo":Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 176
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_3

    .line 177
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_3

    .line 178
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 181
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 182
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sina/weibo/sdk/WeiboAppManager;->parseWeiboInfoByAsset(Ljava/lang/String;)Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    move-result-object v4

    .line 183
    .local v4, "tmpWeiboInfo":Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;
    if-eqz v4, :cond_3

    .line 184
    if-nez v5, :cond_4

    .line 185
    move-object v5, v4

    .line 186
    goto :goto_0

    .line 187
    :cond_4
    invoke-virtual {v5}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->getSupportApi()I

    move-result v7

    invoke-virtual {v4}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->getSupportApi()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 188
    move-object v5, v4

    goto :goto_0
.end method

.method private queryWeiboInfoByProvider(Landroid/content/Context;)Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 122
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 124
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sina/weibo/sdk/WeiboAppManager;->WEIBO_NAME_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 125
    if-nez v6, :cond_2

    .line 151
    if-eqz v6, :cond_0

    .line 152
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 153
    const/4 v6, 0x0

    .line 126
    :cond_0
    const/4 v13, 0x0

    .line 156
    :cond_1
    :goto_0
    return-object v13

    .line 129
    :cond_2
    :try_start_1
    const-string v1, "support_api"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 130
    .local v11, "supportApiIndex":I
    const-string v1, "package"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 131
    .local v8, "packageIndex":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 132
    const/4 v12, -0x1

    .line 133
    .local v12, "supportApiInt":I
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 135
    .local v10, "supportApi":Ljava/lang/String;
    :try_start_2
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v12

    .line 140
    :goto_1
    :try_start_3
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 141
    .local v9, "packageName":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p1, v9}, Lcom/sina/weibo/sdk/ApiUtils;->validateWeiboSign(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 142
    new-instance v13, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    invoke-direct {v13}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;-><init>()V

    .line 143
    .local v13, "winfo":Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;
    # invokes: Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->setPackageName(Ljava/lang/String;)V
    invoke-static {v13, v9}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->access$0(Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;Ljava/lang/String;)V

    .line 144
    # invokes: Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->setSupportApi(I)V
    invoke-static {v13, v12}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->access$1(Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    if-eqz v6, :cond_1

    .line 152
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 153
    const/4 v6, 0x0

    goto :goto_0

    .line 136
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v13    # "winfo":Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;
    :catch_0
    move-exception v7

    .line 137
    .local v7, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 148
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "packageIndex":I
    .end local v10    # "supportApi":Ljava/lang/String;
    .end local v11    # "supportApiIndex":I
    .end local v12    # "supportApiInt":I
    :catch_1
    move-exception v7

    .line 149
    .local v7, "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v1, Lcom/sina/weibo/sdk/WeiboAppManager;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 151
    if-eqz v6, :cond_3

    .line 152
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 153
    const/4 v6, 0x0

    .line 156
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    const/4 v13, 0x0

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v1

    .line 151
    if-eqz v6, :cond_4

    .line 152
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 153
    const/4 v6, 0x0

    .line 155
    :cond_4
    throw v1

    .line 151
    .restart local v8    # "packageIndex":I
    .restart local v11    # "supportApiIndex":I
    :cond_5
    if-eqz v6, :cond_3

    .line 152
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 153
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private queryWeiboInfoInternal(Landroid/content/Context;)Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 91
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/WeiboAppManager;->queryWeiboInfoByProvider(Landroid/content/Context;)Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    move-result-object v2

    .line 92
    .local v2, "winfo1":Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/WeiboAppManager;->queryWeiboInfoByAsset(Landroid/content/Context;)Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    move-result-object v3

    .line 94
    .local v3, "winfo2":Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;
    if-eqz v2, :cond_1

    move v0, v1

    .line 95
    .local v0, "hasWinfo1":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 96
    .local v1, "hasWinfo2":Z
    :goto_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 97
    invoke-virtual {v2}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->getSupportApi()I

    move-result v4

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->getSupportApi()I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 111
    .end local v2    # "winfo1":Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;
    :cond_0
    :goto_2
    return-object v2

    .end local v0    # "hasWinfo1":Z
    .end local v1    # "hasWinfo2":Z
    .restart local v2    # "winfo1":Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;
    :cond_1
    move v0, v4

    .line 94
    goto :goto_0

    .restart local v0    # "hasWinfo1":Z
    :cond_2
    move v1, v4

    .line 95
    goto :goto_1

    .restart local v1    # "hasWinfo2":Z
    :cond_3
    move-object v2, v3

    .line 100
    goto :goto_2

    .line 103
    :cond_4
    if-nez v0, :cond_0

    .line 106
    if-eqz v1, :cond_5

    move-object v2, v3

    .line 107
    goto :goto_2

    .line 111
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized getWeiboInfo()Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/WeiboAppManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/WeiboAppManager;->queryWeiboInfoInternal(Landroid/content/Context;)Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public parseWeiboInfoByAsset(Ljava/lang/String;)Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v13, -0x1

    const/4 v10, 0x0

    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v9, v10

    .line 251
    :cond_0
    :goto_0
    return-object v9

    .line 209
    :cond_1
    const/4 v3, 0x0

    .line 212
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v11, p0, Lcom/sina/weibo/sdk/WeiboAppManager;->mContext:Landroid/content/Context;

    const/4 v12, 0x2

    invoke-virtual {v11, p1, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    .line 214
    .local v8, "weiboContext":Landroid/content/Context;
    const/16 v1, 0x1000

    .line 215
    .local v1, "bufferSize":I
    const/16 v11, 0x1000

    new-array v0, v11, [B

    .line 217
    .local v0, "buf":[B
    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    const-string v12, "weibo_for_sdk.json"

    invoke-virtual {v11, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 218
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .local v6, "sbContent":Ljava/lang/StringBuilder;
    :goto_1
    const/4 v11, 0x0

    const/16 v12, 0x1000

    invoke-virtual {v3, v0, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .local v5, "readNum":I
    if-ne v5, v13, :cond_4

    .line 223
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, p0, Lcom/sina/weibo/sdk/WeiboAppManager;->mContext:Landroid/content/Context;

    invoke-static {v11, p1}, Lcom/sina/weibo/sdk/ApiUtils;->validateWeiboSign(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_6

    .line 243
    :cond_2
    if-eqz v3, :cond_3

    .line 245
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_2
    move-object v9, v10

    .line 224
    goto :goto_0

    .line 221
    :cond_4
    :try_start_2
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v11, v0, v12, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 234
    .end local v0    # "buf":[B
    .end local v1    # "bufferSize":I
    .end local v5    # "readNum":I
    .end local v6    # "sbContent":Ljava/lang/StringBuilder;
    .end local v8    # "weiboContext":Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 235
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    sget-object v11, Lcom/sina/weibo/sdk/WeiboAppManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    if-eqz v3, :cond_5

    .line 245
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    :goto_3
    move-object v9, v10

    .line 251
    goto :goto_0

    .line 246
    .restart local v0    # "buf":[B
    .restart local v1    # "bufferSize":I
    .restart local v5    # "readNum":I
    .restart local v6    # "sbContent":Ljava/lang/StringBuilder;
    .restart local v8    # "weiboContext":Landroid/content/Context;
    :catch_1
    move-exception v2

    .line 247
    .local v2, "e":Ljava/io/IOException;
    sget-object v11, Lcom/sina/weibo/sdk/WeiboAppManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 226
    .end local v2    # "e":Ljava/io/IOException;
    :cond_6
    :try_start_5
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 227
    .local v4, "json":Lorg/json/JSONObject;
    const-string v11, "support_api"

    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 229
    .local v7, "supportApi":I
    new-instance v9, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    invoke-direct {v9}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;-><init>()V

    .line 230
    .local v9, "winfo":Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;
    # invokes: Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->setPackageName(Ljava/lang/String;)V
    invoke-static {v9, p1}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->access$0(Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;Ljava/lang/String;)V

    .line 231
    # invokes: Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->setSupportApi(I)V
    invoke-static {v9, v7}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->access$1(Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;I)V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 243
    if-eqz v3, :cond_0

    .line 245
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 246
    :catch_2
    move-exception v2

    .line 247
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v10, Lcom/sina/weibo/sdk/WeiboAppManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 246
    .end local v0    # "buf":[B
    .end local v1    # "bufferSize":I
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "readNum":I
    .end local v6    # "sbContent":Ljava/lang/StringBuilder;
    .end local v7    # "supportApi":I
    .end local v8    # "weiboContext":Landroid/content/Context;
    .end local v9    # "winfo":Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_3
    move-exception v2

    .line 247
    .local v2, "e":Ljava/io/IOException;
    sget-object v11, Lcom/sina/weibo/sdk/WeiboAppManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 236
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 237
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_7
    sget-object v11, Lcom/sina/weibo/sdk/WeiboAppManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 243
    if-eqz v3, :cond_5

    .line 245
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_3

    .line 246
    :catch_5
    move-exception v2

    .line 247
    sget-object v11, Lcom/sina/weibo/sdk/WeiboAppManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 238
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 239
    .local v2, "e":Lorg/json/JSONException;
    :try_start_9
    sget-object v11, Lcom/sina/weibo/sdk/WeiboAppManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 243
    if-eqz v3, :cond_5

    .line 245
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_3

    .line 246
    :catch_7
    move-exception v2

    .line 247
    .local v2, "e":Ljava/io/IOException;
    sget-object v11, Lcom/sina/weibo/sdk/WeiboAppManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 240
    .end local v2    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v2

    .line 241
    .local v2, "e":Ljava/lang/Exception;
    :try_start_b
    sget-object v11, Lcom/sina/weibo/sdk/WeiboAppManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 243
    if-eqz v3, :cond_5

    .line 245
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto/16 :goto_3

    .line 246
    :catch_9
    move-exception v2

    .line 247
    .local v2, "e":Ljava/io/IOException;
    sget-object v11, Lcom/sina/weibo/sdk/WeiboAppManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 242
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 243
    if-eqz v3, :cond_7

    .line 245
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 250
    :cond_7
    :goto_4
    throw v10

    .line 246
    :catch_a
    move-exception v2

    .line 247
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v11, Lcom/sina/weibo/sdk/WeiboAppManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method
