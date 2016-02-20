.class public Lcn/apppark/mcd/widget/WaterfallImageView;
.super Landroid/widget/RelativeLayout;


# static fields
.field public static final PIC_WHAT:I = 0x1


# instance fields
.field public a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field public bitmap:Landroid/graphics/Bitmap;

.field c:Landroid/widget/TextView;

.field private columnIndex:I

.field private context:Landroid/content/Context;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/ImageView;

.field h:Ljava/lang/String;

.field i:Z

.field private itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

.field private returnVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

.field private rowSpace:I

.field private viewHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;Lcn/apppark/mcd/vo/dyn/DynMsgListVo;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->rowSpace:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->i:Z

    iput-object p2, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->returnVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    iput-object p1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->context:Landroid/content/Context;

    iput-object p3, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    iput-object p4, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->h:Ljava/lang/String;

    invoke-direct {p0}, Lcn/apppark/mcd/widget/WaterfallImageView;->Init()V

    return-void
.end method

.method private Init()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget v0, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->rowSpace:I

    invoke-virtual {p0, v3, v3, v3, v0}, Lcn/apppark/mcd/widget/WaterfallImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03003c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a01c2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->a:Landroid/widget/ImageView;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->e:Landroid/widget/TextView;

    const v1, 0x7f0a01c7

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->f:Landroid/widget/TextView;

    const v1, 0x7f0a01c4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->b:Landroid/widget/TextView;

    const v1, 0x7f0a01c5

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->c:Landroid/widget/TextView;

    const v1, 0x7f0a01c9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->d:Landroid/widget/TextView;

    const v1, 0x7f0a01c6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v1, "1"

    iget-object v2, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->returnVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->g:Landroid/widget/ImageView;

    const v2, 0x7f020089

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_text1Size()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_text1Color()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_text1Bold()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->returnVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->returnVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getNote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->returnVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getCommentCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->returnVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getBrowseCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcn/apppark/mcd/widget/WaterfallImageView$1;

    invoke-direct {v1, p0}, Lcn/apppark/mcd/widget/WaterfallImageView$1;-><init>(Lcn/apppark/mcd/widget/WaterfallImageView;)V

    invoke-virtual {p0, v1}, Lcn/apppark/mcd/widget/WaterfallImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->a:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    iget-object v1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_rowBgColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/imge/ImgUtil;->getRoundColorBg(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/WaterfallImageView;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    const-string v1, "2"

    iget-object v2, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->returnVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->g:Landroid/widget/ImageView;

    const v2, 0x7f02007d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const-string v1, "3"

    iget-object v2, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->returnVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->g:Landroid/widget/ImageView;

    const v2, 0x7f02008c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public static synthetic a(Lcn/apppark/mcd/widget/WaterfallImageView;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcn/apppark/mcd/widget/WaterfallImageView;->downLoadPic(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/mcd/widget/WaterfallImageView;)Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->returnVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/mcd/widget/WaterfallImageView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/mcd/widget/WaterfallImageView;)Lcn/apppark/mcd/vo/dyn/DynMsgListVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    return-object v0
.end method

.method private downLoadPic(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v2, 0x0

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->cacheUtil:Lcn/apppark/mcd/util/imge/CacheUtil;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/apppark/ckj10185912/YYGYContants;->baseImgCachePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcn/apppark/mcd/util/PublicUtil;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/util/imge/CacheUtil;->findBitmapByAbPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x200

    new-array v3, v3, [B

    :goto_1
    const/4 v4, 0x0

    const/16 v5, 0x200

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    :try_start_3
    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->baseImgCachePath:Ljava/lang/String;

    invoke-static {p1}, Lcn/apppark/mcd/util/PublicUtil;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3, p1}, Lcn/apppark/mcd/util/imge/ImgUtil;->saveMyBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v1

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public LoadImage()V
    .locals 1

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/WaterfallImageView;->getFlowTag()Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lap;

    invoke-direct {v0, p0}, Lap;-><init>(Lcn/apppark/mcd/widget/WaterfallImageView;)V

    invoke-virtual {v0}, Lap;->start()V

    :cond_0
    return-void
.end method

.method public Reload()V
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/WaterfallImageView;->getFlowTag()Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lar;

    invoke-direct {v0, p0}, Lar;-><init>(Lcn/apppark/mcd/widget/WaterfallImageView;)V

    invoke-virtual {v0}, Lar;->start()V

    :cond_0
    return-void
.end method

.method public getColumnIndex()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->columnIndex:I

    return v0
.end method

.method public getFlowTag()Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->returnVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    return-object v0
.end method

.method public getViewHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->viewHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public recycle()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setColumnIndex(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->columnIndex:I

    return-void
.end method

.method public setDynMsgListReturnVo(Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->returnVo:Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    return-void
.end method

.method public setViewHandler(Landroid/os/Handler;)Lcn/apppark/mcd/widget/WaterfallImageView;
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/WaterfallImageView;->viewHandler:Landroid/os/Handler;

    return-object p0
.end method
