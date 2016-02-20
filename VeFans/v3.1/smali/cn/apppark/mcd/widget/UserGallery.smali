.class public Lcn/apppark/mcd/widget/UserGallery;
.super Landroid/widget/Gallery;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private mPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private isScrollingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcn/apppark/mcd/widget/UserGallery;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/UserGallery;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Gallery;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getmPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/UserGallery;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    invoke-direct {p0, p1, p2}, Lcn/apppark/mcd/widget/UserGallery;->isScrollingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/apppark/mcd/widget/UserGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/16 v0, 0x16

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/UserGallery;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/apppark/mcd/widget/UserGallery;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/UserGallery;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/apppark/mcd/widget/UserGallery;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPage(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/UserGallery;->mPager:Landroid/support/v4/view/ViewPager;

    return-void
.end method

.method public setmPager(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/UserGallery;->mPager:Landroid/support/v4/view/ViewPager;

    return-void
.end method
