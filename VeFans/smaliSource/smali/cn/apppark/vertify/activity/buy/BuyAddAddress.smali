.class public Lcn/apppark/vertify/activity/buy/BuyAddAddress;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;


# static fields
.field private static final ADD_WHAT:I = 0x1

.field public static final SUB_METHOD:Ljava/lang/String; = "saveOrUpdateContact"


# instance fields
.field private ADD_ADDRESS:Ljava/lang/String;

.field private addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

.field private areaId:Ljava/lang/String;

.field private btn_back:Landroid/widget/Button;

.field private btn_default:Landroid/widget/Button;

.field private btn_save:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private et_address:Landroid/widget/EditText;

.field private et_code:Landroid/widget/EditText;

.field private et_phone:Landroid/widget/EditText;

.field private et_username:Landroid/widget/EditText;

.field private handler:Lbr;

.field private isDefault:Ljava/lang/String;

.field private isFinish:Z

.field private ll_default:Landroid/widget/LinearLayout;

.field private loadDialog:Landroid/app/Dialog;

.field private operateType:Ljava/lang/String;

.field private tv_area:Landroid/widget/TextView;

.field private tv_name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    iput-object p0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->context:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->isFinish:Z

    const-string v0, "0"

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->ADD_ADDRESS:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->isDefault:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->isDefault:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/buy/BuyAddAddress;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->isDefault:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/buy/BuyAddAddress;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->subData(I)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyAddAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyAddAddress;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->isFinish:Z

    return p1
.end method

.method static synthetic b(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->btn_default:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->et_username:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->et_phone:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->tv_area:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->et_address:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->isFinish:Z

    return v0
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->btn_save:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private initWidget()V
    .locals 2

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->ll_default:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0004

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->btn_save:Landroid/widget/Button;

    const v0, 0x7f0a0002

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a000b

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->btn_default:Landroid/widget/Button;

    const v0, 0x7f0a0005

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->et_username:Landroid/widget/EditText;

    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->et_phone:Landroid/widget/EditText;

    const v0, 0x7f0a0007

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->et_code:Landroid/widget/EditText;

    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->tv_area:Landroid/widget/TextView;

    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->et_address:Landroid/widget/EditText;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->btn_save:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->et_username:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->et_phone:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->et_code:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getPostalcode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->tv_area:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->et_address:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "1"

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getIsDefault()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->btn_default:Landroid/widget/Button;

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->ll_default:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/apppark/vertify/activity/buy/BuyAddAddress$1;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress$1;-><init>(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->btn_save:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/buy/BuyAddAddress$2;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress$2;-><init>(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->btn_back:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/buy/BuyAddAddress$3;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress$3;-><init>(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->tv_area:Landroid/widget/TextView;

    new-instance v1, Lcn/apppark/vertify/activity/buy/BuyAddAddress$4;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress$4;-><init>(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->btn_default:Landroid/widget/Button;

    const v1, 0x7f020104

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic j(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->context:Landroid/content/Context;

    return-object v0
.end method

.method private subData(I)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "memberId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "name"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->et_username:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->operateType:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "phone"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->et_phone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "postalcode"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->et_code:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "areaId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->areaId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "address2"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->et_address:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "isDefault"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->isDefault:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->handler:Lbr;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/member.ws"

    const-string v7, "saveOrUpdateContact"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string v0, "name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->areaId:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->tv_area:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->setContentView(I)V

    const v0, 0x7f0a0003

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->tv_name:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "addressvo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->operateType:Ljava/lang/String;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getAreaId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->areaId:Ljava/lang/String;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getIsDefault()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->isDefault:Ljava/lang/String;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->tv_name:Landroid/widget/TextView;

    const-string v1, "\u4fee\u6539\u5730\u5740"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->createLoadingDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->loadDialog:Landroid/app/Dialog;

    new-instance v0, Lbr;

    invoke-direct {v0, p0}, Lbr;-><init>(Lcn/apppark/vertify/activity/buy/BuyAddAddress;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->handler:Lbr;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->initWidget()V

    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->ADD_ADDRESS:Ljava/lang/String;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->operateType:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddAddress;->isDefault:Ljava/lang/String;

    goto :goto_0
.end method
