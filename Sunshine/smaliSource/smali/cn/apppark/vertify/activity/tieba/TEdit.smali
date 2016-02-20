.class public Lcn/apppark/vertify/activity/tieba/TEdit;
.super Lcn/apppark/vertify/activity/tieba/TBBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final BIGGER:I

.field private final MSG_RESIZE:I

.field private final REPORT_WHAT:I

.field private final SEND_WHAT:I

.field private final SMALLER:I

.field private btn_add:Landroid/widget/Button;

.field private btn_back:Landroid/widget/Button;

.field private btn_camera:Landroid/widget/Button;

.field private btn_delEmjo:Landroid/widget/Button;

.field private btn_face:Landroid/widget/Button;

.field private btn_send:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private currentFacePage:I

.field private et_content:Landroid/widget/EditText;

.field private et_title:Landroid/widget/EditText;

.field private faceViewPager:Landroid/support/v4/view/ViewPager;

.field private handler:Lsd;

.field private isFaceShow:Z

.field private isPicShow:Z

.field private ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

.field private ll_point:Landroid/widget/LinearLayout;

.field private ll_root:Lcn/apppark/mcd/widget/MyResizeLinearLayout;

.field private operateType:I

.field private pageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private parentScroll:Landroid/widget/HorizontalScrollView;

.field private pointViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private rel_faceChose:Landroid/widget/RelativeLayout;

.field private rel_picchoose:Landroid/widget/RelativeLayout;

.field private topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

.field private tv_number:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->BIGGER:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->SMALLER:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->MSG_RESIZE:I

    const/4 v0, 0x4

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->SEND_WHAT:I

    const/4 v0, 0x5

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->REPORT_WHAT:I

    iput-object p0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->context:Landroid/content/Context;

    iput v1, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->currentFacePage:I

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->isFaceShow:Z

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->isPicShow:Z

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TEdit;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->currentFacePage:I

    return p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TEdit;)Lsd;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->handler:Lsd;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/tieba/TEdit;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->btn_face:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/tieba/TEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/tieba/TEdit;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->btn_camera:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->btn_delEmjo:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/tieba/TEdit;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->currentFacePage:I

    return v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/tieba/TEdit;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->pointViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->et_title:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->et_content:Landroid/widget/EditText;

    return-object v0
.end method

