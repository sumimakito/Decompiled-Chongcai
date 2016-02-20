.class public final Lpj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/persion/SmsBaseAct;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/persion/SmsBaseAct;)V
    .locals 0

    iput-object p1, p0, Lpj;->a:Lcn/apppark/vertify/activity/persion/SmsBaseAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lpj;->a:Lcn/apppark/vertify/activity/persion/SmsBaseAct;

    iget v0, v0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->waitSecond:I

    if-lez v0, :cond_0

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lpj;->a:Lcn/apppark/vertify/activity/persion/SmsBaseAct;

    iget-object v0, v0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lpj;->a:Lcn/apppark/vertify/activity/persion/SmsBaseAct;

    iget v1, v0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->waitSecond:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->waitSecond:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
