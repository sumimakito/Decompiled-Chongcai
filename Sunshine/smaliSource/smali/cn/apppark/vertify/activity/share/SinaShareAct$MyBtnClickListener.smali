.class Lcn/apppark/vertify/activity/share/SinaShareAct$MyBtnClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/share/SinaShareAct;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/share/SinaShareAct;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/share/SinaShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/SinaShareAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/apppark/vertify/activity/share/SinaShareAct;Lpx;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/share/SinaShareAct$MyBtnClickListener;-><init>(Lcn/apppark/vertify/activity/share/SinaShareAct;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, ""

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/SinaShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/SinaShareAct;

    invoke-static {v1}, Lcn/apppark/vertify/activity/share/SinaShareAct;->a(Lcn/apppark/vertify/activity/share/SinaShareAct;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/SinaShareAct;

    invoke-static {v0}, Lcn/apppark/vertify/activity/share/SinaShareAct;->a(Lcn/apppark/vertify/activity/share/SinaShareAct;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u5206\u4eab\u5185\u5bb9"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/SinaShareAct;

    invoke-static {v0}, Lcn/apppark/vertify/activity/share/SinaShareAct;->a(Lcn/apppark/vertify/activity/share/SinaShareAct;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8c

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/SinaShareAct;

    invoke-static {v0}, Lcn/apppark/vertify/activity/share/SinaShareAct;->a(Lcn/apppark/vertify/activity/share/SinaShareAct;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "\u60a8\u8f93\u5165\u7684\u5206\u4eab\u5185\u5bb9\u8d85\u51fa\u957f\u5ea6\u9650\u5236"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/SinaShareAct;

    invoke-static {v0}, Lcn/apppark/vertify/activity/share/SinaShareAct;->c(Lcn/apppark/vertify/activity/share/SinaShareAct;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/share/SinaShareAct$MyBtnClickListener;->a:Lcn/apppark/vertify/activity/share/SinaShareAct;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/share/SinaShareAct;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a03c9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
