.class public final Lph;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/persion/SetInfo;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/persion/SetInfo;)V
    .locals 0

    iput-object p1, p0, Lph;->a:Lcn/apppark/vertify/activity/persion/SetInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/persion/SetInfo;Lpe;)V
    .locals 0

    invoke-direct {p0, p1}, Lph;-><init>(Lcn/apppark/vertify/activity/persion/SetInfo;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lph;->a:Lcn/apppark/vertify/activity/persion/SetInfo;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->baseImgCachePath:Ljava/lang/String;

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->calculateFileSize(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcn/apppark/vertify/activity/persion/SetInfo;->a:D

    iget-object v0, p0, Lph;->a:Lcn/apppark/vertify/activity/persion/SetInfo;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SetInfo;->b(Lcn/apppark/vertify/activity/persion/SetInfo;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lph;->a:Lcn/apppark/vertify/activity/persion/SetInfo;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/SetInfo;->b(Lcn/apppark/vertify/activity/persion/SetInfo;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
