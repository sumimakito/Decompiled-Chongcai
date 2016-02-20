.class public final Lol;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/persion/SetInfo;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/persion/SetInfo;)V
    .locals 0

    iput-object p1, p0, Lol;->a:Lcn/apppark/vertify/activity/persion/SetInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/apppark/vertify/activity/persion/SetInfo;Loh;)V
    .locals 0

    invoke-direct {p0, p1}, Lol;-><init>(Lcn/apppark/vertify/activity/persion/SetInfo;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->baseImgCachePath:Ljava/lang/String;

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->deleteFiles(Ljava/lang/String;)V

    iget-object v0, p0, Lol;->a:Lcn/apppark/vertify/activity/persion/SetInfo;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SetInfo;->b(Lcn/apppark/vertify/activity/persion/SetInfo;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lol;->a:Lcn/apppark/vertify/activity/persion/SetInfo;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcn/apppark/vertify/activity/persion/SetInfo;->a:D

    iget-object v0, p0, Lol;->a:Lcn/apppark/vertify/activity/persion/SetInfo;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SetInfo;->b(Lcn/apppark/vertify/activity/persion/SetInfo;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lol;->a:Lcn/apppark/vertify/activity/persion/SetInfo;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/SetInfo;->b(Lcn/apppark/vertify/activity/persion/SetInfo;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
