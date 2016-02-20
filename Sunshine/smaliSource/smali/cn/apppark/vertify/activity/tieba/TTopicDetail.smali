.class public Lcn/apppark/vertify/activity/tieba/TTopicDetail;
.super Lcn/apppark/vertify/activity/tieba/TBBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final BIGGER:I

.field private final CLICKGOOD_WHAT:I

.field private final COLLECTION_WHAT:I

.field private final DEL_COMMENT_WHAT:I

.field private final DEL_SONCOMMENT_WHAT:I

.field private final DEL_TOPIC_WHAT:I

.field private final GET_COMMENT_WHAT:I

.field private final GET_TOPIC_WHAT:I

.field private final MSG_RESIZE:I

.field private final SEND_WHAT:I

.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private adapter:Lcn/apppark/vertify/adapter/TCommnetAdapter;

.field b:Landroid/widget/LinearLayout;

.field private btn_add:Landroid/widget/Button;

.field private btn_back:Landroid/widget/Button;

.field private btn_camera:Landroid/widget/Button;

.field private btn_comment:Landroid/widget/Button;

.field private btn_delEmjo:Landroid/widget/Button;

.field private btn_face:Landroid/widget/Button;

.field private btn_floor:Landroid/widget/Button;

.field private btn_good:Landroid/widget/Button;

.field private btn_isCollection:Landroid/widget/Button;

.field private btn_more:Landroid/widget/Button;

.field private btn_numCancel:Landroid/widget/Button;

.field private btn_numSure:Landroid/widget/Button;

.field private btn_order:Landroid/widget/Button;

.field private btn_sendComment:Landroid/widget/Button;

.field private commentId:Ljava/lang/String;

.field private currentFacePage:I

.field private currentPage:I

.field private delPosition:I

.field private delSonPosition:I

.field private et_content:Landroid/widget/EditText;

.field private et_pageNumber:Landroid/widget/EditText;

.field private faceViewPager:Landroid/support/v4/view/ViewPager;

.field private handler:Ltr;

.field private img_delete:Landroid/widget/ImageView;

.field private img_head:Lcn/apppark/mcd/widget/RemoteImageView;

.field private img_isFloor:Landroid/widget/ImageView;

.field private isFaceShow:Z

.field private isPicShow:Z

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TCommentVo;",
            ">;"
        }
    .end annotation
.end field

.field private jumpType:I

.field private listView:Lcn/apppark/mcd/widget/PullDownListView4;

.field private ll_bottom:Landroid/widget/LinearLayout;

.field private ll_collection:Landroid/widget/LinearLayout;

.field private ll_comment:Landroid/widget/LinearLayout;

.field private ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

.field private ll_desc:Landroid/widget/LinearLayout;

.field private ll_error:Landroid/widget/LinearLayout;

.field private ll_good:Landroid/widget/LinearLayout;

.field private ll_jump:Landroid/widget/LinearLayout;

.field private ll_point:Landroid/widget/LinearLayout;

.field private ll_root:Lcn/apppark/mcd/widget/MyResizeLinearLayout;

.field private ll_topContent:Landroid/widget/LinearLayout;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private numberDialog:Landroid/app/Dialog;

.field private order:I

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

.field private popMenu:Ltu;

.field private rel_faceChose:Landroid/widget/RelativeLayout;

.field private rel_menu:Landroid/widget/RelativeLayout;

.field private rel_picchoose:Landroid/widget/RelativeLayout;

.field private topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

.field private topicId:Ljava/lang/String;

.field private tv_commentNum:Landroid/widget/TextView;

.field private tv_content:Landroid/widget/TextView;

.field private tv_goodNum:Landroid/widget/TextView;

.field private tv_number:Landroid/widget/TextView;

.field private tv_order:Landroid/widget/TextView;

.field private tv_time:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;

.field private tv_userName:Landroid/widget/TextView;

