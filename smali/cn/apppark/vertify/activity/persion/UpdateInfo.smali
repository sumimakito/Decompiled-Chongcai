.class public Lcn/apppark/vertify/activity/persion/UpdateInfo;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final MAX_SIGNNUM:I

.field private final METHOD_UPDATA_EMAIL:Ljava/lang/String;

.field private final METHOD_UPDATA_NIKENAME:Ljava/lang/String;

.field private final METHOD_UPDATA_PASSWORD:Ljava/lang/String;

.field private final METHOD_UPDATA_SEX:Ljava/lang/String;

.field private final METHOD_UPDATA_SIGN:Ljava/lang/String;

.field private final UPDATA_EMAIL_WHAT:I

.field private final UPDATA_NIKENAME_WHAT:I

.field private final UPDATA_PASSWORD_WHAT:I

.field private final UPDATA_SEX_WHAT:I

.field private final UPDATA_SIGN_WHAT:I

.field public a:Lcn/apppark/vertify/base/ClientPersionInfo;

.field private btn_back:Landroid/widget/Button;

.field private btn_sure:Landroid/widget/Button;

.field private et_email:Landroid/widget/EditText;

.field private et_newpass:Landroid/widget/EditText;

.field private et_nikeName:Landroid/widget/EditText;

.field private et_oldpass:Landroid/widget/EditText;

.field private et_renewpass:Landroid/widget/EditText;

.field private et_sign:Landroid/widget/EditText;

.field private famel:Landroid/widget/TextView;

.field private handler:Lot;

.field private ll_email:Landroid/widget/LinearLayout;

.field private ll_famale:Landroid/widget/LinearLayout;

.field private ll_male:Landroid/widget/LinearLayout;

.field private ll_nikeName:Landroid/widget/LinearLayout;

.field private ll_sex:Landroid/widget/LinearLayout;

.field private ll_updatePass:Landroid/widget/LinearLayout;

.field private male:Landroid/widget/TextView;

.field private operateType:I

.field private rel_sign:Landroid/widget/RelativeLayout;

.field private sex:Ljava/lang/String;

