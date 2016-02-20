.class public Lcn/apppark/ckj10185912/YYGYContants;
.super Ljava/lang/Object;


# static fields
.field public static final ABOUT_YYGY:Ljava/lang/String; = "http://www.apppark.cn/about.html"

.field public static final BAIDU_MAP_KEY:Ljava/lang/String; = "306DC9F2BBE9263792E9B3301D33C09A98E6EC8D"

.field public static final DOMAIN:Ljava/lang/String; = "http://ws.cms.hqch.com"

.field public static final DYN_SUBURL:Ljava/lang/String; = "http://www.apppark.cn/info.ws"

.field public static final DYN_SUBURL_CLICKGOOD:Ljava/lang/String; = "http://www.apppark.cn/praise.ws"

.field public static final DYN_SUBURL_MEMBER:Ljava/lang/String; = "http://www.apppark.cn/member.ws"

.field public static final DYN_SUBURL_PRODUCT:Ljava/lang/String; = "http://www.apppark.cn/cms.ws"

.field public static IMAGE_CACHE_PATH:Ljava/lang/String; = null

.field public static IMAGE_CACHE_UPLOAD:Ljava/lang/String; = null

.field public static IMEI:Ljava/lang/String; = null

.field public static MODEL:Ljava/lang/String; = null

.field public static PERSIONCENTER_DEFAULT_COLOR:Ljava/lang/String; = null

.field public static PERSIONCENTER_TOP_COLOR:Ljava/lang/String; = null

.field public static PHONE_NUMBER:Ljava/lang/String; = null

.field public static final PUSH_IP_USE:Ljava/lang/String; = "http://www.apppark.cn/"

.field public static final PUSH_TIME:I = 0x124f80

.field public static RELEASE:Ljava/lang/String; = null

.field public static final ROOT_DIR:Ljava/lang/String; = "yygy"

.field public static SDK:I = 0x0

.field public static SHARE_ACTION_MSG:Ljava/lang/String; = null

.field public static SMS_COUTTIME:I = 0x0

.field public static SMS_LAST_SENDTIME:J = 0x0L

.field public static final SOFT_SUBURL:Ljava/lang/String; = "http://www.apppark.cn/ad.ws"

.field public static START_TIME:Ljava/lang/String; = null

.field public static SYSTEM:Ljava/lang/String; = null

.field public static final UPDATA_BUSINESS:Ljava/lang/String; = "http://www.apppark.cn/business.ws"

.field public static final UPDATA_DOMAIN:Ljava/lang/String; = "http://ws.ckj.hqch.com"

.field public static final UPDATA_SUBURL:Ljava/lang/String; = "http://www.apppark.cn/software.ws"

.field public static USETIME_FILE_NAME:Ljava/lang/String; = null

.field public static VERSION_CODE:Ljava/lang/String; = null

.field public static VIP_0:Ljava/lang/String; = null

.field public static VIP_1:Ljava/lang/String; = null

.field public static VIP_2:Ljava/lang/String; = null

.field public static VIP_3:Ljava/lang/String; = null

.field public static baseCachePath:Ljava/lang/String; = null

.field public static baseImgCachePath:Ljava/lang/String; = null

.field public static dpi:I = 0x0

.field public static dpiScaleUnite:F = 0.0f

.field public static isActive:Z = false

.field public static mBMapManager:Lcom/baidu/mapapi/BMapManager; = null

.field public static mDirGenerator:Lcn/apppark/vertify/base/YygyResourceDirGenerator; = null

.field public static mFloatSel:[F = null

.field public static mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler; = null

.field public static mLocalDrawableCaches:Lcn/apppark/mcd/util/imge/DrawableCache; = null

.field public static mNetworktImageCache:Lcn/apppark/mcd/util/imge/BitmapCache; = null

.field public static mainPageId:Ljava/lang/String; = null

.field public static final msgMethodName:Ljava/lang/String; = "updateMsgStatus"

.field public static final msgSubUrl:Ljava/lang/String; = "http://www.apppark.cn//push.ws"

.field public static final nameSpace:Ljava/lang/String; = "http://ws.ckj.hqch.com/"

.field public static final pushMethodName:Ljava/lang/String; = "getPushMsg"

.field public static final pushSubUrl_USE:Ljava/lang/String; = "http://www.apppark.cn//push.ws"

.field public static scaleUnite:F = 0.0f

.field public static screenHeight:I = 0x0

.field public static screenWidth:I = 0x0

.field public static final subMsgUrl:Ljava/lang/String; = "http://www.apppark.cn/form.ws"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mFloatSel:[F

    const/16 v0, 0x1e

    sput v0, Lcn/apppark/ckj10185912/YYGYContants;->SMS_COUTTIME:I

    const-string v0, "share_action_msg"

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->SHARE_ACTION_MSG:Ljava/lang/String;

    const-string v0, "0"

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->VIP_0:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->VIP_1:Ljava/lang/String;

    const-string v0, "2"

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->VIP_2:Ljava/lang/String;

    const-string v0, "3"

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->VIP_3:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcn/apppark/ckj10185912/YYGYContants;->SDK:I

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->MODEL:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->RELEASE:Ljava/lang/String;

    const-string v0, "android"

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->SYSTEM:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcn/apppark/ckj10185912/YYGYContants;->scaleUnite:F

    const-string v0, "3fc2f9"

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_DEFAULT_COLOR:Ljava/lang/String;

    const-string v0, "imgcache"

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->IMAGE_CACHE_PATH:Ljava/lang/String;

    const-string v0, "upload"

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->IMAGE_CACHE_UPLOAD:Ljava/lang/String;

    const-string v0, "usetime.json"

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->USETIME_FILE_NAME:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mainPageId:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/apppark/ckj10185912/YYGYContants;->isActive:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x42480000    # 50.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x42480000    # 50.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x42480000    # 50.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkResult(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "retFlag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkResult(Ljava/lang/String;II)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "retFlag"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "retMsg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lcn/apppark/ckj10185912/YYGYContants;->initToast(II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {p1, v1}, Lcn/apppark/ckj10185912/YYGYContants;->initToast(II)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v2, v0}, Lcn/apppark/ckj10185912/YYGYContants;->initToast(Ljava/lang/String;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "retFlag"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p2, :cond_2

    const-string v3, "retMsg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/apppark/ckj10185912/YYGYContants;->initToast(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {p1, v1}, Lcn/apppark/ckj10185912/YYGYContants;->initToast(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-static {p2, v2}, Lcn/apppark/ckj10185912/YYGYContants;->initToast(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    const-string v0, "retMsg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcn/apppark/ckj10185912/YYGYContants;->initToast(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static createPasswordDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 5

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030069

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/app/Dialog;

    const v2, 0x7f060011

    invoke-direct {v1, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    sget v4, Lcn/apppark/ckj10185912/YYGYContants;->screenHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public static getKey(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLoginClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->getNeedSMS()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcn/apppark/vertify/activity/persion/SmsLogin;

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcn/apppark/vertify/activity/persion/Login;

    goto :goto_0
.end method

.method public static getRegClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->getNeedSMS()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcn/apppark/vertify/activity/persion/SmsRegNew;

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcn/apppark/vertify/activity/persion/RegNew;

    goto :goto_0
.end method

.method public static getSuperPass()Ljava/lang/String;
    .locals 3

    const-string v0, "10185912"

    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static initToast(II)V
    .locals 1

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected static initToast(Ljava/lang/String;I)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static map2Json(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
