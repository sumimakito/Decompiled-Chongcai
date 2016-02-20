.class public Lcom/tencent/tauth/AuthActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# static fields
.field private static final ACTION_ADD_TO_QQFAVORITES:Ljava/lang/String; = "addToQQFavorites"

.field public static final ACTION_KEY:Ljava/lang/String; = "action"

.field private static final ACTION_SEND_TO_MY_COMPUTER:Ljava/lang/String; = "sendToMyComputer"

.field public static final ACTION_SHARE_PRIZE:Ljava/lang/String; = "sharePrize"

.field private static final ACTION_SHARE_TO_QQ:Ljava/lang/String; = "shareToQQ"

.field private static final ACTION_SHARE_TO_QZONE:Ljava/lang/String; = "shareToQzone"

.field private static final ACTION_SHARE_TO_TROOP_BAR:Ljava/lang/String; = "shareToTroopBar"

.field private static final SHARE_PRIZE_ACTIVITY_ID:Ljava/lang/String; = "activityid"

.field private static final TAG:Ljava/lang/String; = "openSDK_LOG.AuthActivity"

.field private static mShareQzoneBackTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput v0, Lcom/tencent/tauth/AuthActivity;->mShareQzoneBackTime:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private execAuthCallback(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 158
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    .line 189
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-static {}, Lcom/tencent/connect/auth/AuthMap;->getInstance()Lcom/tencent/connect/auth/AuthMap;

    move-result-object v0

    .line 163
    const-string v1, "serial"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Lcom/tencent/connect/auth/AuthMap;->get(Ljava/lang/String;)Lcom/tencent/connect/auth/AuthMap$Auth;

    move-result-object v2

    .line 165
    if-eqz v2, :cond_2

    .line 166
    const-string v3, "://cancel"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 167
    iget-object v3, v2, Lcom/tencent/connect/auth/AuthMap$Auth;->listener:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v3}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    .line 168
    iget-object v2, v2, Lcom/tencent/connect/auth/AuthMap$Auth;->dialog:Lcom/tencent/connect/auth/AuthDialog;

    invoke-virtual {v2}, Lcom/tencent/connect/auth/AuthDialog;->dismiss()V

    .line 186
    :goto_1
    invoke-virtual {v0, v1}, Lcom/tencent/connect/auth/AuthMap;->remove(Ljava/lang/String;)V

    .line 188
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto :goto_0

    .line 170
    :cond_3
    const-string v3, "access_token"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    if-eqz v3, :cond_4

    .line 172
    const-string v4, "access_token"

    iget-object v5, v2, Lcom/tencent/connect/auth/AuthMap$Auth;->key:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Lcom/tencent/connect/auth/AuthMap;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_4
    invoke-static {p1}, Lcom/tencent/open/utils/Util;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 175
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 176
    invoke-static {v4, v3}, Lcom/tencent/open/utils/Util;->decodeUrlToJson(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 177
    const-string v4, "cb"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 178
    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 179
    iget-object v2, v2, Lcom/tencent/connect/auth/AuthMap$Auth;->dialog:Lcom/tencent/connect/auth/AuthDialog;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/tencent/connect/auth/AuthDialog;->callJs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 182
    :cond_5
    iget-object v4, v2, Lcom/tencent/connect/auth/AuthMap$Auth;->listener:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v4, v3}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    .line 183
    iget-object v2, v2, Lcom/tencent/connect/auth/AuthMap$Auth;->dialog:Lcom/tencent/connect/auth/AuthDialog;

    invoke-virtual {v2}, Lcom/tencent/connect/auth/AuthDialog;->dismiss()V

    goto :goto_1
.end method

.method private handleActionUri(Landroid/net/Uri;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 78
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    .line 155
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Lcom/tencent/open/utils/Util;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 86
    if-nez v1, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto :goto_0

    .line 91
    :cond_2
    const-string v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    const-string v3, "openSDK_LOG.AuthActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->handleActionUri, action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    if-nez v2, :cond_3

    .line 94
    invoke-direct {p0, v1, v0}, Lcom/tencent/tauth/AuthActivity;->execAuthCallback(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_3
    const-string v3, "shareToQQ"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "shareToQzone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "sendToMyComputer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "shareToTroopBar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 102
    :cond_4
    const-string v0, "shareToQzone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "com.tencent.mobileqq"

    invoke-static {p0, v0}, Lcom/tencent/open/utils/SystemUtils;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "5.2.0"

    invoke-static {p0, v0}, Lcom/tencent/open/utils/SystemUtils;->compareQQVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_5

    .line 106
    sget v0, Lcom/tencent/tauth/AuthActivity;->mShareQzoneBackTime:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/tauth/AuthActivity;->mShareQzoneBackTime:I

    .line 107
    sget v0, Lcom/tencent/tauth/AuthActivity;->mShareQzoneBackTime:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 108
    const/4 v0, 0x0

    sput v0, Lcom/tencent/tauth/AuthActivity;->mShareQzoneBackTime:I

    .line 109
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto/16 :goto_0

    .line 115
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/connect/common/AssistActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 117
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    sput-boolean v6, Lcom/tencent/connect/common/AssistActivity;->hackAuthActivity:Z

    .line 119
    invoke-virtual {p0, v0}, Lcom/tencent/tauth/AuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 120
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto/16 :goto_0

    .line 121
    :cond_6
    const-string v3, "addToQQFavorites"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 122
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 123
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 124
    const-string v0, "key_action"

    const-string v1, "action_share"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-static {v2}, Lcom/tencent/open/utils/TemporaryStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_7

    .line 128
    check-cast v0, Lcom/tencent/tauth/IUiListener;

    invoke-static {v3, v0}, Lcom/tencent/connect/common/BaseApi;->handleDataToListener(Landroid/content/Intent;Lcom/tencent/tauth/IUiListener;)V

    .line 130
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto/16 :goto_0

    .line 131
    :cond_8
    const-string v3, "sharePrize"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 132
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 134
    const-string v0, "response"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    const-string v0, ""

    .line 138
    :try_start_0
    invoke-static {v1}, Lcom/tencent/open/utils/Util;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 139
    const-string v3, "activityid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 144
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 145
    const-string v1, "sharePrize"

    invoke-virtual {v2, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 147
    const-string v3, "activityid"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 150
    :cond_9
    invoke-virtual {p0, v2}, Lcom/tencent/tauth/AuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto/16 :goto_0

    .line 140
    :catch_0
    move-exception v1

    .line 141
    const-string v1, "openSDK_LOG.AuthActivity"

    const-string v3, "sharePrize parseJson has exception."

    invoke-static {v1, v3}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 153
    :cond_a
    invoke-direct {p0, v1, v0}, Lcom/tencent/tauth/AuthActivity;->execAuthCallback(Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 72
    :goto_1
    const-string v1, "openSDK_LOG.AuthActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->onCreate, uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0, v0}, Lcom/tencent/tauth/AuthActivity;->handleActionUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    const-string v2, "openSDK_LOG.AuthActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->onCreate, getIntent().getData() has exception! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