.field private viewType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->a:Ljava/util/ArrayList;

    iput v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->BIGGER:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->MSG_RESIZE:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->SEND_WHAT:I

    const/4 v0, 0x4

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->GET_COMMENT_WHAT:I

    const/4 v0, 0x5

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->GET_TOPIC_WHAT:I

    const/4 v0, 0x6

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->CLICKGOOD_WHAT:I

    const/4 v0, 0x7

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->COLLECTION_WHAT:I

    const/16 v0, 0x8

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->DEL_COMMENT_WHAT:I

    const/16 v0, 0xa

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->DEL_SONCOMMENT_WHAT:I

    const/16 v0, 0x9

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->DEL_TOPIC_WHAT:I

    iput v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->currentFacePage:I

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->isFaceShow:Z

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->isPicShow:Z

    iput v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->currentPage:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->itemList:Ljava/util/ArrayList;

    iput v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->order:I

    iput v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->viewType:I

    return-void
.end method

.method public static synthetic A(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->isPicShow:Z

    return v0
.end method

.method public static synthetic B(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic C(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_collection:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic D(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_jump:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic E(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_desc:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic F(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_error:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->currentPage:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->currentFacePage:I

    return p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_isCollection:Landroid/widget/Button;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_collection:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->tv_order:Landroid/widget/TextView;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Lcn/apppark/mcd/vo/tieba/TMainVo;)Lcn/apppark/mcd/vo/tieba/TMainVo;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;II)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getCommentData(II)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->junp2Gallery(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->setData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->isFaceShow:Z

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->currentFacePage:I

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_order:Landroid/widget/Button;

    return-object p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_jump:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/tieba/TTopicDetail;I)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getTopicData(I)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/tieba/TTopicDetail;II)V
    .locals 2

    const v0, 0x7f080047

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->initToast(II)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/tieba/TTopicDetail;ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p2}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->delComment(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->isPicShow:Z

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/tieba/TTopicDetail;I)I
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->currentPage:I

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_desc:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->pointViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/tieba/TTopicDetail;II)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getCommentDataLocation(II)V

    return-void
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/tieba/TTopicDetail;ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0, p2}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->delSonComment(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private changeBgState()V
    .locals 2

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->changeCollectionState()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_order:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->order:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_order:Landroid/widget/Button;

    const v1, 0x7f020184

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->tv_order:Landroid/widget/TextView;

    const-string v1, "\u987a\u5e8f\u67e5\u770b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->viewType:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_floor:Landroid/widget/Button;

    const v1, 0x7f02017a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_order:Landroid/widget/Button;

    const v1, 0x7f020185

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->tv_order:Landroid/widget/TextView;

    const-string v1, "\u5012\u5e8f\u67e5\u770b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_floor:Landroid/widget/Button;

    const v1, 0x7f020172

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private changeCollectionState()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_isCollection:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const-string v0, "1"

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getIsCollect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_isCollection:Landroid/widget/Button;

    const v1, 0x7f020181

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_isCollection:Landroid/widget/Button;

    const v1, 0x7f020180

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private checkResult()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u6682\u65e0\u8bc4\u8bba"

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->itemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getTotalCount()I

    move-result v0

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcn/apppark/mcd/widget/PullDownListView4;->onFootNodata(II)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v0, v2, v2}, Lcn/apppark/mcd/widget/PullDownListView4;->onFootNodata(II)V

    goto :goto_0
.end method

