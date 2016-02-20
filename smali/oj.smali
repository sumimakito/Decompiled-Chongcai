.class public final Loj;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/persion/SetInfo;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/persion/SetInfo;)V
    .locals 0

    iput-object p1, p0, Loj;->a:Lcn/apppark/vertify/activity/persion/SetInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Loj;->a:Lcn/apppark/vertify/activity/persion/SetInfo;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/SetInfo;->c(Lcn/apppark/vertify/activity/persion/SetInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Loj;->a:Lcn/apppark/vertify/activity/persion/SetInfo;

    iget-wide v1, v1, Lcn/apppark/vertify/activity/persion/SetInfo;->a:D

    invoke-static {v1, v2}, Lcn/apppark/mcd/util/PublicUtil;->formatSizeStr(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
