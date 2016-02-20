.class public Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/apppark/vertify/activity/ISelfViewDyn;


# static fields
.field public static REQUEST_PUSH_MSG:I


# instance fields
.field private final GET_PUSHMSG_NUM:I

.field private final REQUEST_LOGIN:I

.field private final REQUEST_LOGIN_OFF:I

.field a:Lcn/apppark/mcd/vo/dyn/Dyn5006Vo;

.field b:Lcn/apppark/vertify/activity/FreeAct;

.field private btn_login:Landroid/widget/Button;

.field private btn_reg:Landroid/widget/Button;

.field c:Lcn/apppark/vertify/base/ClientPersionInfo;

.field private context:Landroid/content/Context;

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field private handler:Lik;

.field i:Landroid/view/animation/ScaleAnimation;

.field private img_head:Lcn/apppark/mcd/widget/RemoteImageView;

.field private img_headbg:Landroid/widget/ImageView;

.field private isAnimaEnd:Z

.field j:Landroid/view/animation/ScaleAnimation;

.field private ll_buyCard:Landroid/widget/LinearLayout;

.field private ll_collection:Landroid/widget/LinearLayout;

.field private ll_loginState:Landroid/widget/LinearLayout;

.field private ll_msg:Landroid/widget/LinearLayout;

.field private ll_myFriend:Landroid/widget/LinearLayout;

.field private ll_noLoginState:Landroid/widget/LinearLayout;

.field private ll_notice:Landroid/widget/LinearLayout;

.field private ll_set:Landroid/widget/LinearLayout;

.field private ll_tieBa:Landroid/widget/LinearLayout;

.field protected loadDialog:Landroid/app/Dialog;

.field private loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

.field private rel_line1:Landroid/widget/RelativeLayout;

.field private rel_line2:Landroid/widget/RelativeLayout;

.field private rel_line3:Landroid/widget/RelativeLayout;

.field private tv_line1:Landroid/widget/TextView;

.field private tv_line2:Landroid/widget/TextView;

.field private tv_msgNum:Landroid/widget/TextView;

.field private tv_noticeNum:Landroid/widget/TextView;

.field private tv_signName:Landroid/widget/TextView;

