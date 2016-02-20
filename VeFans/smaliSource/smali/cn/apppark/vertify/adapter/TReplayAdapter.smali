.class public Lcn/apppark/vertify/adapter/TReplayAdapter;
.super Lcn/apppark/vertify/adapter/TempBaseAdapter;


# instance fields
.field private context:Landroid/content/Context;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TReplayVo;",
            ">;"
        }
    .end annotation
.end field

.field private loginUserId:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private onReplayDeleteListener:Lcn/apppark/vertify/adapter/TReplayAdapter$OnReplayDeleteListener;

.field private replayId:Ljava/lang/String;

.field private topicUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TReplayVo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcn/apppark/vertify/adapter/TempBaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/vertify/adapter/TReplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcn/apppark/vertify/adapter/TReplayAdapter;->itemList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/apppark/vertify/adapter/TReplayAdapter;->context:Landroid/content/Context;

    iput-object p3, p0, Lcn/apppark/vertify/adapter/TReplayAdapter;->topicUserId:Ljava/lang/String;

    iput-object p4, p0, Lcn/apppark/vertify/adapter/TReplayAdapter;->loginUserId:Ljava/lang/String;

    iput-object p5, p0, Lcn/apppark/vertify/adapter/TReplayAdapter;->replayId:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcn/apppark/vertify/adapter/TReplayAdapter;)Lcn/apppark/vertify/adapter/TReplayAdapter$OnReplayDeleteListener;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TReplayAdapter;->onReplayDeleteListener:Lcn/apppark/vertify/adapter/TReplayAdapter$OnReplayDeleteListener;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TReplayAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TReplayAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v2, 0x0

    const v8, 0x7f070017

    if-nez p2, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TReplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030097

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lue;

    invoke-direct {v1}, Lue;-><init>()V

    const v0, 0x7f0a0389

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lue;->a:Landroid/widget/TextView;

    const v0, 0x7f0a038a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lue;->b:Landroid/widget/Button;

    iget-object v0, v1, Lue;->b:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/adapter/TReplayAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TReplayVo;

    if-eqz v0, :cond_0

    iget-object v3, v1, Lue;->a:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/adapter/TReplayAdapter;->loginUserId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getReplyId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lue;->b:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, v1, Lue;->b:Landroid/widget/Button;

    new-instance v4, Lcn/apppark/vertify/adapter/TReplayAdapter$MyonClickListener;

    invoke-direct {v4, p0, v0, p1}, Lcn/apppark/vertify/adapter/TReplayAdapter$MyonClickListener;-><init>(Lcn/apppark/vertify/adapter/TReplayAdapter;Lcn/apppark/mcd/vo/tieba/TReplayVo;I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getUserId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/adapter/TReplayAdapter;->topicUserId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lue;->a:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/apppark/vertify/adapter/TReplayAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getUserName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f020163

    iget-object v7, p0, Lcn/apppark/vertify/adapter/TReplayAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrEndPic(Landroid/content/Context;Ljava/lang/String;II)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v3, v1, Lue;->a:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/apppark/vertify/adapter/TReplayAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const/16 v5, 0xe

    invoke-static {v2, v4, v5}, Lcn/apppark/mcd/util/FunctionPublic;->getSpannerStyle(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lue;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/apppark/vertify/adapter/TReplayAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getContent()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, -0x1000000

    invoke-static {v3, v4, v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStr(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lue;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getSubTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/adapter/TReplayAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-static {v3, v4, v5}, Lcn/apppark/mcd/util/FunctionPublic;->getSpannerStyle(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcn/apppark/vertify/adapter/TReplayAdapter;->replayId:Ljava/lang/String;

    invoke-static {v2}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcn/apppark/vertify/adapter/TReplayAdapter;->replayId:Ljava/lang/String;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getReplyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lue;->a:Landroid/widget/TextView;

    const v1, 0x7f0201a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    :goto_3
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lue;

    move-object v1, v0

    goto/16 :goto_0

    :cond_2
    iget-object v3, v1, Lue;->b:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TReplayVo;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_4
    iget-object v0, v1, Lue;->a:Landroid/widget/TextView;

    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method public setOnDeleteListener(Lcn/apppark/vertify/adapter/TReplayAdapter$OnReplayDeleteListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/adapter/TReplayAdapter;->onReplayDeleteListener:Lcn/apppark/vertify/adapter/TReplayAdapter$OnReplayDeleteListener;

    return-void
.end method
