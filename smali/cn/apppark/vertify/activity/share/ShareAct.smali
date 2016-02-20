.class public Lcn/apppark/vertify/activity/share/ShareAct;
.super Lcn/apppark/vertify/activity/BaseAct;

# interfaces
.implements Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;


# instance fields
.field private btn_copy:Landroid/widget/Button;

.field private btn_qzone:Landroid/widget/Button;

.field private btn_sina:Landroid/widget/Button;

.field private btn_sms:Landroid/widget/Button;

.field private btn_weixincircle:Landroid/widget/Button;

.field private btn_weixinfriend:Landroid/widget/Button;

.field private ll_copy:Landroid/widget/LinearLayout;

.field private ll_qzone:Landroid/widget/LinearLayout;

.field private ll_root:Landroid/widget/LinearLayout;

.field private ll_sina:Landroid/widget/LinearLayout;

.field private ll_sms:Landroid/widget/LinearLayout;

.field private ll_title:Landroid/widget/LinearLayout;

.field private ll_weixincircle:Landroid/widget/LinearLayout;

.field private ll_weixinfriend:Landroid/widget/LinearLayout;

.field private mBoundle:Landroid/os/Bundle;

.field private mContent:Ljava/lang/String;

.field private mContentEnd:Ljava/lang/String;

.field private mContentNoUrl:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mImgPath:Ljava/lang/String;

.field private mQzoneUtil:Lcn/apppark/mcd/weibo/QzoneShareUtil;

.field private mSinaUtil:Lcn/apppark/mcd/weibo/SinaShareUtil;

.field private mTargetUrl:Ljava/lang/String;

.field private tv_cancel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/BaseAct;-><init>()V

    iput-object p0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/share/ShareAct;Lcn/apppark/mcd/weibo/QzoneShareUtil;)Lcn/apppark/mcd/weibo/QzoneShareUtil;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mQzoneUtil:Lcn/apppark/mcd/weibo/QzoneShareUtil;

    return-object p1
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/share/ShareAct;Lcn/apppark/mcd/weibo/SinaShareUtil;)Lcn/apppark/mcd/weibo/SinaShareUtil;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mSinaUtil:Lcn/apppark/mcd/weibo/SinaShareUtil;

    return-object p1
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/share/ShareAct;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/apppark/vertify/activity/share/ShareAct;->initToast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/share/ShareAct;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/share/ShareAct;->weiXinShare(Z)V

    return-void
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/share/ShareAct;)Z
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/share/ShareAct;->initShareContent()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcn/apppark/vertify/activity/share/ShareAct;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcn/apppark/vertify/activity/share/ShareAct;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mImgPath:Ljava/lang/String;

    return-object v0
.end method

