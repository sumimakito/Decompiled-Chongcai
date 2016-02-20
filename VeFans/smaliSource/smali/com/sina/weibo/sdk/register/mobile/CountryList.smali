.class public Lcom/sina/weibo/sdk/register/mobile/CountryList;
.super Ljava/lang/Object;
.source "CountryList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public countries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/register/mobile/Country;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/register/mobile/CountryList;->initFromJsonStr(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method private initFromJsonStr(Ljava/lang/String;)V
    .locals 2
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 27
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    .local v1, "jsonObj":Lorg/json/JSONObject;
    invoke-virtual {p0, v1}, Lcom/sina/weibo/sdk/register/mobile/CountryList;->initFromJsonObject(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public initFromJsonObject(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 36
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/sina/weibo/sdk/register/mobile/CountryList;->countries:Ljava/util/List;

    .line 38
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 39
    .local v6, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 60
    return-void

    .line 40
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 41
    .local v2, "countryName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 42
    .local v5, "jsonCountry":Lorg/json/JSONObject;
    const-string v10, "code"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "countryCode":Ljava/lang/String;
    const-string v10, "rule"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 45
    .local v9, "rule":Lorg/json/JSONObject;
    const-string v10, "mcc"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 46
    .local v7, "mcc":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v8, v10, [Ljava/lang/String;

    .line 47
    .local v8, "mccArray":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v4, v10, :cond_1

    .line 51
    new-instance v0, Lcom/sina/weibo/sdk/register/mobile/Country;

    invoke-direct {v0, v2, v1}, Lcom/sina/weibo/sdk/register/mobile/Country;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .local v0, "country":Lcom/sina/weibo/sdk/register/mobile/Country;
    invoke-virtual {v0, v8}, Lcom/sina/weibo/sdk/register/mobile/Country;->setMccs([Ljava/lang/String;)V

    .line 53
    iget-object v10, p0, Lcom/sina/weibo/sdk/register/mobile/CountryList;->countries:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    .end local v0    # "country":Lcom/sina/weibo/sdk/register/mobile/Country;
    .end local v1    # "countryCode":Ljava/lang/String;
    .end local v2    # "countryName":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "jsonCountry":Lorg/json/JSONObject;
    .end local v6    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "mcc":Lorg/json/JSONArray;
    .end local v8    # "mccArray":[Ljava/lang/String;
    .end local v9    # "rule":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 57
    .local v3, "e1":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 58
    new-instance v10, Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-direct {v10, v3}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 48
    .end local v3    # "e1":Lorg/json/JSONException;
    .restart local v1    # "countryCode":Ljava/lang/String;
    .restart local v2    # "countryName":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "jsonCountry":Lorg/json/JSONObject;
    .restart local v6    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7    # "mcc":Lorg/json/JSONArray;
    .restart local v8    # "mccArray":[Ljava/lang/String;
    .restart local v9    # "rule":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
