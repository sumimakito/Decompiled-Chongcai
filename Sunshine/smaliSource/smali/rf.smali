.class public final Lrf;
.super Landroid/os/Handler;


# instance fields
.field public final synthetic a:Lcn/apppark/vertify/activity/soft/SoftDetail;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/soft/SoftDetail;)V
    .locals 0

    iput-object p1, p0, Lrf;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/soft/SoftDetail;Lre;)V
    .locals 0

    invoke-direct {p0, p1}, Lrf;-><init>(Lcn/apppark/vertify/activity/soft/SoftDetail;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "soresult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lrf;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->f(Lcn/apppark/vertify/activity/soft/SoftDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080025

    const/4 v3, 0x1

    const-string v4, "255"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    iget-object v0, p0, Lrf;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->f(Lcn/apppark/vertify/activity/soft/SoftDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Lrg;

    invoke-direct {v1, p0}, Lrg;-><init>(Lrf;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lrf;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->f(Lcn/apppark/vertify/activity/soft/SoftDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    iget-object v3, p0, Lrf;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    const-class v0, Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseReturnVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;

    iput-object v0, v3, Lcn/apppark/vertify/activity/soft/SoftDetail;->a:Lcn/apppark/mcd/vo/free/SoftDetailReturnVo;

    new-instance v0, Lrh;

    invoke-direct {v0, p0}, Lrh;-><init>(Lrf;)V

    invoke-virtual {v0}, Lrh;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v3, p0, Lrf;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    const-string v4, "images"

    invoke-static {v1, v0, v4}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseItem2Vo(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/apppark/vertify/activity/soft/SoftDetail;->a(Lcn/apppark/vertify/activity/soft/SoftDetail;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v3, p0, Lrf;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    const-string v4, "recommend"

    invoke-static {v1, v0, v4}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseItem2Vo(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->b(Lcn/apppark/vertify/activity/soft/SoftDetail;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lrf;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->g(Lcn/apppark/vertify/activity/soft/SoftDetail;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    move v1, v2

    :goto_1
    iget-object v0, p0, Lrf;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->g(Lcn/apppark/vertify/activity/soft/SoftDetail;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    new-instance v3, Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v0, p0, Lrf;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-direct {v3, v0}, Lcn/apppark/mcd/widget/RemoteImageView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lrf;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->g(Lcn/apppark/vertify/activity/soft/SoftDetail;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SoftReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SoftReturnVo;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42aa0000    # 85.0f

    invoke-static {v4}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v4

    const/high16 v5, 0x42fa0000    # 125.0f

    invoke-static {v5}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xf

    invoke-virtual {v0, v2, v2, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lrf;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->h(Lcn/apppark/vertify/activity/soft/SoftDetail;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcn/apppark/vertify/activity/soft/SoftDetail$MyHandler$3;

    invoke-direct {v0, p0, v1}, Lcn/apppark/vertify/activity/soft/SoftDetail$MyHandler$3;-><init>(Lrf;I)V

    invoke-virtual {v3, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lrf;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->j(Lcn/apppark/vertify/activity/soft/SoftDetail;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
