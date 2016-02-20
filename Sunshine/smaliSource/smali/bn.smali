.class public final Lbn;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)V
    .locals 0

    iput-object p1, p0, Lbn;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lbn;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-static {v1}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->b(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->left:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lbn;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-static {v1}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->f(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)Landroid/widget/ImageView;

    move-result-object v1

    sget-object v2, Lcn/apppark/ckj10185912/HQCHApplication;->cacheUtil:Lcn/apppark/mcd/util/imge/CacheUtil;

    iget-object v3, p0, Lbn;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-static {v3}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->e(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    move-result-object v3

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_slipLeftPic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/apppark/mcd/util/imge/CacheUtil;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget v0, v0, Landroid/graphics/Rect;->right:I

    sget v1, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    iget-object v2, p0, Lbn;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-static {v2}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->e(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_slipWidth()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lbn;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-static {v2}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->g(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)I

    move-result v2

    div-int/2addr v1, v2

    iget-object v2, p0, Lbn;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-static {v2}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->d(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, -0xa

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lbn;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->h(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->cacheUtil:Lcn/apppark/mcd/util/imge/CacheUtil;

    iget-object v2, p0, Lbn;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-static {v2}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->e(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_slipRightPic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/apppark/mcd/util/imge/CacheUtil;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lbn;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-static {v1}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->f(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)Landroid/widget/ImageView;

    move-result-object v1

    sget-object v2, Lcn/apppark/ckj10185912/HQCHApplication;->cacheUtil:Lcn/apppark/mcd/util/imge/CacheUtil;

    iget-object v3, p0, Lbn;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-static {v3}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->e(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    move-result-object v3

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_slipLeftLightPic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/apppark/mcd/util/imge/CacheUtil;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbn;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-static {v0}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->h(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->cacheUtil:Lcn/apppark/mcd/util/imge/CacheUtil;

    iget-object v2, p0, Lbn;->a:Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-static {v2}, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;->e(Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;)Lcn/apppark/mcd/vo/navigation/NavigationTabVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/navigation/NavigationTabVo;->getStyle_slipRightLightPic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/apppark/mcd/util/imge/CacheUtil;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