.method private clickGood(II)V
    .locals 8

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getIsLoginInfo()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "userId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "topicId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getTopicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tiebaId"

    sget-object v2, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TB_ID:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->handler:Ltr;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/tieba.ws"

    const-string v7, "clickGood"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    goto :goto_0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/tieba/TTopicDetail;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->delPosition:I

    return p1
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_error:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/vertify/adapter/TCommnetAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->adapter:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    return-object v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private delComment(ILjava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getIsLoginInfo()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "commentId"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "userId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tiebaId"

    sget-object v2, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TB_ID:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->handler:Ltr;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/tieba.ws"

    const-string v7, "delComment"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    goto :goto_0
.end method

.method private delSonComment(ILjava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getIsLoginInfo()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "replyId"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "userId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tiebaId"

    sget-object v2, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TB_ID:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->handler:Ltr;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/tieba.ws"

    const-string v7, "delReply"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    goto :goto_0
.end method

.method private delTopic(I)V
    .locals 8

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getIsLoginInfo()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "topicId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "userId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tiebaId"

    sget-object v2, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TB_ID:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->handler:Ltr;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/tieba.ws"

    const-string v7, "delTopic"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    goto :goto_0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/tieba/TTopicDetail;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->delSonPosition:I

    return p1
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/mcd/vo/tieba/TMainVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/tieba/TTopicDetail;I)V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->delTopic(I)V

    return-void
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->jumpType:I

    return v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getCommentData(II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "type"

    iget v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->viewType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "topicId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getTopicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tiebaId"

    sget-object v2, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TB_ID:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "order"

    iget v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->order:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "currPage"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pageSize"

    iget v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->pageSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->handler:Ltr;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/tieba.ws"

    const-string v7, "topicComment"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private getCommentDataLocation(II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "topicId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getTopicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tiebaId"

    sget-object v2, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TB_ID:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "commentId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->commentId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "currPage"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pageSize"

    iget v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->pageSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->handler:Ltr;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/tieba.ws"

    const-string v7, "topicCommentLocation"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private getTopicData(I)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "topicId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tiebaId"

    sget-object v2, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TB_ID:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "userId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->handler:Ltr;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/tieba.ws"

    const-string v7, "topicDetail"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->initDetail()V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/mcd/widget/PullDownListView4;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    return-object v0
.end method

.method private initDetail()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->img_head:Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getHeadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->tv_userName:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->tv_time:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getSubTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->tv_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->tv_content:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getContent()Ljava/lang/String;

    move-result-object v2

    const v3, -0x777778

    invoke-static {v1, v2, v3}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStr(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->tv_goodNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getGoodNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->tv_commentNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getCommentNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->img_isFloor:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getUserid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getUserid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->img_delete:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const-string v0, "1"

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getIsGood()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_good:Landroid/widget/Button;

    const v1, 0x7f020179

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_1
    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->saveHistory()V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->initTopicImg()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->img_delete:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_good:Landroid/widget/Button;

    const v1, 0x7f020178

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private initFace()V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->faceViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcn/apppark/vertify/adapter/ViewPagerAdapter;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->pageViews:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcn/apppark/vertify/adapter/ViewPagerAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->faceViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->faceViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Ltl;

    invoke-direct {v1, p0}, Ltl;-><init>(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private initFaceWidget()V
    .locals 3

    const v0, 0x7f0a04af

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0a04b2

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->et_content:Landroid/widget/EditText;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->et_content:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04b1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_face:Landroid/widget/Button;

    const v0, 0x7f0a04b0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_camera:Landroid/widget/Button;

    const v0, 0x7f0a04b4

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_delEmjo:Landroid/widget/Button;

    const v0, 0x7f0a04b3

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_sendComment:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_face:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_camera:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_delEmjo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_sendComment:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04b7

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_point:Landroid/widget/LinearLayout;

    const v0, 0x7f0a04b5

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->rel_faceChose:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a04b8

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->rel_picchoose:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a04b6

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->faceViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->context:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->et_content:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->initFaceData(Landroid/content/Context;Landroid/widget/EditText;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->pageViews:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->initFace()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->context:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_point:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->pageViews:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->initPoint(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->pointViews:Ljava/util/ArrayList;

    const v0, 0x7f0a0437

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/TCellLinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    const v0, 0x7f0a0438

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_add:Landroid/widget/Button;

    const v0, 0x7f0a0436

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->parentScroll:Landroid/widget/HorizontalScrollView;

    const v0, 0x7f0a0439

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->tv_number:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->parentScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/TCellLinearLayout;->setParentScroll(Landroid/widget/HorizontalScrollView;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->tv_number:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/TCellLinearLayout;->setTv_number(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_add:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/TCellLinearLayout;->setBtn_add(Landroid/widget/Button;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    invoke-virtual {v0, p0}, Lcn/apppark/mcd/widget/TCellLinearLayout;->setParentAct(Landroid/app/Activity;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_add:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initTopMenu()V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f0a02e1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->rel_menu:Landroid/widget/RelativeLayout;

    sget-object v0, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TOPMENU_BGCOLOR:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->rel_menu:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a0447

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a044a

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_more:Landroid/widget/Button;

    const v0, 0x7f0a0448

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_floor:Landroid/widget/Button;

    const v0, 0x7f0a0446

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u4e3b\u9898\u5e16"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_more:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_floor:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_more:Landroid/widget/Button;

    const v1, 0x7f020182

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_floor:Landroid/widget/Button;

    const v1, 0x7f02017a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_floor:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_more:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initTopicImg()V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, -0x2

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getImgUrlItem()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getImgUrlItem()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getImgUrlItem()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/ImgVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/ImgVo;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getImgUrlItem()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    new-instance v1, Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcn/apppark/mcd/widget/RemoteImageView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getImgUrlItem()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/ImgVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/ImgVo;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    const v0, 0x7f020074

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setDefaultImage(Ljava/lang/Integer;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setTag(Ljava/lang/Object;)V

    new-instance v0, Lcn/apppark/vertify/activity/tieba/TTopicDetail$3;

    invoke-direct {v0, p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail$3;-><init>(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)V

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_topContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private initWidget()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v0, Ltr;

    invoke-direct {v0, p0, v2}, Ltr;-><init>(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Ltj;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->handler:Ltr;

    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->createLoadingDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->loadDialog:Landroid/app/Dialog;

    const v0, 0x7f0a04a7

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/PullDownListView4;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setHeaderDividersEnabled(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setFooterDividersEnabled(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v0, v2, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setonRefreshListener(Lcn/apppark/mcd/widget/PullDownListView4$OnRefreshListener4;Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    new-instance v1, Ltj;

    invoke-direct {v1, p0}, Ltj;-><init>(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListView4$OnFootRefreshListener4;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    new-instance v1, Ltk;

    invoke-direct {v1, p0}, Ltk;-><init>(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c6

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a04b9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->img_head:Lcn/apppark/mcd/widget/RemoteImageView;

    const v1, 0x7f0a04bc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->img_isFloor:Landroid/widget/ImageView;

    const v1, 0x7f0a04bd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->img_delete:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->img_delete:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a04ba

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->tv_userName:Landroid/widget/TextView;

    const v1, 0x7f0a04bb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->tv_time:Landroid/widget/TextView;

    const v1, 0x7f0a04c0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->tv_content:Landroid/widget/TextView;

    const v1, 0x7f0a04bf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->tv_title:Landroid/widget/TextView;

    const v1, 0x7f0a04be

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_topContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/PullDownListView4;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->tv_content:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04ab

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->tv_goodNum:Landroid/widget/TextView;

    const v0, 0x7f0a04ae

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->tv_commentNum:Landroid/widget/TextView;

    const v0, 0x7f0a04aa

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_good:Landroid/widget/Button;

    const v0, 0x7f0a04ad

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_comment:Landroid/widget/Button;

    const v0, 0x7f0a04a8

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_bottom:Landroid/widget/LinearLayout;

    const v0, 0x7f0a04a9

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_good:Landroid/widget/LinearLayout;

    const v0, 0x7f0a04ac

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_comment:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_good:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_comment:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->initTopMenu()V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->initFaceWidget()V

    return-void
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->checkResult()V

    return-void
.end method

.method private junp2Gallery(ILjava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getImgUrlItem()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getImgUrlItem()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    if-nez p2, :cond_0

    move v3, v2

    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getImgUrlItem()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getImgUrlItem()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/ImgVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/ImgVo;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getImgUrlItem()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getImgUrlItem()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/ImgVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/ImgVo;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->context:Landroid/content/Context;

    const-class v2, Lcn/apppark/vertify/activity/free/dyn/PicGallery;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "urls"

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic k(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic l(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->et_content:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic m(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Lcn/apppark/mcd/widget/TCellLinearLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    return-object v0
.end method

.method public static synthetic n(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->rel_picchoose:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic o(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->rel_faceChose:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic p(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->tv_commentNum:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic q(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic r(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->tv_goodNum:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic s(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_good:Landroid/widget/Button;

    return-object v0
.end method

.method private saveHistory()V
    .locals 3

    new-instance v0, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;

    invoke-direct {v0}, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;-><init>()V

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getTopicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->setTopicId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->setTiebaName(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getSubTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->setSubTime(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getCommentNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->setCommentNum(I)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcn/apppark/mcd/util/file/TbHistoryObject2File;->saveHistory(Landroid/content/Context;Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;Ljava/lang/String;)Z

    return-void
.end method

.method private sendCollection(II)V
    .locals 8

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getIsLoginInfo()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "userId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "topicId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getTopicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tiebaId"

    sget-object v2, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TB_ID:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->handler:Ltr;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/tieba.ws"

    const-string v7, "collection"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    goto :goto_0
.end method

.method private sendTopicComment()V
    .locals 6

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getIsLoginInfo()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "userId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tiebaId"

    sget-object v1, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TB_ID:Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "topicId "

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getTopicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content"

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->et_content:Landroid/widget/EditText;

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
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget-object v0, v0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndexSeq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget-object v0, v0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndexSeq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;->getPicName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

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

    :cond_1
    new-instance v0, Lcn/apppark/vertify/network/request/HttpUploadFileRequestPool;

    const/4 v1, 0x3

    const-string v2, "http://www.apppark.cn/servlet/sendComment"

    iget-object v3, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->handler:Ltr;

    invoke-direct/range {v0 .. v5}, Lcn/apppark/vertify/network/request/HttpUploadFileRequestPool;-><init>(ILjava/lang/String;Landroid/os/Handler;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/HttpUploadFileRequestPool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    goto :goto_0
.end method

.method private setData(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TCommentVo;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->currentPage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->currentPage:I

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->adapter:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    if-nez v0, :cond_2

    new-instance v0, Lcn/apppark/vertify/adapter/TCommnetAdapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->itemList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getTopicId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getUserid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/apppark/vertify/adapter/TCommnetAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->adapter:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->adapter:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setAdapter(Landroid/widget/BaseAdapter;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->adapter:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    new-instance v1, Ltm;

    invoke-direct {v1, p0}, Ltm;-><init>(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)V

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->setOnDeleteListener(Lcn/apppark/vertify/adapter/TCommnetAdapter$OnDeleteListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->adapter:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    new-instance v1, Ltn;

    invoke-direct {v1, p0}, Ltn;-><init>(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)V

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->setOnPicClickListener(Lcn/apppark/vertify/adapter/TCommnetAdapter$OnPicClickListener;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->adapter:Lcn/apppark/vertify/adapter/TCommnetAdapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/TCommnetAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public static synthetic t(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic u(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic v(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->delPosition:I

    return v0
.end method

.method public static synthetic w(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic x(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic y(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->delSonPosition:I

    return v0
.end method

.method public static synthetic z(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->isFaceShow:Z

    return v0
.end method


# virtual methods
.method protected getNumDialog()Landroid/app/Dialog;
    .locals 5

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a0486

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0487

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->et_pageNumber:Landroid/widget/EditText;

    const v1, 0x7f0a0488

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_numSure:Landroid/widget/Button;

    const v1, 0x7f0a0489

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_numCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_numSure:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->btn_numCancel:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->context:Landroid/content/Context;

    const v3, 0x7f060011

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x437a0000    # 250.0f

    invoke-static {v3}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v3

    const/high16 v4, 0x43160000    # 150.0f

    invoke-static {v4}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

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

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->handler:Ltr;

    invoke-virtual {v1, v0, v2}, Lcn/apppark/mcd/widget/TCellLinearLayout;->addCellToView(Ljava/lang/String;Landroid/os/Handler;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

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

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

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
    .locals 6

    const v5, 0x7f080024

    const/4 v4, 0x4

    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v0, "0"

    iget-object v3, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getIsGood()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->clickGood(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    invoke-direct {p0, v0, v2}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->clickGood(II)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_bottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->et_content:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->et_content:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcn/apppark/mcd/util/PublicUtil;->openKeyBoardView(Landroid/app/Activity;Landroid/view/View;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->et_content:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcn/apppark/mcd/util/PublicUtil;->closeKeyBoard(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->sendTopicComment()V

    goto :goto_0

    :cond_1
    const-string v0, "\u8bf7\u8f93\u5165\u8bc4\u8bba"

    invoke-virtual {p0, v0, v2}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->rel_faceChose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->rel_picchoose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->finish()V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->popMenu:Ltu;

    if-nez v0, :cond_2

    new-instance v0, Ltu;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Ltu;-><init>(Lcn/apppark/vertify/activity/tieba/TTopicDetail;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->popMenu:Ltu;

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->popMenu:Ltu;

    invoke-virtual {v0}, Ltu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->popMenu:Ltu;

    invoke-virtual {v0}, Ltu;->dismiss()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->changeCollectionState()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->popMenu:Ltu;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->rel_menu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Ltu;->showAsDropDown(Landroid/view/View;)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->changeBgState()V

    goto/16 :goto_0

    :sswitch_6
    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->viewType:I

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->viewType:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    invoke-virtual {v0, v5}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(I)V

    iput v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->currentPage:I

    invoke-direct {p0, v0, v4}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getCommentData(II)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->changeBgState()V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :sswitch_7
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->popMenu:Ltu;

    invoke-virtual {v0}, Ltu;->dismiss()V

    const-string v0, "0"

    iget-object v3, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getIsCollect()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->sendCollection(II)V

    :goto_2
    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->changeBgState()V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x7

    invoke-direct {p0, v0, v2}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->sendCollection(II)V

    goto :goto_2

    :sswitch_8
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->popMenu:Ltu;

    invoke-virtual {v0}, Ltu;->dismiss()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->numberDialog:Landroid/app/Dialog;

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getNumDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->numberDialog:Landroid/app/Dialog;

    :cond_6
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->numberDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    invoke-virtual {v0, v5}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->popMenu:Ltu;

    invoke-virtual {v0}, Ltu;->dismiss()V

    iput v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->order:I

    if-ne v0, v1, :cond_7

    const/4 v1, 0x2

    :cond_7
    iput v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->order:I

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->currentPage:I

    invoke-direct {p0, v0, v4}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getCommentData(II)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->changeBgState()V

    goto/16 :goto_0

    :sswitch_a
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->context:Landroid/content/Context;

    const-class v3, Lcn/apppark/vertify/activity/tieba/TEdit;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "operateType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "detail"

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicDetailVo:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->popMenu:Ltu;

    invoke-virtual {v0}, Ltu;->dismiss()V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->rel_faceChose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->rel_faceChose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iput-boolean v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->isFaceShow:Z

    goto/16 :goto_0

    :cond_8
    invoke-static {p0}, Lcn/apppark/mcd/util/PublicUtil;->closeKeyBoard(Landroid/app/Activity;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->rel_faceChose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->rel_picchoose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->isFaceShow:Z

    iput-boolean v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->isPicShow:Z

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->rel_picchoose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->rel_picchoose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iput-boolean v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->isPicShow:Z

    goto/16 :goto_0

    :cond_9
    invoke-static {p0}, Lcn/apppark/mcd/util/PublicUtil;->closeKeyBoard(Landroid/app/Activity;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->rel_picchoose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->rel_faceChose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iput-boolean v2, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->isFaceShow:Z

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->isPicShow:Z

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/TCellLinearLayout;->addCell()V

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->et_pageNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->getTotalCount()I

    move-result v0

    iget v3, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->pageSize:I

    div-int/2addr v0, v3

    if-gt v1, v0, :cond_b

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    invoke-virtual {v0, v5}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->currentPage:I

    invoke-direct {p0, v0, v4}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getCommentData(II)V

    :goto_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->numberDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->numberDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_a
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->et_pageNumber:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcn/apppark/mcd/util/PublicUtil;->closeKeyBoardView(Landroid/app/Activity;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "\u9875\u7801\u8d85\u51fa\u8303\u56f4"

    invoke-virtual {p0, v0, v2}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->initToast(Ljava/lang/String;I)V

    goto :goto_3

    :sswitch_f
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->numberDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->numberDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_c
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->et_pageNumber:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcn/apppark/mcd/util/PublicUtil;->closeKeyBoardView(Landroid/app/Activity;Landroid/view/View;)V

    goto/16 :goto_0

    :sswitch_10
    new-instance v0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setTitle(I)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a\u5220\u9664\u5e16\u5b50\uff0c\u5220\u9664\u540e\u4e0d\u53ef\u6062\u590d\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080008

    new-instance v2, Ltp;

    invoke-direct {v2, p0}, Ltp;-><init>(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080009

    new-instance v2, Lto;

    invoke-direct {v2, p0}, Lto;-><init>(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a0438 -> :sswitch_d
        0x7f0a0447 -> :sswitch_4
        0x7f0a0448 -> :sswitch_6
        0x7f0a044a -> :sswitch_5
        0x7f0a0488 -> :sswitch_e
        0x7f0a0489 -> :sswitch_f
        0x7f0a048e -> :sswitch_7
        0x7f0a0490 -> :sswitch_8
        0x7f0a0492 -> :sswitch_9
        0x7f0a0495 -> :sswitch_a
        0x7f0a04a9 -> :sswitch_0
        0x7f0a04ac -> :sswitch_1
        0x7f0a04b0 -> :sswitch_c
        0x7f0a04b1 -> :sswitch_b
        0x7f0a04b2 -> :sswitch_3
        0x7f0a04b3 -> :sswitch_2
        0x7f0a04bd -> :sswitch_10
        0x7f0a04c0 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300c5

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "topicid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->topicId:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "jumpType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->jumpType:I

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "commentId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->commentId:Ljava/lang/String;

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mDirGenerator:Lcn/apppark/vertify/base/YygyResourceDirGenerator;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->IMAGE_CACHE_UPLOAD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->getFoldPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/file/SDFileUtils;->clearFoldeFile(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->initWidget()V

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->getTopicData(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;->onDestroy()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_content:Lcn/apppark/mcd/widget/TCellLinearLayout;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/TCellLinearLayout;->destroyCell()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->numberDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->numberDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->numberDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_bottom:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->ll_bottom:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->rel_picchoose:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->rel_faceChose:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iput-boolean v3, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->isFaceShow:Z

    iput-boolean v3, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->isPicShow:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public parseToList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TCommentVo;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ltq;

    invoke-direct {v0, p0}, Ltq;-><init>(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)V

    invoke-virtual {v0}, Ltq;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    const-string v4, "count"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    const-string v5, "item"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonArray;

    invoke-virtual {v3, v0, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/vo/tieba/TCommentVo;

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/apppark/mcd/vo/tieba/TCommentVo;->setTotalCount(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method
