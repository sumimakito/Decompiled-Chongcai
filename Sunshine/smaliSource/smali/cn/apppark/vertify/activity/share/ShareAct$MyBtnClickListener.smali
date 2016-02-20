.class Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/share/ShareAct;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/share/ShareAct;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/apppark/vertify/activity/share/ShareAct;Lpw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;-><init>(Lcn/apppark/vertify/activity/share/ShareAct;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-static {v0}, Lcn/apppark/vertify/activity/share/ShareAct;->a(Lcn/apppark/vertify/activity/share/ShareAct;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    new-instance v1, Lcn/apppark/mcd/weibo/SinaShareUtil;

    iget-object v2, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    sget-object v3, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v3, v3, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getSinaAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/apppark/mcd/weibo/SinaShareUtil;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/share/ShareAct;->a(Lcn/apppark/vertify/activity/share/ShareAct;Lcn/apppark/mcd/weibo/SinaShareUtil;)Lcn/apppark/mcd/weibo/SinaShareUtil;

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-static {v0}, Lcn/apppark/vertify/activity/share/ShareAct;->d(Lcn/apppark/vertify/activity/share/ShareAct;)Lcn/apppark/mcd/weibo/SinaShareUtil;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-static {v1}, Lcn/apppark/vertify/activity/share/ShareAct;->b(Lcn/apppark/vertify/activity/share/ShareAct;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-static {v2}, Lcn/apppark/vertify/activity/share/ShareAct;->c(Lcn/apppark/vertify/activity/share/ShareAct;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/weibo/SinaShareUtil;->release4Sina(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/share/ShareAct;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-static {v0}, Lcn/apppark/vertify/activity/share/ShareAct;->a(Lcn/apppark/vertify/activity/share/ShareAct;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/share/ShareAct;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-static {v1}, Lcn/apppark/vertify/activity/share/ShareAct;->b(Lcn/apppark/vertify/activity/share/ShareAct;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    const-string v1, "\u94fe\u63a5\u5df2\u590d\u5236"

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/share/ShareAct;->a(Lcn/apppark/vertify/activity/share/ShareAct;Ljava/lang/String;I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/share/ShareAct;->finish()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-static {v0}, Lcn/apppark/vertify/activity/share/ShareAct;->a(Lcn/apppark/vertify/activity/share/ShareAct;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    new-instance v1, Lcn/apppark/mcd/weibo/QzoneShareUtil;

    iget-object v2, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    sget-object v3, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v3, v3, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getQzoneAppID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/apppark/mcd/weibo/QzoneShareUtil;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/share/ShareAct;->a(Lcn/apppark/vertify/activity/share/ShareAct;Lcn/apppark/mcd/weibo/QzoneShareUtil;)Lcn/apppark/mcd/weibo/QzoneShareUtil;

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-static {v0}, Lcn/apppark/vertify/activity/share/ShareAct;->h(Lcn/apppark/vertify/activity/share/ShareAct;)Lcn/apppark/mcd/weibo/QzoneShareUtil;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-static {v1}, Lcn/apppark/vertify/activity/share/ShareAct;->e(Lcn/apppark/vertify/activity/share/ShareAct;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-static {v2}, Lcn/apppark/vertify/activity/share/ShareAct;->f(Lcn/apppark/vertify/activity/share/ShareAct;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-static {v3}, Lcn/apppark/vertify/activity/share/ShareAct;->g(Lcn/apppark/vertify/activity/share/ShareAct;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/apppark/mcd/weibo/QzoneShareUtil;->sharToQzone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/share/ShareAct;->finish()V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-static {v0}, Lcn/apppark/vertify/activity/share/ShareAct;->a(Lcn/apppark/vertify/activity/share/ShareAct;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-static {v0, v2}, Lcn/apppark/vertify/activity/share/ShareAct;->a(Lcn/apppark/vertify/activity/share/ShareAct;Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/share/ShareAct;->finish()V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-static {v0}, Lcn/apppark/vertify/activity/share/ShareAct;->a(Lcn/apppark/vertify/activity/share/ShareAct;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/share/ShareAct;->a(Lcn/apppark/vertify/activity/share/ShareAct;Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/share/ShareAct;->finish()V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-static {v0}, Lcn/apppark/vertify/activity/share/ShareAct;->i(Lcn/apppark/vertify/activity/share/ShareAct;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-static {v0}, Lcn/apppark/vertify/activity/share/ShareAct;->a(Lcn/apppark/vertify/activity/share/ShareAct;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-static {v0}, Lcn/apppark/vertify/activity/share/ShareAct;->j(Lcn/apppark/vertify/activity/share/ShareAct;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-static {v2}, Lcn/apppark/vertify/activity/share/ShareAct;->b(Lcn/apppark/vertify/activity/share/ShareAct;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/apppark/mcd/util/PublicUtil;->editSendSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/share/ShareAct;->finish()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a0282 -> :sswitch_5
        0x7f0a03da -> :sswitch_3
        0x7f0a03dd -> :sswitch_4
        0x7f0a03e0 -> :sswitch_0
        0x7f0a03e3 -> :sswitch_2
        0x7f0a03e6 -> :sswitch_6
        0x7f0a03e9 -> :sswitch_1
        0x7f0a03eb -> :sswitch_5
    .end sparse-switch
.end method
