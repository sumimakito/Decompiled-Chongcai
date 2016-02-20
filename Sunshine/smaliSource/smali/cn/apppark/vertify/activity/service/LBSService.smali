.class public Lcn/apppark/vertify/activity/service/LBSService;
.super Landroid/app/Service;


# instance fields
.field private final ADMIN_WHAT:I

.field private final USE_WHAT:I

.field private arrLBS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/LBSReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private jsonParse:Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;

.field private myHandler:Lps;

.field private myNotiManager:Landroid/app/NotificationManager;

.field private notiID:I

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/service/LBSService;->ADMIN_WHAT:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/activity/service/LBSService;->USE_WHAT:I

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/vertify/activity/service/LBSService;->notiID:I

    new-instance v0, Lps;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lps;-><init>(Lcn/apppark/vertify/activity/service/LBSService;Lpr;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/service/LBSService;->myHandler:Lps;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/service/LBSService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/service/LBSService;->messagReturn(Ljava/lang/String;)V

    return-void
.end method

.method private compilerValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le v4, v5, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ge v4, v5, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private getLBS()V
    .locals 8

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    const/4 v1, 0x2

    iget-object v2, p0, Lcn/apppark/vertify/activity/service/LBSService;->myHandler:Lps;

    const-string v3, "json"

    const-string v4, "{}"

    const-string v5, "http://ws.ckj.hqch.com/"

    const-string v6, "http://www.apppark.cn//push.ws"

    const-string v7, "getPushMsg"

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private isNeedToPush()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/apppark/vertify/activity/service/LBSService;->sp:Landroid/content/SharedPreferences;

    const-string v3, "lbs_start"

    const-string v4, "23:59"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/service/LBSService;->sp:Landroid/content/SharedPreferences;

    const-string v4, "lbs_end"

    const-string v5, "09:00"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcn/apppark/vertify/activity/service/LBSService;->compilerValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "H:MM"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    invoke-direct {p0, v5, v2}, Lcn/apppark/vertify/activity/service/LBSService;->compilerValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v3, v5}, Lcn/apppark/vertify/activity/service/LBSService;->compilerValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v5, v3}, Lcn/apppark/vertify/activity/service/LBSService;->compilerValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2, v5}, Lcn/apppark/vertify/activity/service/LBSService;->compilerValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private messagReturn(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lpr;

    invoke-direct {v0, p0}, Lpr;-><init>(Lcn/apppark/vertify/activity/service/LBSService;)V

    invoke-virtual {v0}, Lpr;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/service/LBSService;->jsonParse:Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;

    invoke-static {p1, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/service/LBSService;->arrLBS:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/service/LBSService;->showNotifi()V

    goto :goto_0
.end method

.method private setNotiType(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "urlStr"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/apppark/vertify/base/PushWebView;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x8000000

    invoke-static {p0, p2, v1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput p1, v1, Landroid/app/Notification;->icon:I

    iput-object p4, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    const/4 v2, 0x1

    iput v2, v1, Landroid/app/Notification;->defaults:I

    invoke-virtual {v1, p0, p4, p3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/service/LBSService;->myNotiManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private showNotifi()V
    .locals 8

    iget-object v0, p0, Lcn/apppark/vertify/activity/service/LBSService;->arrLBS:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/service/LBSService;->arrLBS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    const v1, 0x7f0200aa

    iget v2, p0, Lcn/apppark/vertify/activity/service/LBSService;->notiID:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/service/LBSService;->arrLBS:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/LBSReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/LBSReturnVo;->getContent()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcn/apppark/vertify/activity/service/LBSService;->arrLBS:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/LBSReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/LBSReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcn/apppark/vertify/activity/service/LBSService;->arrLBS:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/LBSReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/LBSReturnVo;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcn/apppark/vertify/activity/service/LBSService;->arrLBS:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/LBSReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/LBSReturnVo;->getId()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/apppark/vertify/activity/service/LBSService;->setNotiType(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcn/apppark/vertify/activity/service/LBSService;->notiID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/service/LBSService;->notiID:I

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;

    invoke-direct {v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/service/LBSService;->jsonParse:Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/service/LBSService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcn/apppark/vertify/activity/service/LBSService;->myNotiManager:Landroid/app/NotificationManager;

    const-wide/32 v0, 0x124f80

    const-class v2, Lcn/apppark/vertify/activity/service/LBSService;

    invoke-virtual {p0, v0, v1, v2}, Lcn/apppark/vertify/activity/service/LBSService;->startAlarm(JLjava/lang/Class;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/service/LBSService;->sp:Landroid/content/SharedPreferences;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-class v0, Lcn/apppark/vertify/activity/service/LBSService;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/service/LBSService;->stopAlarm(Ljava/lang/Class;)V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 8

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/service/LBSService;->isNeedToPush()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    const/4 v1, 0x2

    iget-object v2, p0, Lcn/apppark/vertify/activity/service/LBSService;->myHandler:Lps;

    const-string v3, "json"

    const-string v4, "{}"

    const-string v5, "http://ws.ckj.hqch.com/"

    const-string v6, "http://www.apppark.cn//push.ws"

    const-string v7, "getPushMsg"

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    :cond_0
    return-void
.end method

.method public startAlarm(JLjava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/service/LBSService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/service/LBSService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long v2, v1, p1

    const/4 v1, 0x3

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public stopAlarm(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/service/LBSService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/service/LBSService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method
