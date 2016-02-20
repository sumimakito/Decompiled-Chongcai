.class Lcom/sina/weibo/sdk/cmd/CmdInfo;
.super Ljava/lang/Object;
.source "CmdInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private frequency:I

.field private mInstallCmds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/cmd/AppInstallCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mInvokeCmds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/sina/weibo/sdk/cmd/BaseCmd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/cmd/CmdInfo;->TAG:Ljava/lang/String;

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
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/cmd/CmdInfo;->initFromJsonStr(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method private initFromJsonStr(Ljava/lang/String;)V
    .locals 11
    .param p1, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 27
    if-nez p1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32
    .local v7, "jsonObj":Lorg/json/JSONObject;
    const-string v8, "error"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 33
    const-string v8, "error_code"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 34
    :cond_2
    sget-object v8, Lcom/sina/weibo/sdk/cmd/CmdInfo;->TAG:Ljava/lang/String;

    const-string v9, "load cmd api has error !!!"

    invoke-static {v8, v9}, Lcom/sina/weibo/sdk/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v8, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v9, "load cmd api has error !!!"

    invoke-direct {v8, v9}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v7    # "jsonObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Lorg/json/JSONException;
    sget-object v8, Lcom/sina/weibo/sdk/cmd/CmdInfo;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "parse NotificationInfo error: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 37
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v7    # "jsonObj":Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    const-string v8, "cmd"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 38
    .local v0, "cmdJsonObj":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 39
    const-string v8, "frequency"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sina/weibo/sdk/cmd/CmdInfo;->frequency:I

    .line 40
    const-string v8, "app_install"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 41
    .local v3, "installCmdArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_4

    .line 42
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/sina/weibo/sdk/cmd/CmdInfo;->mInstallCmds:Ljava/util/List;

    .line 43
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v2, v8, :cond_5

    .line 49
    .end local v2    # "i":I
    :cond_4
    const-string v8, "app_invoke"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 50
    .local v5, "invokeCmdArray":Lorg/json/JSONArray;
    if-eqz v5, :cond_0

    .line 51
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/sina/weibo/sdk/cmd/CmdInfo;->mInvokeCmds:Ljava/util/List;

    .line 52
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 53
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 54
    .local v6, "invokeCmdJsonObj":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/sina/weibo/sdk/cmd/CmdInfo;->mInvokeCmds:Ljava/util/List;

    new-instance v9, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;

    invoke-direct {v9, v6}, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 44
    .end local v5    # "invokeCmdArray":Lorg/json/JSONArray;
    .end local v6    # "invokeCmdJsonObj":Lorg/json/JSONObject;
    :cond_5
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 45
    .local v4, "installCmdJsonObj":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/sina/weibo/sdk/cmd/CmdInfo;->mInstallCmds:Ljava/util/List;

    new-instance v9, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;

    invoke-direct {v9, v4}, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getFrequency()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/sina/weibo/sdk/cmd/CmdInfo;->frequency:I

    return v0
.end method

.method public getInstallCmds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/cmd/AppInstallCmd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/CmdInfo;->mInstallCmds:Ljava/util/List;

    return-object v0
.end method

.method public getInvokeCmds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/CmdInfo;->mInvokeCmds:Ljava/util/List;

    return-object v0
.end method

.method public setFrequency(I)V
    .locals 0
    .param p1, "frequency"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/sina/weibo/sdk/cmd/CmdInfo;->frequency:I

    .line 85
    return-void
.end method

.method public setInstallCmds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/cmd/AppInstallCmd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "mInstallCmds":Ljava/util/List;, "Ljava/util/List<Lcom/sina/weibo/sdk/cmd/AppInstallCmd;>;"
    iput-object p1, p0, Lcom/sina/weibo/sdk/cmd/CmdInfo;->mInstallCmds:Ljava/util/List;

    .line 69
    return-void
.end method

.method public setInvokeCmds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "mInvokeCmds":Ljava/util/List;, "Ljava/util/List<Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;>;"
    iput-object p1, p0, Lcom/sina/weibo/sdk/cmd/CmdInfo;->mInvokeCmds:Ljava/util/List;

    .line 77
    return-void
.end method
