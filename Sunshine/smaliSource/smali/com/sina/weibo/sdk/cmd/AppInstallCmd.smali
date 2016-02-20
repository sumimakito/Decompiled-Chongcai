.class Lcom/sina/weibo/sdk/cmd/AppInstallCmd;
.super Lcom/sina/weibo/sdk/cmd/BaseCmd;
.source "AppInstallCmd.java"


# instance fields
.field private appPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private appSign:Ljava/lang/String;

.field private appVersion:J

.field private downloadUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sina/weibo/sdk/cmd/BaseCmd;-><init>()V

    .line 41
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
    .line 44
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/cmd/BaseCmd;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "JsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/cmd/BaseCmd;-><init>(Lorg/json/JSONObject;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getAppPackage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->appPackages:Ljava/util/List;

    return-object v0
.end method

.method public getAppSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->appSign:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->appVersion:J

    return-wide v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public initFromJsonObj(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/sina/weibo/sdk/cmd/BaseCmd;->initFromJsonObj(Lorg/json/JSONObject;)V

    .line 54
    const-string v1, "download_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->downloadUrl:Ljava/lang/String;

    .line 55
    const-string v1, "app_package"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "appPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->appPackages:Ljava/util/List;

    .line 59
    :cond_0
    const-string v1, "app_sign"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->appSign:Ljava/lang/String;

    .line 60
    const-string v1, "app_version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->appVersion:J

    .line 61
    return-void
.end method

.method public setAppPackage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "appPackage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->appPackages:Ljava/util/List;

    .line 77
    return-void
.end method

.method public setAppSign(Ljava/lang/String;)V
    .locals 0
    .param p1, "appSign"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->appSign:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setAppVersion(J)V
    .locals 0
    .param p1, "appVersion"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->appVersion:J

    .line 69
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->downloadUrl:Ljava/lang/String;

    .line 93
    return-void
.end method
