.class final Lar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laq;


# direct methods
.method constructor <init>(Laq;)V
    .locals 0

    iput-object p1, p0, Lar;->a:Laq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lar;->a:Laq;

    iget-object v0, v0, Laq;->a:Lcn/apppark/mcd/widget/WaterfallImageView;

    iget-object v0, v0, Lcn/apppark/mcd/widget/WaterfallImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lar;->a:Laq;

    iget-object v0, v0, Laq;->a:Lcn/apppark/mcd/widget/WaterfallImageView;

    iget-object v0, v0, Lcn/apppark/mcd/widget/WaterfallImageView;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lar;->a:Laq;

    iget-object v1, v1, Laq;->a:Lcn/apppark/mcd/widget/WaterfallImageView;

    iget-object v1, v1, Lcn/apppark/mcd/widget/WaterfallImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
