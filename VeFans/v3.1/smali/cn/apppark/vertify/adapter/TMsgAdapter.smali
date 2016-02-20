.class public Lcn/apppark/vertify/adapter/TMsgAdapter;
.super Lcn/apppark/vertify/adapter/TempBaseAdapter;


# instance fields
.field private context:Landroid/content/Context;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TMyMsgVo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TMyMsgVo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcn/apppark/vertify/adapter/TempBaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/vertify/adapter/TMsgAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcn/apppark/vertify/adapter/TMsgAdapter;->itemList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/apppark/vertify/adapter/TMsgAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TMsgAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TMsgAdapter;->itemList:Ljava/util/ArrayList;

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
    .locals 6

    const/high16 v5, -0x1000000

    if-nez p2, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TMsgAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300a3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lua;

    invoke-direct {v1}, Lua;-><init>()V

    const v0, 0x7f0a03d0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, v1, Lua;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a03d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lua;->b:Landroid/widget/TextView;

    const v0, 0x7f0a03d2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lua;->c:Landroid/widget/TextView;

    const v0, 0x7f0a03d3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lua;->d:Landroid/widget/TextView;

    const v0, 0x7f0a03d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lua;->e:Landroid/widget/TextView;

    const v0, 0x7f0a03d5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lua;->f:Landroid/widget/TextView;

    const v0, 0x7f0a03d6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lua;->g:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/adapter/TMsgAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TMyMsgVo;

    if-eqz v0, :cond_0

    iget-object v2, v1, Lua;->a:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMyMsgVo;->getHeadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v2, v1, Lua;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMyMsgVo;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lua;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/apppark/vertify/adapter/TMsgAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMyMsgVo;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStr(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lua;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/apppark/vertify/adapter/TMsgAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMyMsgVo;->getMyContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStr(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lua;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMyMsgVo;->getTiebaName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lua;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMyMsgVo;->getSubTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua;

    move-object v1, v0

    goto :goto_0
.end method
