.class public Lcom/sina/weibo/sdk/utils/NetworkHelper;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCookies(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 265
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 266
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 267
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 268
    return-void
.end method

.method public static generateUA(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v5, "Android"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v5, "__"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v5, "weibo"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v5, "__"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v5, "sdk"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string v5, "__"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 286
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 287
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 288
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 289
    .local v4, "versionCode":Ljava/lang/String;
    const-string v5, "\\s+"

    const-string v6, "_"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "versionCode":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 290
    :catch_0
    move-exception v1

    .line 291
    .local v1, "localE":Ljava/lang/Exception;
    const-string v5, "unknown"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 128
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getNetworkInfo(Landroid/content/Context;I)Landroid/net/NetworkInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "networkType"    # I

    .prologue
    .line 152
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 153
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 175
    if-eqz p0, :cond_0

    .line 176
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 178
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    .line 181
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v1

    .line 178
    .restart local v0    # "info":Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    goto :goto_0
.end method

.method public static getWifiConnectivityState(Landroid/content/Context;)Landroid/net/NetworkInfo$DetailedState;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->getNetworkInfo(Landroid/content/Context;I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 215
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    goto :goto_0
.end method

.method public static getWifiState(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 199
    .local v0, "wifi":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 200
    const/4 v1, 0x4

    .line 203
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    goto :goto_0
.end method

.method public static hasInternetPermission(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 52
    if-eqz p0, :cond_0

    .line 53
    const-string v1, "android.permission.INTERNET"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMobileNetwork(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 103
    if-eqz p0, :cond_0

    .line 104
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 106
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    .line 115
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v1

    .line 110
    .restart local v0    # "info":Landroid/net/NetworkInfo;
    :cond_1
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 112
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 68
    if-eqz p0, :cond_0

    .line 69
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 70
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 73
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_0
    return v1
.end method

.method public static isWifiValid(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    if-eqz p0, :cond_1

    .line 85
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 87
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :goto_0
    return v1

    .restart local v0    # "info":Landroid/net/NetworkInfo;
    :cond_0
    move v1, v2

    .line 87
    goto :goto_0

    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_1
    move v1, v2

    .line 92
    goto :goto_0
.end method

.method public static wifiConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiSSID"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 229
    const/4 v1, 0x0

    .line 230
    .local v1, "isConnection":Z
    const-string v9, "wifi"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 231
    .local v7, "wifi":Landroid/net/wifi/WifiManager;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\""

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, "strQuotationSSID":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 234
    .local v8, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v8, :cond_2

    .line 235
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 236
    :cond_0
    const/4 v1, 0x1

    .line 256
    :cond_1
    :goto_0
    return v1

    .line 238
    :cond_2
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 239
    .local v4, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_1

    .line 240
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, "nAllIndex":I
    :goto_1
    if-ltz v3, :cond_1

    .line 241
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    iget-object v6, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 242
    .local v6, "strScanSSID":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 243
    :cond_3
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 244
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 245
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\""

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 246
    const/4 v9, 0x2

    iput v9, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 248
    invoke-virtual {v7, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 249
    .local v2, "nAddWifiId":I
    const/4 v9, 0x0

    invoke-virtual {v7, v2, v9}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v1

    .line 250
    goto :goto_0

    .line 240
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "nAddWifiId":I
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method
