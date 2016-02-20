.class public Lcn/apppark/vertify/activity/share/QzoneShareAct;
.super Landroid/app/Activity;


# instance fields
.field private MAX_TEXT_LENGTH:I

.field public a:Lcom/tencent/tauth/Tencent;

.field private btn_return:Landroid/widget/Button;

.field private btn_share:Landroid/widget/Button;

.field private content:Ljava/lang/String;

.field private et_content:Landroid/widget/EditText;

.field private img:Landroid/widget/ImageView;

.field private imgpath:Ljava/lang/String;

.field private progress:Landroid/widget/ProgressBar;

.field private shareType:I

.field private targetUrl:Ljava/lang/String;

.field private tv_wordnum:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->content:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->imgpath:Ljava/lang/String;

    const/16 v0, 0x8c

    iput v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->MAX_TEXT_LENGTH:I

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->shareType:I

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/share/QzoneShareAct;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->MAX_TEXT_LENGTH:I

    return v0
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/share/QzoneShareAct;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->sharToQzone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/share/QzoneShareAct;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->et_content:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/share/QzoneShareAct;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->tv_wordnum:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcn/apppark/vertify/activity/share/QzoneShareAct;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->targetUrl:Ljava/lang/String;

    return-object v0
.end method

.method private doShareToQzone(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lox;

    invoke-direct {v1, p0, p0, p1}, Lox;-><init>(Lcn/apppark/vertify/activity/share/QzoneShareAct;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private initWidget()V
    .locals 4

    const/4 v2, 0x0

    const v0, 0x7f0a0324

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getQzoneAppID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->a:Lcom/tencent/tauth/Tencent;

    const v0, 0x7f0a0327

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->btn_share:Landroid/widget/Button;

    const v0, 0x7f0a0325

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->btn_return:Landroid/widget/Button;

    const v0, 0x7f0a0328

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->et_content:Landroid/widget/EditText;

    const v0, 0x7f0a032b

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->tv_wordnum:Landroid/widget/TextView;

    const v0, 0x7f0a032c

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->img:Landroid/widget/ImageView;

    const v0, 0x7f0a0329

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->progress:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->progress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->btn_return:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/share/QzoneShareAct$MyBtnClickListener;

    invoke-direct {v1, p0, v2}, Lcn/apppark/vertify/activity/share/QzoneShareAct$MyBtnClickListener;-><init>(Lcn/apppark/vertify/activity/share/QzoneShareAct;Low;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->btn_share:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/share/QzoneShareAct$MyBtnClickListener;

    invoke-direct {v1, p0, v2}, Lcn/apppark/vertify/activity/share/QzoneShareAct$MyBtnClickListener;-><init>(Lcn/apppark/vertify/activity/share/QzoneShareAct;Low;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->btn_return:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->btn_share:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    new-instance v0, Low;

    invoke-direct {v0, p0}, Low;-><init>(Lcn/apppark/vertify/activity/share/QzoneShareAct;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->et_content:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->et_content:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->tv_wordnum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8fd8\u53ef\u8f93\u5165"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->MAX_TEXT_LENGTH:I

    iget-object v3, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->et_content:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5b57"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->imgpath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->imgpath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->imgpath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->img:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private sharToQzone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "req_type"

    iget v2, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->shareType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "summary"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "targetUrl"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "imageUrl"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->doShareToQzone(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->requestWindowFeature(I)Z

    const v0, 0x7f030084

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->setContentView(I)V

    :try_start_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "@###"

    const-string v3, "@apppark"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->content:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->content:Ljava/lang/String;

    iget-object v2, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->content:Ljava/lang/String;

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->content:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->targetUrl:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->content:Ljava/lang/String;

    iget-object v2, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->targetUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->content:Ljava/lang/String;

    const-string v1, "imgpath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->imgpath:Ljava/lang/String;

    iget v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->MAX_TEXT_LENGTH:I

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->targetUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/apppark/vertify/activity/share/QzoneShareAct;->MAX_TEXT_LENGTH:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcn/apppark/vertify/activity/share/QzoneShareAct;->initWidget()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
