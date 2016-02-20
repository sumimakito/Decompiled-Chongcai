.class public final Lpc;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/share/SinaShareAct;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/share/SinaShareAct;)V
    .locals 0

    iput-object p1, p0, Lpc;->a:Lcn/apppark/vertify/activity/share/SinaShareAct;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/share/SinaShareAct;Lpa;)V
    .locals 0

    invoke-direct {p0, p1}, Lpc;-><init>(Lcn/apppark/vertify/activity/share/SinaShareAct;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lpc;->a:Lcn/apppark/vertify/activity/share/SinaShareAct;

    invoke-static {v0}, Lcn/apppark/vertify/activity/share/SinaShareAct;->d(Lcn/apppark/vertify/activity/share/SinaShareAct;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lpc;->a:Lcn/apppark/vertify/activity/share/SinaShareAct;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/share/SinaShareAct;->setResult(I)V

    iget-object v0, p0, Lpc;->a:Lcn/apppark/vertify/activity/share/SinaShareAct;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/share/SinaShareAct;->finish()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lpc;->a:Lcn/apppark/vertify/activity/share/SinaShareAct;

    invoke-virtual {v0, v2}, Lcn/apppark/vertify/activity/share/SinaShareAct;->setResult(I)V

    iget-object v0, p0, Lpc;->a:Lcn/apppark/vertify/activity/share/SinaShareAct;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/share/SinaShareAct;->finish()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lpc;->a:Lcn/apppark/vertify/activity/share/SinaShareAct;

    invoke-virtual {v0, v2}, Lcn/apppark/vertify/activity/share/SinaShareAct;->setResult(I)V

    iget-object v0, p0, Lpc;->a:Lcn/apppark/vertify/activity/share/SinaShareAct;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/share/SinaShareAct;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
