.class Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/adapter/TMainAdapter;

.field private b:Lcn/apppark/mcd/vo/tieba/TMainVo;

.field private c:I


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/adapter/TMainAdapter;Lcn/apppark/mcd/vo/tieba/TMainVo;I)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TMainAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;->b:Lcn/apppark/mcd/vo/tieba/TMainVo;

    iput p3, p0, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;->c:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TMainAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/adapter/TMainAdapter;->a(Lcn/apppark/vertify/adapter/TMainAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcn/apppark/vertify/activity/free/dyn/PicGallery;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;->b:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getImgUrlItem()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;->b:Lcn/apppark/mcd/vo/tieba/TMainVo;

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

    goto :goto_1

    :cond_0
    const-string v0, "urls"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v0, p0, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TMainAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/adapter/TMainAdapter;->a(Lcn/apppark/vertify/adapter/TMainAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TMainAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/adapter/TMainAdapter;->b(Lcn/apppark/vertify/adapter/TMainAdapter;)Lcn/apppark/vertify/activity/tieba/TMain;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TMainAdapter;

    invoke-static {v1}, Lcn/apppark/vertify/adapter/TMainAdapter;->b(Lcn/apppark/vertify/adapter/TMainAdapter;)Lcn/apppark/vertify/activity/tieba/TMain;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    iget-object v2, p0, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;->b:Lcn/apppark/mcd/vo/tieba/TMainVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/tieba/TMainVo;->getTopicId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/tieba/TMain;->clickGood(ILjava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;->a:Lcn/apppark/vertify/adapter/TMainAdapter;

    invoke-static {v0}, Lcn/apppark/vertify/adapter/TMainAdapter;->b(Lcn/apppark/vertify/adapter/TMainAdapter;)Lcn/apppark/vertify/activity/tieba/TMain;

    move-result-object v0

    iget v1, p0, Lcn/apppark/vertify/adapter/TMainAdapter$MyonClickListener;->c:I

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/tieba/TMain;->topicComment(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a03c2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
