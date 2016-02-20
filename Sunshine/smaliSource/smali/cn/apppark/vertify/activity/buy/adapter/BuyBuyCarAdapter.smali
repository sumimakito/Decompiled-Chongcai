.class public Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;
.super Landroid/widget/BaseAdapter;


# static fields
.field private static CHANGE_NUM:I

.field private static DEL:I


# instance fields
.field a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyOrderVo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFocusEdit:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->DEL:I

    const/4 v0, 0x2

    sput v0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->CHANGE_NUM:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/apppark/vertify/activity/buy/BuyBuyCar;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/apppark/vertify/activity/buy/BuyBuyCar;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyOrderVo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->inflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->context:Landroid/content/Context;

    iput-object p3, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->list:Ljava/util/ArrayList;

    iput-object p2, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->setOldNumber(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->CHANGE_NUM:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->mCurrentFocusEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->mCurrentFocusEdit:Landroid/widget/EditText;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;IILjava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->changeNnm(Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;IILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic b()I
    .locals 1

    sget v0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->DEL:I

    return v0
.end method

.method private changeNnm(Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;IILjava/lang/String;Z)V
    .locals 10

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p1, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotZero(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, p2

    :goto_0
    if-gt v0, v2, :cond_1

    iget-object v0, p1, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->h:Landroid/widget/Button;

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    move v1, v2

    :goto_1
    if-eqz p5, :cond_0

    iget-object v0, p1, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->i:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->setNumber(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    iget-object v4, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->setTotalPrice(Ljava/util/ArrayList;)Ljava/lang/String;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->updateChangeStatus()V

    iget-object v0, p1, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->d:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6570\u91cf:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->b:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%.2f"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    int-to-double v8, v1

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v1, p1, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->h:Landroid/widget/Button;

    const v4, 0x7f020012

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    new-instance v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;

    invoke-direct {v2}, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;-><init>()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030004

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v0, 0x7f0a002e

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->a:Landroid/widget/TextView;

    const v0, 0x7f0a0034

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f0a002b

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->c:Landroid/widget/TextView;

    const v0, 0x7f0a002c

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0033

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->g:Landroid/widget/Button;

    const v0, 0x7f0a0031

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->h:Landroid/widget/Button;

    const v0, 0x7f0a0035

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->f:Landroid/widget/Button;

    const v0, 0x7f0a0030

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f0a002d

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0032

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->i:Landroid/widget/EditText;

    const v0, 0x7f0a002f

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->d:Landroid/widget/TextView;

    const v0, 0x7f0a002a

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->j:Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->g:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->h:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->f:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    invoke-virtual {v7, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->isShowEdit()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->l:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v8, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->g:Landroid/widget/Button;

    new-instance v0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getPrice()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;-><init>(Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;Ljava/lang/String;II)V

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->h:Landroid/widget/Button;

    new-instance v0, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getPrice()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;-><init>(Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;Ljava/lang/String;II)V

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->f:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;

    invoke-direct {v1, p0, p1}, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick;-><init>(Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getStandardValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u5355\u4ef7:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u6570\u91cf:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->b:Landroid/widget/TextView;

    const-string v1, "%.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getPrice()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-double v10, v5

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->i:Landroid/widget/EditText;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->i:Landroid/widget/EditText;

    new-instance v0, Lgk;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getPrice()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lgk;-><init>(Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;Ljava/lang/String;II)V

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->i:Landroid/widget/EditText;

    new-instance v1, Lgi;

    iget-object v3, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->i:Landroid/widget/EditText;

    invoke-direct {v1, p0, v3}, Lgi;-><init>(Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->i:Landroid/widget/EditText;

    new-instance v1, Lgj;

    iget-object v3, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->i:Landroid/widget/EditText;

    invoke-direct {v1, p0, v3}, Lgj;-><init>(Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->j:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v6}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getPicPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    :cond_0
    return-object v7

    :cond_1
    iget-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->l:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->f:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, v2, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$ViewHolder;->k:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method