.method private initContentParam()V
    .locals 3

    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->createLoadingDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->loadDialog:Landroid/app/Dialog;

    new-instance v0, Lsd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsd;-><init>(Lcn/apppark/vertify/activity/tieba/TEdit;Lsa;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->handler:Lsd;

    const v0, 0x7f0a0437

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/TCellLinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    const v0, 0x7f0a0438

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->btn_add:Landroid/widget/Button;

    const v0, 0x7f0a0436

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->parentScroll:Landroid/widget/HorizontalScrollView;

    const v0, 0x7f0a0439

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->tv_number:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->parentScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/TCellLinearLayout;->setParentScroll(Landroid/widget/HorizontalScrollView;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->tv_number:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/TCellLinearLayout;->setTv_number(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->tv_number:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/TCellLinearLayout;->setTextNum(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->btn_add:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/TCellLinearLayout;->setBtn_add(Landroid/widget/Button;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    invoke-virtual {v0, p0}, Lcn/apppark/mcd/widget/TCellLinearLayout;->setParentAct(Landroid/app/Activity;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->btn_add:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initFace()V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->faceViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcn/apppark/vertify/adapter/ViewPagerAdapter;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->pageViews:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcn/apppark/vertify/adapter/ViewPagerAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->faceViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->faceViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lsc;

    invoke-direct {v1, p0}, Lsc;-><init>(Lcn/apppark/vertify/activity/tieba/TEdit;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private initTopMenu()V
    .locals 3

    const v0, 0x7f0a02e1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TOPMENU_BGCOLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a0447

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a044a

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->btn_send:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->btn_send:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->btn_send:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->btn_send:Landroid/widget/Button;

    const-string v1, "\u53d1\u9001"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->btn_send:Landroid/widget/Button;

    const v1, 0x7f0201be

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const v0, 0x7f0a0446

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->tv_title:Landroid/widget/TextView;

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->operateType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->tv_title:Landroid/widget/TextView;

    const-string v1, "\u4e3e\u62a5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->btn_send:Landroid/widget/Button;

    const-string v1, "\u53d1\u9001"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->et_title:Landroid/widget/EditText;

    const-string v1, "\u3010android\u4e3e\u62a5\u3011"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->et_content:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e3e\u62a5:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->btn_send:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->tv_title:Landroid/widget/TextView;

    const-string v1, "\u53d1\u5e16"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initWidget()V
    .locals 3

    const v0, 0x7f0a042c

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/MyResizeLinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->ll_root:Lcn/apppark/mcd/widget/MyResizeLinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->ll_root:Lcn/apppark/mcd/widget/MyResizeLinearLayout;

    new-instance v1, Lsa;

    invoke-direct {v1, p0}, Lsa;-><init>(Lcn/apppark/vertify/activity/tieba/TEdit;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/MyResizeLinearLayout;->setOnResizeListener(Lcn/apppark/mcd/widget/MyResizeLinearLayout$OnResizeListener;)V

    const v0, 0x7f0a0430

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->btn_face:Landroid/widget/Button;

    const v0, 0x7f0a042f

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->btn_camera:Landroid/widget/Button;

    const v0, 0x7f0a0431

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->btn_delEmjo:Landroid/widget/Button;

    const v0, 0x7f0a042d

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->et_title:Landroid/widget/EditText;

    const v0, 0x7f0a042e

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->et_content:Landroid/widget/EditText;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->et_title:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->et_content:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->et_title:Landroid/widget/EditText;

    new-instance v1, Lsb;

    invoke-direct {v1, p0}, Lsb;-><init>(Lcn/apppark/vertify/activity/tieba/TEdit;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->btn_face:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->btn_camera:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->btn_delEmjo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0434

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->ll_point:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0432

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->rel_faceChose:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0435

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->rel_picchoose:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0433

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->faceViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->context:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->et_content:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->initFaceData(Landroid/content/Context;Landroid/widget/EditText;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->pageViews:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TEdit;->initFace()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->context:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->ll_point:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->pageViews:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->initPoint(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->pointViews:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TEdit;->initTopMenu()V

    return-void
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/tieba/TEdit;)Lcn/apppark/mcd/widget/TCellLinearLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    return-object v0
.end method

.method public static synthetic k(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic l(Lcn/apppark/vertify/activity/tieba/TEdit;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->isFaceShow:Z

    return v0
.end method

.method public static synthetic m(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->rel_faceChose:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic n(Lcn/apppark/vertify/activity/tieba/TEdit;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->isPicShow:Z

    return v0
.end method

.method public static synthetic o(Lcn/apppark/vertify/activity/tieba/TEdit;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->rel_picchoose:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private sendTopic()V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TEdit;->getIsLoginInfo()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "userId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TEdit;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tiebaId"

    sget-object v1, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TB_ID:Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->operateType:I

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    if-eqz v0, :cond_1

    const-string v0, "topicId"

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getTopicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "title"

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->et_title:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content"

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->et_content:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget-object v0, v0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndexSeq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget-object v0, v0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndexSeq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;->getPicName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget-object v0, v0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndexSeq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->operateType:I

    if-ne v0, v6, :cond_3

    new-instance v0, Lcn/apppark/vertify/network/request/HttpUploadFileRequestPool;

    const/4 v1, 0x5

    const-string v2, "http://www.apppark.cn/servlet/sendReport"

    iget-object v3, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->handler:Lsd;

    invoke-direct/range {v0 .. v5}, Lcn/apppark/vertify/network/request/HttpUploadFileRequestPool;-><init>(ILjava/lang/String;Landroid/os/Handler;Ljava/util/Map;Ljava/util/Map;)V

    :goto_2
    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/HttpUploadFileRequestPool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Lcn/apppark/vertify/network/request/HttpUploadFileRequestPool;

    const/4 v1, 0x4

    const-string v2, "http://www.apppark.cn/servlet/sendTopic"

    iget-object v3, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->handler:Lsd;

    invoke-direct/range {v0 .. v5}, Lcn/apppark/vertify/network/request/HttpUploadFileRequestPool;-><init>(ILjava/lang/String;Landroid/os/Handler;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_2
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/apppark/mcd/util/PublicUtil;->getPicPath(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    const/16 v1, 0x280

    const/16 v2, 0x64

    :try_start_0
    invoke-static {v0, v1, v2}, Lcn/apppark/mcd/util/imge/ImgUtil;->compressBywidth(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mDirGenerator:Lcn/apppark/vertify/base/YygyResourceDirGenerator;

    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->IMAGE_CACHE_UPLOAD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->getFoldPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/apppark/mcd/util/PublicUtil;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/mcd/util/imge/ImgUtil;->saveMyBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->handler:Lsd;

    invoke-virtual {v1, v0, v2}, Lcn/apppark/mcd/widget/TCellLinearLayout;->addCellToView(Ljava/lang/String;Landroid/os/Handler;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget-object v1, v1, Lcn/apppark/mcd/widget/TCellLinearLayout;->tempTPicCellInfo:Lcn/apppark/vertify/activity/tieba/TPicCellInfo;

    invoke-virtual {v1}, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;->getImg()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundPicFromSD(Ljava/lang/String;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget-object v0, v0, Lcn/apppark/mcd/widget/TCellLinearLayout;->photoUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TEdit;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->et_title:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u5e16\u5b50\u6807\u9898"

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/tieba/TEdit;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->et_content:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165\u5e16\u5b50\u5185\u5bb9"

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/tieba/TEdit;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TEdit;->sendTopic()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->rel_faceChose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->rel_faceChose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->isFaceShow:Z

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcn/apppark/mcd/util/PublicUtil;->closeKeyBoard(Landroid/app/Activity;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->rel_faceChose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->rel_picchoose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iput-boolean v3, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->isFaceShow:Z

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->isPicShow:Z

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->rel_picchoose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->rel_picchoose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->isPicShow:Z

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcn/apppark/mcd/util/PublicUtil;->closeKeyBoard(Landroid/app/Activity;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->rel_picchoose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->rel_faceChose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->isFaceShow:Z

    iput-boolean v3, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->isPicShow:Z

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->rel_faceChose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->rel_faceChose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->et_content:Landroid/widget/EditText;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->delEmjo(Landroid/widget/EditText;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/TCellLinearLayout;->addCell()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a042d -> :sswitch_4
        0x7f0a042e -> :sswitch_5
        0x7f0a042f -> :sswitch_3
        0x7f0a0430 -> :sswitch_2
        0x7f0a0431 -> :sswitch_6
        0x7f0a0438 -> :sswitch_7
        0x7f0a0447 -> :sswitch_0
        0x7f0a044a -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300b0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TEdit;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TEdit;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "operateType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->operateType:I

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TEdit;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detail"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TMainVo;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TEdit;->initWidget()V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TEdit;->initContentParam()V

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mDirGenerator:Lcn/apppark/vertify/base/YygyResourceDirGenerator;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->IMAGE_CACHE_UPLOAD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->getFoldPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/file/SDFileUtils;->clearFoldeFile(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;->onDestroy()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TEdit;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/TCellLinearLayout;->destroyCell()V

    return-void
.end method
