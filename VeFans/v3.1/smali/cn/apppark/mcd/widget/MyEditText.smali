.class public Lcn/apppark/mcd/widget/MyEditText;
.super Landroid/widget/EditText;


# instance fields
.field private keyLisTag:I

.field private listener:Lcn/apppark/mcd/widget/MyEditText$MyEditTextClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/mcd/widget/MyEditText;->keyLisTag:I

    invoke-direct {p0}, Lcn/apppark/mcd/widget/MyEditText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/mcd/widget/MyEditText;->keyLisTag:I

    invoke-direct {p0}, Lcn/apppark/mcd/widget/MyEditText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/mcd/widget/MyEditText;->keyLisTag:I

    invoke-direct {p0}, Lcn/apppark/mcd/widget/MyEditText;->init()V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/mcd/widget/MyEditText;)I
    .locals 2

    iget v0, p0, Lcn/apppark/mcd/widget/MyEditText;->keyLisTag:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/apppark/mcd/widget/MyEditText;->keyLisTag:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/mcd/widget/MyEditText;I)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/mcd/widget/MyEditText;->keyLisTag:I

    return v0
.end method

.method public static synthetic b(Lcn/apppark/mcd/widget/MyEditText;)I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/widget/MyEditText;->keyLisTag:I

    return v0
.end method

.method public static synthetic c(Lcn/apppark/mcd/widget/MyEditText;)Lcn/apppark/mcd/widget/MyEditText$MyEditTextClickListener;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyEditText;->listener:Lcn/apppark/mcd/widget/MyEditText$MyEditTextClickListener;

    return-object v0
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/MyEditText;->setSingleLine(Z)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/MyEditText;->setImeOptions(I)V

    new-instance v0, Lab;

    invoke-direct {v0, p0}, Lab;-><init>(Lcn/apppark/mcd/widget/MyEditText;)V

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/MyEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method


# virtual methods
.method public getListener()Lcn/apppark/mcd/widget/MyEditText$MyEditTextClickListener;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyEditText;->listener:Lcn/apppark/mcd/widget/MyEditText$MyEditTextClickListener;

    return-object v0
.end method

.method public setListener(Lcn/apppark/mcd/widget/MyEditText$MyEditTextClickListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/MyEditText;->listener:Lcn/apppark/mcd/widget/MyEditText$MyEditTextClickListener;

    return-void
.end method
