.class public Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;
.super Lcn/apppark/mcd/widget/InnerScrollView;

# interfaces
.implements Lcn/apppark/vertify/activity/ISelfViewDyn;


# static fields
.field private static final INIT_DATA:I = 0x1

.field private static final REF_DATA:I = 0x2

.field private static final SAVE_DATA:I = 0x1

.field private static final SAVE_METHOD:Ljava/lang/String; = "submitForm"


# instance fields
.field a:Landroid/app/Dialog;

.field b:Lcn/apppark/vertify/activity/FreeAct;

.field private btn_sub:Landroid/widget/Button;

.field public c:Landroid/app/Dialog;

.field private context:Landroid/content/Context;

.field private day:I

.field private etList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private etTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lic;

.field private hour:I

.field private isFinish:Z

.field private itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

.field private itemVoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;",
            ">;"
        }
    .end annotation
.end field

.field private lin_content:Landroid/widget/LinearLayout;

.field private loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

.field private minute:I

.field private month:I

.field private multList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private tvList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private tv_content:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;

.field private year:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;Ljava/util/ArrayList;Landroid/widget/ScrollView;Lcn/apppark/vertify/activity/FreeAct;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/apppark/mcd/vo/base/FreePageVo;",
            "Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;",
            ">;",
            "Landroid/widget/ScrollView;",
            "Lcn/apppark/vertify/activity/FreeAct;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p5}, Lcn/apppark/mcd/widget/InnerScrollView;-><init>(Landroid/content/Context;Landroid/widget/ScrollView;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->etList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->tvList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->etTimeList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->multList:Ljava/util/List;

    iput-boolean v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->isFinish:Z

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->context:Landroid/content/Context;

    iput-object p6, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->b:Lcn/apppark/vertify/activity/FreeAct;

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->setFadingEdgeLength(I)V

    iput-object p3, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    iput-object p4, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVoList:Ljava/util/ArrayList;

    iget-object v0, p6, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/ElasticScrollView;->setRefreshable(Z)V

    new-instance v0, Lic;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lic;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;Lhy;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->handler:Lic;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->year:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->month:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->day:I

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->hour:I

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->minute:I

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->initWidget()V

    return-void
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->etList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->hideIM(I)V

    return-void
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;IIIIILandroid/widget/TextView;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->showDate(IIIIILandroid/widget/TextView;)V

    return-void
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->showSelDialog(Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->isFinish:Z

    return p1
.end method

.method static synthetic b(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->tvList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->initDialog(I)V

    return-void
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->year:I

    return p1
.end method

.method static synthetic c(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->multList:Ljava/util/List;

    return-object v0
.end method

.method private clearData()V
    .locals 4

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->etList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->etList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->etTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->etTimeList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->month:I

    return p1
.end method

.method static synthetic d(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->isFinish:Z

    return v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->day:I

    return p1
.end method

.method static synthetic e(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->subData()V

    return-void
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->hour:I

    return p1
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->clearData()V

    return-void
.end method

.method static synthetic g(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->year:I

    return v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->minute:I

    return p1
.end method

.method static synthetic h(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->month:I

    return v0
.end method

.method private hideIM(I)V
    .locals 3

    :try_start_0
    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcn/apppark/ckj10185912/Main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->etTimeList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic i(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->day:I

    return v0
.end method

.method private initDialog(I)V
    .locals 8

    new-instance v0, Landroid/app/Dialog;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    const v2, 0x7f06000d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->a:Landroid/app/Dialog;

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v0}, Lcn/apppark/ckj10185912/Main;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0a0173

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/DatePicker;

    const v1, 0x7f0a0174

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TimePicker;

    const v2, 0x7f0a0175

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->year:I

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->month:I

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->day:I

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->hour:I

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->minute:I

    iget v4, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->year:I

    iget v5, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->month:I

    iget v6, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->day:I

    new-instance v7, Lhz;

    invoke-direct {v7, p0}, Lhz;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)V

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    new-instance v0, Lia;

    invoke-direct {v0, p0}, Lia;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)V

    invoke-virtual {v1, v0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    new-instance v0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$6;

    invoke-direct {v0, p0, p1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$6;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;I)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->a:Landroid/app/Dialog;

    invoke-virtual {v1, v3, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic j(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->hour:I

    return v0
.end method

.method static synthetic k(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->minute:I

    return v0
.end method

.method static synthetic l(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->etTimeList:Ljava/util/List;

    return-object v0
.end method

.method private saveData(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    const/4 v1, 0x1

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->handler:Lic;

    const-string v3, "paramJson"

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/form.ws"

    const-string v7, "submitForm"

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    const v1, 0x7f080024

    invoke-static {v0, v1}, Lcn/apppark/ckj10185912/HQCHApplication;->createLoadingDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->c:Landroid/app/Dialog;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showDate(IIIIILandroid/widget/TextView;)V
    .locals 3

    add-int/lit8 v0, p2, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showSelDialog(Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/Dyn5001Item2Vo;",
            ">;",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/Dyn5001Item2Vo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5001Item2Vo;->getLabel()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8bf7\u9009\u62e9 "

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/widget/TextView;->getId()I

    move-result v7

    new-instance v0, Lib;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lib;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;Landroid/widget/TextView;[Ljava/lang/String;Landroid/widget/TextView;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v3, v7, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private subData()V
    .locals 9

    const/4 v3, 0x0

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ \"formId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\"answers\":["

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v3

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->etList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->etList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;

    const-string v2, "1"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getStyle_type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "{ \"itemId\":\""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"answer\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->tvList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" },"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "{ \"itemId\":\""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"answer\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->etList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" },"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->multList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->multList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    const-string v5, ""

    move v6, v3

    :goto_3
    if-ge v6, v8, :cond_2

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/CheckBox;

    if-eqz v2, :cond_5

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move-object v5, v2

    goto :goto_3

    :cond_2
    const-string v0, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "{ \"itemId\":\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"answer\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" },"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "{ \"itemId\":\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"answer\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" },"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "],\"phoneId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->IMEI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ",]"

    const-string v2, "]"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->saveData(Ljava/lang/String;)V

    return-void

    :cond_5
    move-object v2, v5

    goto/16 :goto_4
.end method


# virtual methods
.method public init()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->loadSuccess(I)V

    return-void
.end method

.method public initData()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->loadSuccess(I)V

    return-void
.end method

.method protected initWidget()V
    .locals 13

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030037

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a019e

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->lin_content:Landroid/widget/LinearLayout;

    const v0, 0x7f0a019f

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->tv_title:Landroid/widget/TextView;

    const v0, 0x7f0a01a0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->tv_content:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_bgPic()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_bgColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->tv_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getData_title()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_text1Size()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_text1Color()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_text1Bold()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->tv_content:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getData_describe()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_text2Size()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_text2Color()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_text2Bold()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_bgPic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_bgColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_e

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;

    const-string v0, "2"

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getStyle_type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {v4, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->context:Landroid/content/Context;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f02006e

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->context:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v7, -0x2

    invoke-direct {v0, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v8, "1"

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getStyle_must()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "*"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v8, -0x10000

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    new-instance v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->context:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    const/high16 v10, 0x40a00000    # 5.0f

    invoke-static {v10}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v10

    const/4 v11, 0x0

    const/high16 v12, 0x40a00000    # 5.0f

    invoke-static {v12}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getData_label()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v10}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_text3Size()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v11}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_text3Color()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v12}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_text3Bold()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v9, v10, v11, v12}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v6, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getData_options()Lcom/google/gson/JsonElement;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_2
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {v7, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v0

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v0, v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v0, Lhy;

    invoke-direct {v0, p0}, Lhy;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)V

    invoke-virtual {v0}, Lhy;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getData_options()Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-static {v2, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseElement2ListDirect(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_4

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    new-instance v9, Landroid/widget/CheckBox;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->context:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/Dyn5001Item2Vo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5001Item2Vo;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/Dyn5001Item2Vo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5001Item2Vo;->getLabel()Ljava/lang/String;

    move-result-object v0

    iget-object v10, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v10}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_text3Size()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v11}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_text3Color()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v12}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_text3Bold()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v0, v10, v11, v12}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f020067

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/Dyn5001Item2Vo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5001Item2Vo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    if-lez v2, :cond_3

    new-instance v0, Landroid/widget/TextView;

    iget-object v10, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->context:Landroid/content/Context;

    invoke-direct {v0, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v10, 0x7f070005

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setHeight(I)V

    invoke-virtual {v5, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-virtual {v5, v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->multList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->lin_content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->lin_content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_6
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v0

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v5

    invoke-direct {v4, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xf

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->context:Landroid/content/Context;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->context:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->context:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "3"

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getStyle_inputType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "1"

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getStyle_type()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_7
    new-instance v0, Landroid/widget/Button;

    iget-object v8, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->context:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    const v8, 0x7f0200a0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    new-instance v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->context:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v9, 0x7f02009e

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {v7, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v8, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getStyle_height()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v4

    const/16 v8, 0x3c

    if-le v4, v8, :cond_d

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v4

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v8}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v4, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    :goto_5
    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getData_label()Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v8}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_text3Size()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v9}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_text3Color()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v10}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_text3Bold()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v4, v8, v9, v10}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ""

    iget-object v8, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v8}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_text3Size()Ljava/lang/String;

    move-result-object v8

    const-string v9, "000000"

    const-string v10, "0"

    invoke-static {v0, v4, v8, v9, v10}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "1"

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getStyle_must()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "*"

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, -0x10000

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getStyle_height()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/apppark/mcd/util/FunctionPublic;->scaleNumber(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_9

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHeight(I)V

    :cond_9
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v4, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->context:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    const/high16 v10, 0x40a00000    # 5.0f

    invoke-static {v10}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v10

    const/4 v11, 0x0

    const/high16 v12, 0x40a00000    # 5.0f

    invoke-static {v12}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->context:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v11, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v11, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const-string v2, ""

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->tvList:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->etList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->lin_content:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "1"

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getStyle_type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    new-instance v2, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$MyonClickListener;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getData_options()Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-direct {v2, p0, v4, v0, v5}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$MyonClickListener;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;Lcom/google/gson/JsonElement;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    const-string v2, "1"

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getStyle_inputType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    :cond_b
    const-string v2, "3"

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getStyle_inputType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->etTimeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->etTimeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->year:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->month:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->day:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->hour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->minute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$2;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$2;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_c
    new-instance v0, Landroid/widget/EditText;

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const v4, 0x7f02009f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {v7, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_d
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v4, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_5

    :cond_e
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->btn_sub:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->btn_sub:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_commitWidth()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcn/apppark/ckj10185912/YYGYContants;->scaleUnite:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_commitHeight()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcn/apppark/ckj10185912/YYGYContants;->scaleUnite:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->lin_content:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->btn_sub:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->btn_sub:Landroid/widget/Button;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_commitBgType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_commitBgPic()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_commitBgColor()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_commitBgAlpha()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->btn_sub:Landroid/widget/Button;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getData_commitText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_text4Size()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_text4Color()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_text4Bold()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->itemVo:Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;->getStyle_text4Align()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_6
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->btn_sub:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$3;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$3;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->btn_sub:Landroid/widget/Button;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    goto :goto_6

    :pswitch_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->btn_sub:Landroid/widget/Button;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    goto :goto_6

    :pswitch_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->btn_sub:Landroid/widget/Button;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isCache()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOnMethod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadSuccess(I)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    invoke-interface {v0, p1}, Lcn/apppark/vertify/activity/ILoadDataEndListener;->onLoadSuccess(I)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRefresh()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->loadSuccess(I)V

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public setLoadendListener(Lcn/apppark/vertify/activity/ILoadDataEndListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    return-void
.end method
