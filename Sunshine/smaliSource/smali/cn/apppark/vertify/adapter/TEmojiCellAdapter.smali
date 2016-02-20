.class public Lcn/apppark/vertify/adapter/TEmojiCellAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private emojStrings:[Ljava/lang/String;

.field private faces:[I

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;[I[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcn/apppark/vertify/adapter/TEmojiCellAdapter;->faces:[I

    iput-object p3, p0, Lcn/apppark/vertify/adapter/TEmojiCellAdapter;->emojStrings:[Ljava/lang/String;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/vertify/adapter/TEmojiCellAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TEmojiCellAdapter;->faces:[I

    array-length v0, v0

    return v0
.end method

.method public getFaceId(I)I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TEmojiCellAdapter;->faces:[I

    aget v0, v0, p1

    return v0
.end method

.method public getFaceStr(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TEmojiCellAdapter;->emojStrings:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TEmojiCellAdapter;->faces:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TEmojiCellAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300b1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lve;

    invoke-direct {v1, p0}, Lve;-><init>(Lcn/apppark/vertify/adapter/TEmojiCellAdapter;)V

    const v0, 0x7f0a043a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lve;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    iget-object v0, v0, Lve;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/apppark/vertify/adapter/TEmojiCellAdapter;->faces:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lve;

    goto :goto_0
.end method
