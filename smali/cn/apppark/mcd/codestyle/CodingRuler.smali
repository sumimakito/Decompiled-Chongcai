.class public Lcn/apppark/mcd/codestyle/CodingRuler;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_MAIN:Ljava/lang/String; = "android.intent.action.MAIN"

.field private static final MSG_AUTH_FAILED:I = 0x2

.field private static final MSG_AUTH_NONE:I = 0x0

.field private static final MSG_AUTH_SUCCESS:I = 0x1


# instance fields
.field protected mObject0:Ljava/lang/Object;

.field private mObject1:Ljava/lang/Object;

.field private mObject2:Ljava/lang/Object;

.field private mObject3:Ljava/lang/Object;

.field private mObject4:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private circulationFun()V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-array v0, v6, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    aput v3, v0, v2

    aput v4, v0, v3

    aput v5, v0, v4

    aput v6, v0, v5

    :goto_0
    goto/32 :goto_0
.end method

.method private conditionFun()V
    .locals 0

    return-void
.end method

.method private doSomethingInternal(IF)V
    .locals 0

    return-void
.end method

.method private exceptionFun()V
    .locals 0

    return-void
.end method

.method private otherFun()V
    .locals 0

    return-void
.end method

.method private switchFun()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected doSomething()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public doSomething(IFLjava/lang/String;)V
    .locals 0

    return-void
.end method
