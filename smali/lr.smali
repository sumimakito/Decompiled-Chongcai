.class public final Llr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/self/SelfImageView;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/self/SelfImageView;)V
    .locals 0

    iput-object p1, p0, Llr;->a:Lcn/apppark/vertify/activity/free/self/SelfImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/16 v1, 0xff

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mFloatSel:[F

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    iget-object v0, p0, Llr;->a:Lcn/apppark/vertify/activity/free/self/SelfImageView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfImageView;->d(Lcn/apppark/vertify/activity/free/self/SelfImageView;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
