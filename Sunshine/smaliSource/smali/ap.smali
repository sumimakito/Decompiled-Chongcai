.class final Lap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lao;


# direct methods
.method constructor <init>(Lao;)V
    .locals 0

    iput-object p1, p0, Lap;->a:Lao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lap;->a:Lao;

    iget-object v0, v0, Lao;->a:Lcn/apppark/mcd/widget/WaterfallImageView;

    iget-object v0, v0, Lcn/apppark/mcd/widget/WaterfallImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lap;->a:Lao;

    iget-object v0, v0, Lao;->a:Lcn/apppark/mcd/widget/WaterfallImageView;

    iget-object v0, v0, Lcn/apppark/mcd/widget/WaterfallImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v0, p0, Lap;->a:Lao;

    iget-object v0, v0, Lao;->a:Lcn/apppark/mcd/widget/WaterfallImageView;

    iget-object v0, v0, Lcn/apppark/mcd/widget/WaterfallImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v2, p0, Lap;->a:Lao;

    iget-object v2, v2, Lao;->a:Lcn/apppark/mcd/widget/WaterfallImageView;

    iget-object v2, v2, Lcn/apppark/mcd/widget/WaterfallImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    const-string v2, "0"

    iget-object v3, p0, Lap;->a:Lao;

    iget-object v3, v3, Lao;->a:Lcn/apppark/mcd/widget/WaterfallImageView;

    invoke-static {v3}, Lcn/apppark/mcd/widget/WaterfallImageView;->c(Lcn/apppark/mcd/widget/WaterfallImageView;)Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    move-result-object v3

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_picStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lap;->a:Lao;

    iget-object v2, v2, Lao;->a:Lcn/apppark/mcd/widget/WaterfallImageView;

    invoke-static {v2}, Lcn/apppark/mcd/widget/WaterfallImageView;->a(Lcn/apppark/mcd/widget/WaterfallImageView;)Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getItemWidth()I

    move-result v2

    mul-int/2addr v0, v2

    div-int/2addr v0, v1

    :goto_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lap;->a:Lao;

    iget-object v3, v3, Lao;->a:Lcn/apppark/mcd/widget/WaterfallImageView;

    iget-object v3, v3, Lcn/apppark/mcd/widget/WaterfallImageView;->a:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, p0, Lap;->a:Lao;

    iget-object v3, v3, Lao;->a:Lcn/apppark/mcd/widget/WaterfallImageView;

    iget-object v3, v3, Lcn/apppark/mcd/widget/WaterfallImageView;->a:Landroid/widget/ImageView;

    iget-object v4, p0, Lap;->a:Lao;

    iget-object v4, v4, Lao;->a:Lcn/apppark/mcd/widget/WaterfallImageView;

    iget-object v4, v4, Lcn/apppark/mcd/widget/WaterfallImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lap;->a:Lao;

    iget-object v3, v3, Lao;->a:Lcn/apppark/mcd/widget/WaterfallImageView;

    iget-object v3, v3, Lcn/apppark/mcd/widget/WaterfallImageView;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lap;->a:Lao;

    iget-object v2, v2, Lao;->a:Lcn/apppark/mcd/widget/WaterfallImageView;

    invoke-virtual {v2}, Lcn/apppark/mcd/widget/WaterfallImageView;->getViewHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lap;->a:Lao;

    iget-object v3, v3, Lao;->a:Lcn/apppark/mcd/widget/WaterfallImageView;

    invoke-virtual {v3}, Lcn/apppark/mcd/widget/WaterfallImageView;->getViewHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lap;->a:Lao;

    iget-object v5, v5, Lao;->a:Lcn/apppark/mcd/widget/WaterfallImageView;

    invoke-virtual {v3, v4, v1, v0, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lap;->a:Lao;

    iget-object v0, v0, Lao;->a:Lcn/apppark/mcd/widget/WaterfallImageView;

    invoke-static {v0}, Lcn/apppark/mcd/widget/WaterfallImageView;->c(Lcn/apppark/mcd/widget/WaterfallImageView;)Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_picHeight()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