.field private tv_sign:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    const-string v0, "updateNickName"

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->METHOD_UPDATA_NIKENAME:Ljava/lang/String;

    const-string v0, "updatePassword"

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->METHOD_UPDATA_PASSWORD:Ljava/lang/String;

    const-string v0, "updateEmail"

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->METHOD_UPDATA_EMAIL:Ljava/lang/String;

    const-string v0, "updateSex"

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->METHOD_UPDATA_SEX:Ljava/lang/String;

    const-string v0, "updateSignName"

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->METHOD_UPDATA_SIGN:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->UPDATA_NIKENAME_WHAT:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->UPDATA_PASSWORD_WHAT:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->UPDATA_EMAIL_WHAT:I

    const/4 v0, 0x4

    iput v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->UPDATA_SEX_WHAT:I

    const/4 v0, 0x5

    iput v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->UPDATA_SIGN_WHAT:I

    const/16 v0, 0x10

    iput v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->MAX_SIGNNUM:I

    const-string v0, "1"

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->sex:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/UpdateInfo;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_sign:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/UpdateInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/persion/UpdateInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->tv_sign:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/persion/UpdateInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/persion/UpdateInfo;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/persion/UpdateInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkFormat()V
    .locals 4

    const/4 v2, 0x0

    iget v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->operateType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_nikeName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_nikeName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->a:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->updateNikeName(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    const-string v0, "\u8bf7\u8f93\u5165\u6635\u79f0"

    invoke-virtual {p0, v0, v2}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_oldpass:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165\u65e7\u5bc6\u7801"

    invoke-virtual {p0, v0, v2}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_newpass:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u8bf7\u8f93\u5165\u65b0\u5bc6\u7801"

    invoke-virtual {p0, v0, v2}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_renewpass:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u8bf7\u8f93\u5165\u786e\u8ba4\u5bc6\u7801"

    invoke-virtual {p0, v0, v2}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_newpass:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_renewpass:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "\u4e24\u6b21\u5bc6\u7801\u4e0d\u4e00\u81f4"

    invoke-virtual {p0, v0, v2}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->initToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x2

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_newpass:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_oldpass:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->a:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v3}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->updatePassowrd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u8bf7\u8f93\u5165\u90ae\u7bb1"

    invoke-virtual {p0, v0, v2}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->initToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->checkEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "\u90ae\u7bb1\u683c\u5f0f\u9519\u8bef"

    invoke-virtual {p0, v0, v2}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->initToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x3

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_email:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->a:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->updateEmail(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x4

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->sex:Ljava/lang/String;

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->a:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->updateSex(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_sign:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "\u8bf7\u8f93\u5165\u4e2a\u6027\u7b7e\u540d"

    invoke-virtual {p0, v0, v2}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->initToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x5

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_sign:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->a:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->updateSignName(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/persion/UpdateInfo;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/persion/UpdateInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/persion/UpdateInfo;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_nikeName:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/persion/UpdateInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/persion/UpdateInfo;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/persion/UpdateInfo;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_email:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/persion/UpdateInfo;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/persion/UpdateInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->sex:Ljava/lang/String;

    return-object v0
.end method

.method private initWidget()V
    .locals 5

    const v4, 0x7f020104

    const v3, 0x7f0200f0

    const/4 v2, 0x0

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a0142

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->tv_title:Landroid/widget/TextView;

    const v0, 0x7f0a0143

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->btn_sure:Landroid/widget/Button;

    const v0, 0x7f0a0141

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->btn_back:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->btn_sure:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->btn_sure:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0151

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->rel_sign:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0152

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_sign:Landroid/widget/EditText;

    const v0, 0x7f0a0153

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->tv_sign:Landroid/widget/TextView;

    const v0, 0x7f0a0144

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->ll_nikeName:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0145

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_nikeName:Landroid/widget/EditText;

    const v0, 0x7f0a0147

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_email:Landroid/widget/EditText;

    const v0, 0x7f0a0146

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->ll_email:Landroid/widget/LinearLayout;

    const v0, 0x7f0a014c

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->ll_sex:Landroid/widget/LinearLayout;

    const v0, 0x7f0a014d

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->ll_male:Landroid/widget/LinearLayout;

    const v0, 0x7f0a014f

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->ll_famale:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0150

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->famel:Landroid/widget/TextView;

    const v0, 0x7f0a014e

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->male:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->ll_male:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->ll_famale:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0148

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->ll_updatePass:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0149

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_oldpass:Landroid/widget/EditText;

    const v0, 0x7f0a014a

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_newpass:Landroid/widget/EditText;

    const v0, 0x7f0a014b

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_renewpass:Landroid/widget/EditText;

    iget v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->operateType:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    new-instance v0, Los;

    invoke-direct {v0, p0}, Los;-><init>(Lcn/apppark/vertify/activity/persion/UpdateInfo;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_sign:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "userId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->userId:Ljava/lang/String;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->ll_nikeName:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_nikeName:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->a:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserNikeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->tv_title:Landroid/widget/TextView;

    const-string v1, "\u4fee\u6539\u6635\u79f0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->ll_updatePass:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->tv_title:Landroid/widget/TextView;

    const-string v1, "\u4fee\u6539\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_email:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->ll_email:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_email:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->a:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->tv_title:Landroid/widget/TextView;

    const-string v1, "\u4fee\u6539\u90ae\u7bb1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->ll_sex:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserSex()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->sex:Ljava/lang/String;

    const-string v0, "0"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserSex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->famel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->male:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->tv_title:Landroid/widget/TextView;

    const-string v1, "\u4fee\u6539\u6027\u522b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->male:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->famel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->rel_sign:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->tv_title:Landroid/widget/TextView;

    const-string v1, "\u4fee\u6539\u4e2a\u6027\u7b7e\u540d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->a:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserSign()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->et_sign:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->a:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserSign()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->tv_sign:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->a:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserSign()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/persion/UpdateInfo;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private updateEmail(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "email"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->handler:Lot;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/member.ws"

    const-string v7, "updateEmail"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private updateNikeName(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->userId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nickName"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->handler:Lot;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/member.ws"

    const-string v7, "updateNickName"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private updatePassowrd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    invoke-interface {v1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "oldPassword"

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "password"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->handler:Lot;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/member.ws"

    const-string v7, "updatePassword"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private updateSex(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sex"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->handler:Lot;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/member.ws"

    const-string v7, "updateSex"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private updateSignName(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "signName"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->handler:Lot;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/member.ws"

    const-string v7, "updateSignName"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const v2, 0x7f020104

    const v1, 0x7f0200f0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->checkFormat()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->famel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->male:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v0, "0"

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->sex:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->famel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->male:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v0, "1"

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->sex:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a0141 -> :sswitch_0
        0x7f0a0143 -> :sswitch_1
        0x7f0a014d -> :sswitch_3
        0x7f0a014f -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->operateType:I

    new-instance v0, Lcn/apppark/vertify/base/ClientPersionInfo;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->a:Lcn/apppark/vertify/base/ClientPersionInfo;

    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->createLoadingDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->loadDialog:Landroid/app/Dialog;

    new-instance v0, Lot;

    invoke-direct {v0, p0}, Lot;-><init>(Lcn/apppark/vertify/activity/persion/UpdateInfo;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/UpdateInfo;->handler:Lot;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/UpdateInfo;->initWidget()V

    return-void
.end method