.method private closeAnima()V
    .locals 4

    const/16 v3, 0x64

    const/16 v2, 0x32

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->ll_weixinfriend:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/share/ShareAct;->getAnimaOut(Landroid/view/View;I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->ll_weixincircle:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v2}, Lcn/apppark/vertify/activity/share/ShareAct;->getAnimaOut(Landroid/view/View;I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->ll_sina:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v3}, Lcn/apppark/vertify/activity/share/ShareAct;->getAnimaOut(Landroid/view/View;I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->ll_qzone:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/share/ShareAct;->getAnimaOut(Landroid/view/View;I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->ll_sms:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v2}, Lcn/apppark/vertify/activity/share/ShareAct;->getAnimaOut(Landroid/view/View;I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->ll_copy:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v3}, Lcn/apppark/vertify/activity/share/ShareAct;->getAnimaOut(Landroid/view/View;I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->tv_cancel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/share/ShareAct;->getAnimaOut(Landroid/view/View;I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->ll_title:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/share/ShareAct;->getAnimaOut(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic d(Lcn/apppark/vertify/activity/share/ShareAct;)Lcn/apppark/mcd/weibo/SinaShareUtil;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mSinaUtil:Lcn/apppark/mcd/weibo/SinaShareUtil;

    return-object v0
.end method

.method static synthetic e(Lcn/apppark/vertify/activity/share/ShareAct;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContentNoUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcn/apppark/vertify/activity/share/ShareAct;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContentEnd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcn/apppark/vertify/activity/share/ShareAct;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mTargetUrl:Ljava/lang/String;

    return-object v0
.end method

.method private getAnimaIn(Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f040000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    return-void
.end method

.method private getAnimaInRotate(Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContext:Landroid/content/Context;

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    return-void
.end method

.method private getAnimaOut(Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContext:Landroid/content/Context;

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    new-instance v1, Loz;

    invoke-direct {v1, p0}, Loz;-><init>(Lcn/apppark/vertify/activity/share/ShareAct;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    return-void
.end method

.method static synthetic h(Lcn/apppark/vertify/activity/share/ShareAct;)Lcn/apppark/mcd/weibo/QzoneShareUtil;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mQzoneUtil:Lcn/apppark/mcd/weibo/QzoneShareUtil;

    return-object v0
.end method

.method static synthetic i(Lcn/apppark/vertify/activity/share/ShareAct;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/share/ShareAct;->closeAnima()V

    return-void
.end method

.method private initShareContent()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mBoundle:Landroid/os/Bundle;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "@###"

    const-string v3, "@apppark"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContent:Ljava/lang/String;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mContent:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContent:Ljava/lang/String;

    invoke-static {v1}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContent:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContent:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mTargetUrl:Ljava/lang/String;

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContent:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mTargetUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContentNoUrl:Ljava/lang/String;

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mBoundle:Landroid/os/Bundle;

    const-string v1, "imgpath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mImgPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--\u6765\u81ea<<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f080001

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/share/ShareAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContentEnd:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const v1, 0x7f080049

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/share/ShareAct;->initToast(II)V

    goto :goto_0
.end method

.method private initWidget()V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f0a0345

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/ShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_sina:Landroid/widget/Button;

    const v0, 0x7f0a034e

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/ShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_copy:Landroid/widget/Button;

    const v0, 0x7f0a0348

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/ShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_qzone:Landroid/widget/Button;

    const v0, 0x7f0a0342

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/ShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_weixincircle:Landroid/widget/Button;

    const v0, 0x7f0a033f

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/ShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_weixinfriend:Landroid/widget/Button;

    const v0, 0x7f0a034b

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/ShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_sms:Landroid/widget/Button;

    const v0, 0x7f0a0350

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/ShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->tv_cancel:Landroid/widget/TextView;

    const v0, 0x7f0a0344

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/ShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->ll_sina:Landroid/widget/LinearLayout;

    const v0, 0x7f0a034d

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/ShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->ll_copy:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0347

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/ShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->ll_qzone:Landroid/widget/LinearLayout;

    const v0, 0x7f0a033e

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/ShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->ll_weixinfriend:Landroid/widget/LinearLayout;

    const v0, 0x7f0a034a

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/ShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->ll_sms:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0341

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/ShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->ll_weixincircle:Landroid/widget/LinearLayout;

    const v0, 0x7f0a033d

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/ShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->ll_title:Landroid/widget/LinearLayout;

    const v0, 0x7f0a033c

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/ShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->ll_root:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_sina:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_copy:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_qzone:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_weixincircle:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_weixinfriend:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_sms:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->tv_cancel:Landroid/widget/TextView;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_copy:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;

    invoke-direct {v1, p0, v2}, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;-><init>(Lcn/apppark/vertify/activity/share/ShareAct;Loz;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->tv_cancel:Landroid/widget/TextView;

    new-instance v1, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;

    invoke-direct {v1, p0, v2}, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;-><init>(Lcn/apppark/vertify/activity/share/ShareAct;Loz;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->ll_root:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;

    invoke-direct {v1, p0, v2}, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;-><init>(Lcn/apppark/vertify/activity/share/ShareAct;Loz;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/share/ShareAct;->setViewState()V

    return-void
.end method

.method static synthetic j(Lcn/apppark/vertify/activity/share/ShareAct;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setViewState()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getQzoneAppID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_qzone:Landroid/widget/Button;

    const v1, 0x7f02011d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_qzone:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;

    invoke-direct {v1, p0, v2}, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;-><init>(Lcn/apppark/vertify/activity/share/ShareAct;Loz;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getSinaAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_sina:Landroid/widget/Button;

    const v1, 0x7f020120

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_sina:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;

    invoke-direct {v1, p0, v2}, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;-><init>(Lcn/apppark/vertify/activity/share/ShareAct;Loz;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v0, v0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getWeixinAppID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_weixincircle:Landroid/widget/Button;

    const v1, 0x7f020122

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_weixinfriend:Landroid/widget/Button;

    const v1, 0x7f020124

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_weixincircle:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;

    invoke-direct {v1, p0, v2}, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;-><init>(Lcn/apppark/vertify/activity/share/ShareAct;Loz;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_weixinfriend:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;

    invoke-direct {v1, p0, v2}, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;-><init>(Lcn/apppark/vertify/activity/share/ShareAct;Loz;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_sms:Landroid/widget/Button;

    const v1, 0x7f02011b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_sms:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;

    invoke-direct {v1, p0, v2}, Lcn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener;-><init>(Lcn/apppark/vertify/activity/share/ShareAct;Loz;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/share/ShareAct;->showAnima()V

    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_qzone:Landroid/widget/Button;

    const v1, 0x7f02011e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_sina:Landroid/widget/Button;

    const v1, 0x7f020121

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_weixincircle:Landroid/widget/Button;

    const v1, 0x7f020123

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->btn_weixinfriend:Landroid/widget/Button;

    const v1, 0x7f020125

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method private showAnima()V
    .locals 9

    const-wide/16 v7, 0x64

    const-wide/16 v5, 0x32

    const-wide/16 v3, 0x0

    const/high16 v2, 0x7f040000

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->ll_weixinfriend:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->ll_weixincircle:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->ll_sina:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->ll_qzone:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->ll_sms:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->ll_copy:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->ll_title:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->tv_cancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContext:Landroid/content/Context;

    const v2, 0x7f040001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    return-void
.end method

.method private weiXinShare(Z)V
    .locals 6

    new-instance v0, Lcn/apppark/mcd/weibo/WeiXinShareUtil;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v1, v1, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getWeixinAppID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/apppark/mcd/weibo/WeiXinShareUtil;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContentNoUrl:Ljava/lang/String;

    iget-object v2, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mContentEnd:Ljava/lang/String;

    const-string v3, ""

    iget-object v4, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mTargetUrl:Ljava/lang/String;

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcn/apppark/mcd/weibo/WeiXinShareUtil;->sendWeiXinImgText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/BaseAct;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mSinaUtil:Lcn/apppark/mcd/weibo/SinaShareUtil;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mSinaUtil:Lcn/apppark/mcd/weibo/SinaShareUtil;

    invoke-virtual {v0}, Lcn/apppark/mcd/weibo/SinaShareUtil;->getmSsoHandler()Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/BaseAct;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/ShareAct;->requestWindowFeature(I)Z

    const v0, 0x7f030087

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/ShareAct;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/share/ShareAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mBoundle:Landroid/os/Bundle;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/share/ShareAct;->initWidget()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/BaseAct;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mSinaUtil:Lcn/apppark/mcd/weibo/SinaShareUtil;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/ShareAct;->mSinaUtil:Lcn/apppark/mcd/weibo/SinaShareUtil;

    invoke-virtual {v0}, Lcn/apppark/mcd/weibo/SinaShareUtil;->getmWeiboShareAPI()Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->handleWeiboResponse(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;)Z

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/sina/weibo/sdk/api/share/BaseResponse;)V
    .locals 2

    iget v0, p1, Lcom/sina/weibo/sdk/api/share/BaseResponse;->errCode:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->SHARE_ACTION_MSG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/share/ShareAct;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/share/ShareAct;->finish()V

    goto :goto_0

    :pswitch_2
    const v0, 0x7f08004b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/share/ShareAct;->initToast(II)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/share/ShareAct;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
