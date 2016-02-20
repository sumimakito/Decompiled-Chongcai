.class Lcom/sina/weibo/sdk/cmd/BaseCmd;
.super Ljava/lang/Object;
.source "BaseCmd.java"


# instance fields
.field private mNotificationDelay:J

.field private mNotificationText:Ljava/lang/String;

.field private mNotificationTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/cmd/BaseCmd;->initFromJsonStr(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/cmd/BaseCmd;->initFromJsonObj(Lorg/json/JSONObject;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getNotificationDelay()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/sina/weibo/sdk/cmd/BaseCmd;->mNotificationDelay:J

    return-wide v0
.end method

.method public getNotificationText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/BaseCmd;->mNotificationText:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/BaseCmd;->mNotificationTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected initFromJsonObj(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 52
    const-string v0, "notification_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/BaseCmd;->mNotificationText:Ljava/lang/String;

    .line 53
    const-string v0, "notification_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/BaseCmd;->mNotificationTitle:Ljava/lang/String;

    .line 54
    const-string v0, "notification_delay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sina/weibo/sdk/cmd/BaseCmd;->mNotificationDelay:J

    .line 55
    return-void
.end method

.method protected initFromJsonStr(Ljava/lang/String;)V
    .locals 5
    .param p1, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 37
    if-nez p1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 42
    .local v1, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    .local v2, "jsonObj":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/sina/weibo/sdk/cmd/BaseCmd;->initFromJsonObj(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 46
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    .local v0, "e":Lorg/json/JSONException;
    .restart local v1    # "jsonObj":Lorg/json/JSONObject;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 47
    new-instance v3, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v4, "pase cmd has error !!!"

    invoke-direct {v3, v4}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 45
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setNotificationDelay(J)V
    .locals 0
    .param p1, "mNotificationDelay"    # J

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/sina/weibo/sdk/cmd/BaseCmd;->mNotificationDelay:J

    .line 79
    return-void
.end method

.method public setNotificationText(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNotificationText"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sina/weibo/sdk/cmd/BaseCmd;->mNotificationText:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setNotificationTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNotificationTitle"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sina/weibo/sdk/cmd/BaseCmd;->mNotificationTitle:Ljava/lang/String;

    .line 71
    return-void
.end method
