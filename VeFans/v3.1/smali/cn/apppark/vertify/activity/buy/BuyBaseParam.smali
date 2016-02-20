.class public Lcn/apppark/vertify/activity/buy/BuyBaseParam;
.super Ljava/lang/Object;


# static fields
.field public static final BUY_DEL_ORDER:Ljava/lang/String; = "http://www.apppark.cn/apliay_deleteOrder.action"

.field public static final BUY_DOMAIN:Ljava/lang/String; = "http://ws.ckj.hqch.com"

.field public static final BUY_GET_SERVER_ORDERSTATE:Ljava/lang/String; = "http://www.apppark.cn/apliay_order.action"

.field public static final BUY_GET_SIGN:Ljava/lang/String; = "http://www.apppark.cn/apliay_sign.action"

.field public static final BUY_IP:Ljava/lang/String; = "http://www.apppark.cn"

.field public static final BUY_SUBURL_BUSINESS:Ljava/lang/String; = "http://www.apppark.cn/business.ws"

.field public static final BUY_SUBURL_MEMBER:Ljava/lang/String; = "http://www.apppark.cn/member.ws"

.field public static final BUY_SUBURL_PRODUCT:Ljava/lang/String; = "http://www.apppark.cn/cms.ws"

.field public static final BUY_SUBURL_SMS:Ljava/lang/String; = "http://www.apppark.cn/sms.ws"

.field public static final COMMENT_BAD:I = 0x3

.field public static final COMMENT_CENTER:I = 0x2

.field public static final COMMENT_GOOD:I = 0x1

.field public static final HISTORY_FILE_NAME:Ljava/lang/String; = "history"

.field public static final LOGIN_OFF:I = -0x1

.field public static final MAX_RECORD_NUM:I = 0xa

.field public static final OPERATE_ADDRESS_TYPE_GET:I = 0x1

.field public static OPERATE_GET_REASON:I = 0x0

.field public static OPERATE_GET_REMARK:I = 0x0

.field public static OPERATE_SEL_PAYTYPE:I = 0x0

.field public static PAYTYPE_OFFLINE:I = 0x0

.field public static PAYTYPE_ONLINE:I = 0x0

.field public static REQUEST_CODE_GET_ADDRESS:I = 0x0

.field public static REQUEST_CODE_GET_PAYTYPE:I = 0x0

.field public static REQUEST_CODE_GET_REMARK:I = 0x0

.field public static final UPDATE_EMAIL:I = 0x3

.field public static final UPDATE_NIKENAME:I = 0x1

.field public static final UPDATE_PASSWORD:I = 0x2

.field public static final UPDATE_SEX:I = 0x4

.field public static final UPDATE_SIGN:I = 0x5

.field public static final ZFB_SDK_EXISTS:I = 0x8

.field public static final ZFB_SDK_RETURN_WHAT:I = 0x7

.field public static final ZFB_SERVICESTATE_WHAT:I = 0x6

.field public static final ZFB_SIGN_WHAT:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    sput v0, Lcn/apppark/vertify/activity/buy/BuyBaseParam;->REQUEST_CODE_GET_ADDRESS:I

    sput v1, Lcn/apppark/vertify/activity/buy/BuyBaseParam;->REQUEST_CODE_GET_REMARK:I

    sput v2, Lcn/apppark/vertify/activity/buy/BuyBaseParam;->REQUEST_CODE_GET_PAYTYPE:I

    sput v0, Lcn/apppark/vertify/activity/buy/BuyBaseParam;->OPERATE_GET_REMARK:I

    sput v1, Lcn/apppark/vertify/activity/buy/BuyBaseParam;->OPERATE_SEL_PAYTYPE:I

    sput v2, Lcn/apppark/vertify/activity/buy/BuyBaseParam;->OPERATE_GET_REASON:I

    sput v0, Lcn/apppark/vertify/activity/buy/BuyBaseParam;->PAYTYPE_ONLINE:I

    const/4 v0, 0x0

    sput v0, Lcn/apppark/vertify/activity/buy/BuyBaseParam;->PAYTYPE_OFFLINE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