.field private tv_username:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    sput v0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->REQUEST_PUSH_MSG:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/Dyn5006Vo;Lcn/apppark/mcd/widget/ElasticScrollView;Lcn/apppark/vertify/activity/FreeAct;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->REQUEST_LOGIN:I

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->REQUEST_LOGIN_OFF:I

    const/4 v0, 0x6

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->GET_PUSHMSG_NUM:I

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->isAnimaEnd:Z

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->d:Z

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->e:Z

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->f:Z

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->g:Z

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->h:Z

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->context:Landroid/content/Context;

    iput-object p4, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->b:Lcn/apppark/vertify/activity/FreeAct;

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->a:Lcn/apppark/mcd/vo/dyn/Dyn5006Vo;

    invoke-virtual {p2}, Lcn/apppark/mcd/vo/dyn/Dyn5006Vo;->getStyle_navBgColor()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    new-instance v0, Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-direct {v0, p1}, Lcn/apppark/vertify/base/ClientPersionInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->c:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {p3, v1}, Lcn/apppark/mcd/widget/ElasticScrollView;->setRefreshable(Z)V

    const-string v0, "\u6570\u636e\u63d0\u4ea4\u4e2d..."

    invoke-static {v0, p1}, Lcn/apppark/mcd/util/PublicUtil;->createLoadingDialog(Ljava/lang/String;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->loadDialog:Landroid/app/Dialog;

    new-instance v0, Lik;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lik;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;Lii;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->handler:Lik;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->initWidget()V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->getAnimaSmall(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->isAnimaEnd:Z

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->tv_noticeNum:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->getAnimaBig(Landroid/view/View;)V

    return-void
.end method

.method private changeItemState()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    const-string v0, "1"

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v1, v1, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getHaveProduct()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->d:Z

    :cond_0
    const-string v0, "1"

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v1, v1, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getHaveTieba()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->f:Z

    :cond_1
    const-string v0, "1"

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v1, v1, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getHaveInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v4, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->e:Z

    :cond_2
    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->d:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_buyCard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->rel_line1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->f:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_tieBa:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->rel_line2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->e:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->d:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->f:Z

    if-eqz v0, :cond_8

    :cond_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_collection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v4, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->h:Z

    :goto_2
    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->f:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->h:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->d:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->tv_line1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->tv_line2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->f:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->h:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->rel_line1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_buyCard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->rel_line1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_tieBa:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->rel_line2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_collection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_9
    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->h:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->rel_line2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3
.end method

.method private changeLoginInfo()V
    .locals 3

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->c:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_loginState:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_noLoginState:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->img_head:Lcn/apppark/mcd/widget/RemoteImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_loginState:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_noLoginState:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->c:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserNikeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->tv_username:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->c:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserNikeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->tv_username:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->c:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserSign()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->tv_signName:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->c:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserSign()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->c:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserHeadFace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->img_head:Lcn/apppark/mcd/widget/RemoteImageView;

    const v1, 0x7f0200fb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->img_head:Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->c:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserHeadFace()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrlRound(Ljava/lang/String;I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->img_head:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/RemoteImageView;->refreshDrawableState()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->tv_username:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->tv_signName:Landroid/widget/TextView;

    const-string v1, "\u4e2a\u6027\u7b7e\u540d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private getAnimaBig(Landroid/view/View;)V
    .locals 9

    const v2, 0x3f99999a    # 1.2f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->i:Landroid/view/animation/ScaleAnimation;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->i:Landroid/view/animation/ScaleAnimation;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->i:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x2328

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->i:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->i:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->i:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->i:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Lii;

    invoke-direct {v1, p0, p1}, Lii;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->i:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->i:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0}, Landroid/view/animation/ScaleAnimation;->start()V

    return-void
.end method

.method private getAnimaSmall(Landroid/view/View;)V
    .locals 9

    const v1, 0x3f99999a    # 1.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->j:Landroid/view/animation/ScaleAnimation;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->j:Landroid/view/animation/ScaleAnimation;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->j:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x2328

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->i:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->j:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->j:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->j:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Lij;

    invoke-direct {v1, p0, p1}, Lij;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->j:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->j:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0}, Landroid/view/animation/ScaleAnimation;->start()V

    return-void
.end method

.method private getPushMsgNum(I)V
    .locals 8

    const/4 v3, 0x1

    const-string v0, "2015-11-28 11:37:001"

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->c:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getLastPushMsgTime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->c:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getLastPushMsgTime()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "readTime"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "currPage"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pageSize"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->handler:Lik;

    const-string v3, "json"

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/member.ws"

    const-string v7, "getMyMsg"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private initWidget()V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03003d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a01d4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_buyCard:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01d6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_tieBa:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01d8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_myFriend:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01da

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_collection:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01dc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_msg:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01de

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_notice:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01e0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_set:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01cd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_loginState:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01d0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_noLoginState:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01d5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->rel_line1:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a01d7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->rel_line2:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a01d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->rel_line3:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a01d3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->tv_line1:Landroid/widget/TextView;

    const v0, 0x7f0a01db

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->tv_line2:Landroid/widget/TextView;

    const v0, 0x7f0a01d1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->btn_reg:Landroid/widget/Button;

    const v0, 0x7f0a01d2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->btn_login:Landroid/widget/Button;

    const v0, 0x7f0a01ce

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->tv_username:Landroid/widget/TextView;

    const v0, 0x7f0a01cf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->tv_signName:Landroid/widget/TextView;

    const v0, 0x7f0a01dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->tv_msgNum:Landroid/widget/TextView;

    const v0, 0x7f0a01df

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->tv_noticeNum:Landroid/widget/TextView;

    const v0, 0x7f0a01cc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->img_head:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a01cb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->img_headbg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->img_headbg:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->getAnimaBig(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->btn_reg:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->btn_login:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_buyCard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_tieBa:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_myFriend:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_collection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_msg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_notice:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->ll_set:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->btn_reg:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->btn_login:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->tv_username:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->tv_signName:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->img_head:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0, p0}, Lcn/apppark/mcd/widget/RemoteImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->changeItemState()V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    return-void
.end method

.method public initData()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcn/apppark/vertify/activity/ILoadDataEndListener;->onLoadSuccess(I)V

    :cond_0
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->getPushMsgNum(I)V

    return-void
.end method

.method public isCache()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOnMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->changeLoginInfo()V

    sget v0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->REQUEST_PUSH_MSG:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->getPushMsgNum(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->a:Lcn/apppark/mcd/vo/dyn/Dyn5006Vo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5006Vo;->getStyle_navBgColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->a:Lcn/apppark/mcd/vo/dyn/Dyn5006Vo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5006Vo;->getStyle_navBgColor()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a01d1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a01dc

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a01e0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->c:Lcn/apppark/vertify/base/ClientPersionInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->context:Landroid/content/Context;

    invoke-static {}, Lcn/apppark/ckj10185912/YYGYContants;->getLoginClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->b:Lcn/apppark/vertify/activity/FreeAct;

    invoke-virtual {v1}, Lcn/apppark/vertify/activity/FreeAct;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    :pswitch_0
    return-void

    :cond_0
    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_DEFAULT_COLOR:Ljava/lang/String;

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_1

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->context:Landroid/content/Context;

    const-class v2, Lcn/apppark/vertify/activity/persion/PersonInfo;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->context:Landroid/content/Context;

    const-class v2, Lcn/apppark/vertify/activity/buy/BuyMyCenter;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->context:Landroid/content/Context;

    const-class v2, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->context:Landroid/content/Context;

    const-class v2, Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "haveinfo"

    iget-boolean v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->e:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "haveproduct"

    iget-boolean v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->d:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "havetieba"

    iget-boolean v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->f:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->context:Landroid/content/Context;

    const-class v2, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->b:Lcn/apppark/vertify/activity/FreeAct;

    invoke-virtual {v1}, Lcn/apppark/vertify/activity/FreeAct;->getParent()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->REQUEST_PUSH_MSG:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->context:Landroid/content/Context;

    const-class v2, Lcn/apppark/vertify/activity/persion/SetInfo;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->b:Lcn/apppark/vertify/activity/FreeAct;

    invoke-virtual {v1}, Lcn/apppark/vertify/activity/FreeAct;->getParent()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->context:Landroid/content/Context;

    invoke-static {}, Lcn/apppark/ckj10185912/YYGYContants;->getRegClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->b:Lcn/apppark/vertify/activity/FreeAct;

    invoke-virtual {v1}, Lcn/apppark/vertify/activity/FreeAct;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->context:Landroid/content/Context;

    invoke-static {}, Lcn/apppark/ckj10185912/YYGYContants;->getLoginClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->b:Lcn/apppark/vertify/activity/FreeAct;

    invoke-virtual {v1}, Lcn/apppark/vertify/activity/FreeAct;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a01cc
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->loadDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->img_headbg:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->isAnimaEnd:Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->img_headbg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRefresh()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcn/apppark/vertify/activity/ILoadDataEndListener;->onLoadSuccess(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->changeLoginInfo()V

    return-void
.end method

.method public setLoadendListener(Lcn/apppark/vertify/activity/ILoadDataEndListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    return-void
.end method
