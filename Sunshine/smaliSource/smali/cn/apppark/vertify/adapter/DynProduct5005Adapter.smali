.class public Lcn/apppark/vertify/adapter/DynProduct5005Adapter;
.super Lcn/apppark/vertify/adapter/TempBaseAdapter;


# instance fields
.field a:Landroid/view/LayoutInflater;

.field b:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

.field private columns:I

.field private context:Landroid/content/Context;

.field private pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

.field private pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

.field private reItemVoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/DynProductVo;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;",
            "Landroid/content/Context;",
            "Lcn/apppark/mcd/vo/base/FreePageVo;",
            "Lcn/apppark/mcd/vo/dyn/DynProductVo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcn/apppark/vertify/adapter/TempBaseAdapter;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->columns:I

    iput-object p2, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->context:Landroid/content/Context;

    iput-object p3, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    iput-object p4, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    iput-object p5, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->reItemVoList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->b:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->a:Landroid/view/LayoutInflater;

    return-void
.end method

.method private setState(Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/16 v4, 0x1a

    const/16 v5, 0xf

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->context:Landroid/content/Context;

    const v2, 0x7f020113

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrStartPic(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p4}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->context:Landroid/content/Context;

    const v2, 0x7f02010a

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrStartPic(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p4}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->context:Landroid/content/Context;

    const v2, 0x7f020117

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrStartPic(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->reItemVoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->columns:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->reItemVoList:Ljava/util/ArrayList;

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
    .locals 11

    const/16 v6, 0x91

    const/16 v4, 0x10

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lua;

    invoke-direct {v1}, Lua;-><init>()V

    const v0, 0x7f0a0214

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lua;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0215

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, v1, Lua;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a0216

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lua;->c:Landroid/widget/TextView;

    const v0, 0x7f0a0218

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lua;->d:Landroid/widget/TextView;

    const v0, 0x7f0a0219

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lua;->e:Landroid/widget/TextView;

    const v0, 0x7f0a021a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lua;->f:Landroid/widget/TextView;

    iget-object v0, v1, Lua;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setFlags(I)V

    const v0, 0x7f0a021b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lua;->g:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a021c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, v1, Lua;->h:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a021d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lua;->i:Landroid/widget/TextView;

    const v0, 0x7f0a021f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lua;->j:Landroid/widget/TextView;

    const v0, 0x7f0a0220

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lua;->k:Landroid/widget/TextView;

    const v0, 0x7f0a0221

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lua;->l:Landroid/widget/TextView;

    iget-object v0, v1, Lua;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setFlags(I)V

    iget-object v0, v1, Lua;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_text1Size()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_text1Color()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_text1Bold()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v4, v5}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lua;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_text1Size()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_text1Color()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_text1Bold()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v4, v5}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lua;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/RemoteImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v6}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, v1, Lua;->h:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/RemoteImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v6}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, v1, Lua;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_rowBgType()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_rowBgPic()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_rowBgColor()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v4, v5}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundWithSel(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lua;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lua;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_rowBgAlpha()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0xff

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object v0, v1, Lua;->g:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_rowBgType()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_rowBgPic()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_rowBgColor()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v4, v5}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundWithSel(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lua;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lua;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_rowBgAlpha()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0xff

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    add-int/lit8 v0, p1, 0x1

    iget v2, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->columns:I

    mul-int/2addr v0, v2

    iget-object v2, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->reItemVoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget v0, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->columns:I

    move v4, v0

    :goto_1
    if-ne v4, v9, :cond_5

    iget-object v0, v1, Lua;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    move v2, v3

    :goto_3
    iget v0, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->columns:I

    if-ge v2, v0, :cond_9

    if-ge v2, v4, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->reItemVoList:Ljava/util/ArrayList;

    iget v5, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->columns:I

    mul-int/2addr v5, p1

    add-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;

    if-nez v2, :cond_7

    if-eqz v0, :cond_7

    iget-object v5, v1, Lua;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getPicPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v5, v1, Lua;->b:Lcn/apppark/mcd/widget/RemoteImageView;

    const v6, 0x7f020071

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    iget-object v5, v1, Lua;->d:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\uffe5"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getPrice()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v1, Lua;->e:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\uffe5"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getOriPrice()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "0"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getOriPrice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v1, Lua;->e:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget-object v5, v1, Lua;->f:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->context:Landroid/content/Context;

    const v8, 0x7f080046

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getSoldCount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getCommentCount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->context:Landroid/content/Context;

    const v8, 0x7f080045

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v1, Lua;->a:Landroid/widget/RelativeLayout;

    new-instance v6, Lcn/apppark/vertify/adapter/DynProduct5005Adapter$MyOnClick;

    invoke-direct {v6, p0, v0, v9}, Lcn/apppark/vertify/adapter/DynProduct5005Adapter$MyOnClick;-><init>(Lcn/apppark/vertify/adapter/DynProduct5005Adapter;Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;I)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getType()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lua;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v7}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_text1Color()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v0, v7}, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->setState(Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua;

    move-object v1, v0

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->reItemVoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->columns:I

    mul-int/2addr v2, p1

    sub-int/2addr v0, v2

    move v4, v0

    goto/16 :goto_1

    :cond_5
    iget-object v0, v1, Lua;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
    iget-object v5, v1, Lua;->e:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_7
    if-ne v2, v9, :cond_2

    if-eqz v0, :cond_2

    iget-object v5, v1, Lua;->h:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getPicPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v5, v1, Lua;->h:Lcn/apppark/mcd/widget/RemoteImageView;

    const v6, 0x7f020071

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    iget-object v5, v1, Lua;->j:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\uffe5"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getPrice()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v1, Lua;->k:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\uffe5"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getOriPrice()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "0"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getOriPrice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v1, Lua;->k:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    iget-object v5, v1, Lua;->l:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->context:Landroid/content/Context;

    const v8, 0x7f080046

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getSoldCount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getCommentCount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->context:Landroid/content/Context;

    const v8, 0x7f080045

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v1, Lua;->g:Landroid/widget/RelativeLayout;

    new-instance v6, Lcn/apppark/vertify/adapter/DynProduct5005Adapter$MyOnClick;

    invoke-direct {v6, p0, v0, v9}, Lcn/apppark/vertify/adapter/DynProduct5005Adapter$MyOnClick;-><init>(Lcn/apppark/vertify/adapter/DynProduct5005Adapter;Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;I)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getType()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lua;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->pageItem:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v7}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_text1Color()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v0, v7}, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->setState(Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_8
    iget-object v5, v1, Lua;->k:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_9
    return-object p2
.end method
