.class public Lcn/apppark/mcd/widget/MyEditText2;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private btn_clear:Landroid/widget/Button;

.field private btn_eye:Landroid/widget/Button;

.field private et_content:Landroid/widget/EditText;

.field private isPassWord:Z

.field private isShowCleanBtn:Z

.field private keyLisTag:I

.field private myOnKeyEnter:Lcn/apppark/mcd/widget/MyEditText2$MyOnKeyEnter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcn/apppark/mcd/widget/MyEditText2;->isPassWord:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->isShowCleanBtn:Z

    iput v1, p0, Lcn/apppark/mcd/widget/MyEditText2;->keyLisTag:I

    invoke-direct {p0, p1}, Lcn/apppark/mcd/widget/MyEditText2;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcn/apppark/mcd/widget/MyEditText2;->isPassWord:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->isShowCleanBtn:Z

    iput v1, p0, Lcn/apppark/mcd/widget/MyEditText2;->keyLisTag:I

    invoke-direct {p0, p1}, Lcn/apppark/mcd/widget/MyEditText2;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcn/apppark/mcd/widget/MyEditText2;->isPassWord:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->isShowCleanBtn:Z

    iput v1, p0, Lcn/apppark/mcd/widget/MyEditText2;->keyLisTag:I

    invoke-direct {p0, p1}, Lcn/apppark/mcd/widget/MyEditText2;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/mcd/widget/MyEditText2;I)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->keyLisTag:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/mcd/widget/MyEditText2;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->et_content:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/mcd/widget/MyEditText2;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->btn_clear:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/mcd/widget/MyEditText2;)I
    .locals 2

    iget v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->keyLisTag:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/apppark/mcd/widget/MyEditText2;->keyLisTag:I

    return v0
.end method

.method private changePassShow()V
    .locals 2

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->isPassWord:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->et_content:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->btn_eye:Landroid/widget/Button;

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->isPassWord:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->et_content:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->btn_eye:Landroid/widget/Button;

    const v1, 0x7f0200f5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->isPassWord:Z

    goto :goto_0
.end method

.method public static synthetic d(Lcn/apppark/mcd/widget/MyEditText2;)I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->keyLisTag:I

    return v0
.end method

.method public static synthetic e(Lcn/apppark/mcd/widget/MyEditText2;)Lcn/apppark/mcd/widget/MyEditText2$MyOnKeyEnter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->myOnKeyEnter:Lcn/apppark/mcd/widget/MyEditText2$MyOnKeyEnter;

    return-object v0
.end method

.method static synthetic f(Lcn/apppark/mcd/widget/MyEditText2;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/mcd/widget/MyEditText2;->changePassShow()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005a

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a0276

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/MyEditText2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->et_content:Landroid/widget/EditText;

    const v0, 0x7f0a0278

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/MyEditText2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->btn_eye:Landroid/widget/Button;

    const v0, 0x7f0a0277

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/MyEditText2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->btn_clear:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->btn_clear:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->btn_eye:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-boolean v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->isShowCleanBtn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->et_content:Landroid/widget/EditText;

    new-instance v1, Lac;

    invoke-direct {v1, p0}, Lac;-><init>(Lcn/apppark/mcd/widget/MyEditText2;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->et_content:Landroid/widget/EditText;

    new-instance v1, Lad;

    invoke-direct {v1, p0}, Lad;-><init>(Lcn/apppark/mcd/widget/MyEditText2;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->et_content:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->et_content:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->et_content:Landroid/widget/EditText;

    new-instance v1, Lae;

    invoke-direct {v1, p0}, Lae;-><init>(Lcn/apppark/mcd/widget/MyEditText2;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->btn_clear:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/mcd/widget/MyEditText2$4;

    invoke-direct {v1, p0}, Lcn/apppark/mcd/widget/MyEditText2$4;-><init>(Lcn/apppark/mcd/widget/MyEditText2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->btn_eye:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/mcd/widget/MyEditText2$5;

    invoke-direct {v1, p0}, Lcn/apppark/mcd/widget/MyEditText2$5;-><init>(Lcn/apppark/mcd/widget/MyEditText2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getMyOnKeyEnter()Lcn/apppark/mcd/widget/MyEditText2$MyOnKeyEnter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->myOnKeyEnter:Lcn/apppark/mcd/widget/MyEditText2$MyOnKeyEnter;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->et_content:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPassOpen(Z)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->isPassWord:Z

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->btn_eye:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    invoke-direct {p0}, Lcn/apppark/mcd/widget/MyEditText2;->changePassShow()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isPhoneOpen(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->et_content:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    :cond_0
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->et_content:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMyOnKeyEnter(Lcn/apppark/mcd/widget/MyEditText2$MyOnKeyEnter;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/MyEditText2;->myOnKeyEnter:Lcn/apppark/mcd/widget/MyEditText2$MyOnKeyEnter;

    return-void
.end method

.method public setShowCleanBtn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/mcd/widget/MyEditText2;->isShowCleanBtn:Z

    return-void
.end method

.method public setShowClearBtn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/mcd/widget/MyEditText2;->isShowCleanBtn:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2;->et_content:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
