.class public Lcn/apppark/vertify/activity/share/MsgAct;
.super Lcn/apppark/vertify/activity/BaseAct;


# instance fields
.field a:Ljava/lang/String;

.field private rel_close:Landroid/widget/RelativeLayout;

.field private tv_msg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/BaseAct;-><init>()V

    return-void
.end method

.method private initWidget()V
    .locals 2

    const v0, 0x7f0a0287

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/MsgAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/MsgAct;->tv_msg:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/MsgAct;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/MsgAct;->tv_msg:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/MsgAct;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f0a0284

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/MsgAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/MsgAct;->rel_close:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/MsgAct;->rel_close:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/apppark/vertify/activity/share/MsgAct$1;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/share/MsgAct$1;-><init>(Lcn/apppark/vertify/activity/share/MsgAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/BaseAct;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/MsgAct;->requestWindowFeature(I)Z

    const v0, 0x7f03005a

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/MsgAct;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/share/MsgAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/MsgAct;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/share/MsgAct;->initWidget()V

    return-void
.end method
