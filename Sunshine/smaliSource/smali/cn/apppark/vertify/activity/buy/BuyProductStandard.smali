.class public Lcn/apppark/vertify/activity/buy/BuyProductStandard;
.super Lcn/apppark/vertify/activity/BaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ADDBUYCAR_METHOD:Ljava/lang/String; = "saveShopping_sd"

.field private static final ADDBUYCAR_WHAT:I = 0x2


# instance fields
.field private btn_add:Landroid/widget/Button;

.field private btn_close:Landroid/widget/Button;

.field private btn_cut:Landroid/widget/Button;

.field private btn_sure:Landroid/widget/Button;

.field private currentFirstVo:Lcn/apppark/mcd/vo/buy/BuyProductValueVo;

.field private currentRelationVo:Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;

.field private currentSencondVo:Lcn/apppark/mcd/vo/buy/BuyProductValueVo;

.field private et_num:Landroid/widget/EditText;

.field private firstPosValueId:I

.field private fistTypeId:Ljava/lang/String;

.field private handler:Lfl;

.field private img_icon:Lcn/apppark/mcd/widget/RemoteImageView;

.field private isSecondType:Z

.field private linArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private ll_standard:Landroid/widget/LinearLayout;

.field private mapRelation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;",
            ">;"
        }
    .end annotation
.end field

.field private mapValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/apppark/mcd/vo/buy/BuyProductValueVo;",
            ">;"
        }
    .end annotation
.end field

.field private margin_10:I

.field private margin_15:I

.field private pic:Ljava/lang/String;

.field private pricerange:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private secondPosValueId:I

.field private secondTypeId:Ljava/lang/String;

.field private standard:Lcn/apppark/mcd/vo/buy/BuyProductStandardVo;

.field private standardRelation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;",
            ">;"
        }
    .end annotation
.end field

.field private standard_tvArray_frist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private standard_tvArray_second:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private sum:Ljava/lang/String;

.field private tv_price:Landroid/widget/TextView;

.field private tv_standard:Landroid/widget/TextView;

.field private tv_stock:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/BaseAct;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->linArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->mapRelation:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->mapValue:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->standard_tvArray_frist:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->standard_tvArray_second:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->isSecondType:Z

    const-string v0, "0"

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->fistTypeId:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->secondTypeId:Ljava/lang/String;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->margin_10:I

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->margin_15:I

    return-void
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/buy/BuyProductStandard;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->firstPosValueId:I

    return p1
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/buy/BuyProductStandard;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->fistTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyProductStandard;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private addBuyCar(ILjava/lang/String;)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "memberId"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "productId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->productId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "number"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->et_num:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "standardId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->currentRelationVo:Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->getStandardId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "note"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->handler:Lfl;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/business.ws"

    const-string v7, "saveShopping_sd"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method static synthetic b(Lcn/apppark/vertify/activity/buy/BuyProductStandard;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->secondPosValueId:I

    return p1
.end method

.method static synthetic b(Lcn/apppark/vertify/activity/buy/BuyProductStandard;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->secondTypeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcn/apppark/vertify/activity/buy/BuyProductStandard;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->changeSelect()V

    return-void
.end method

.method private changeSelect()V
    .locals 6

    const/4 v5, 0x5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->standard_tvArray_frist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->standard_tvArray_frist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->fistTypeId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->firstPosValueId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->secondTypeId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->secondPosValueId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "ffffff"

    invoke-static {v0, v2}, Lcn/apppark/mcd/util/FunctionPublic;->setTextColor(Landroid/widget/TextView;Ljava/lang/String;)V

    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v2, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v2, "f1f1f1"

    invoke-static {v2, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const-string v2, "999999"

    invoke-static {v0, v2}, Lcn/apppark/mcd/util/FunctionPublic;->setTextColor(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->firstPosValueId:I

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->isSecondType:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->secondPosValueId:I

    if-nez v0, :cond_4

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->mapRelation:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->firstPosValueId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->secondPosValueId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->currentRelationVo:Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->mapValue:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->fistTypeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->firstPosValueId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyProductValueVo;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->currentFirstVo:Lcn/apppark/mcd/vo/buy/BuyProductValueVo;

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->isSecondType:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->mapValue:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->secondTypeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->secondPosValueId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyProductValueVo;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->currentSencondVo:Lcn/apppark/mcd/vo/buy/BuyProductValueVo;

    :cond_5
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->currentRelationVo:Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->tv_price:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u00a5"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->currentRelationVo:Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->tv_stock:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5269\u4f59\u5e93\u5b58:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->currentRelationVo:Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->getStock()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->currentRelationVo:Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->img_icon:Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->currentRelationVo:Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->getPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrlCorner(Ljava/lang/String;I)V

    :cond_6
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->currentFirstVo:Lcn/apppark/mcd/vo/buy/BuyProductValueVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyProductValueVo;->getValueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->currentSencondVo:Lcn/apppark/mcd/vo/buy/BuyProductValueVo;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->currentSencondVo:Lcn/apppark/mcd/vo/buy/BuyProductValueVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyProductValueVo;->getValueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->tv_standard:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5df2\u9009:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->img_icon:Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->pic:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrlCorner(Ljava/lang/String;I)V

    goto :goto_3
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/buy/BuyProductStandard;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/buy/BuyProductStandard;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->et_num:Landroid/widget/EditText;

    return-object v0
.end method

.method private getLayoutParam()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    const/4 v3, 0x0

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->margin_10:I

    iget v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->margin_10:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method private initStandard(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyProductValueVo;",
            ">;)I"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->margin_10:I

    iget v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->margin_15:I

    iget v4, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->margin_10:I

    iget v6, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->margin_10:I

    invoke-virtual {v0, v1, v2, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v1, "14"

    const-string v2, "333333"

    const-string v4, "0"

    invoke-static {v0, p1, v1, v2, v4}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->ll_standard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    move v1, v5

    move v2, v5

    move v4, v3

    move v6, v5

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyProductValueVo;

    iget-object v3, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->mapValue:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductValueVo;->getValueId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v6, :cond_0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductValueVo;->getValueId()I

    move-result v1

    :cond_0
    iget-object v3, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductValueVo;->getValueName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xe

    invoke-virtual {p0, v3, v7, v8}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->getTextWidth(Landroid/content/Context;Ljava/lang/String;I)F

    move-result v3

    add-float/2addr v4, v3

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v7}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v4, v7

    sget v7, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    iget v8, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->margin_15:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_1

    add-int/lit8 v2, v2, 0x1

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->context:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v7, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->linArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v4, Landroid/widget/TextView;

    iget-object v7, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->context:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget v7, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->margin_10:I

    iget v8, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->margin_10:I

    iget v9, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->margin_10:I

    iget v10, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->margin_10:I

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductValueVo;->getValueName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "14"

    const-string v9, "999999"

    const-string v10, "0"

    invoke-static {v4, v7, v8, v9, v10}, Lcn/apppark/mcd/util/FunctionPublic;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v7, 0x7f0201b4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductValueVo;->getValueId()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    new-instance v0, Lcn/apppark/vertify/activity/buy/BuyProductStandard$1;

    invoke-direct {v0, p0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard$1;-><init>(Lcn/apppark/vertify/activity/buy/BuyProductStandard;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->standard_tvArray_frist:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->linArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->getLayoutParam()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v6, 0x1

    move v4, v3

    move v6, v0

    goto/16 :goto_0

    :cond_1
    if-nez v2, :cond_2

    iget-object v3, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->linArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->context:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v7, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->linArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->linArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_4

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->ll_standard:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->linArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->linArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return v1

    :cond_5
    move v1, v5

    goto :goto_2
.end method

.method private initWidget()V
    .locals 6

    const/4 v2, 0x0

    const v0, 0x7f0a0117

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->btn_sure:Landroid/widget/Button;

    const v0, 0x7f0a0121

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->btn_add:Landroid/widget/Button;

    const v0, 0x7f0a011f

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->btn_cut:Landroid/widget/Button;

    const v0, 0x7f0a0120

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->et_num:Landroid/widget/EditText;

    const v0, 0x7f0a0119

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->tv_price:Landroid/widget/TextView;

    const v0, 0x7f0a011a

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->tv_stock:Landroid/widget/TextView;

    const v0, 0x7f0a011b

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->tv_standard:Landroid/widget/TextView;

    const v0, 0x7f0a0122

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->img_icon:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a011d

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->ll_standard:Landroid/widget/LinearLayout;

    const v0, 0x7f0a011c

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->btn_close:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->btn_close:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->btn_close:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->btn_add:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->btn_cut:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->btn_sure:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->standardRelation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->standardRelation:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->getSecondValueId()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->standardRelation:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->getSecondValueId()I

    move-result v0

    move v3, v0

    :goto_1
    iget-object v4, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->mapRelation:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->standardRelation:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->getFirstValueId()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->standardRelation:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->standard:Lcn/apppark/mcd/vo/buy/BuyProductStandardVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductStandardVo;->getFirstType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->fistTypeId:Ljava/lang/String;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->standard:Lcn/apppark/mcd/vo/buy/BuyProductStandardVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/buy/BuyProductStandardVo;->getFirstValue()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->initStandard(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->standard:Lcn/apppark/mcd/vo/buy/BuyProductStandardVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductStandardVo;->getSecondType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->standard:Lcn/apppark/mcd/vo/buy/BuyProductStandardVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductStandardVo;->getFirstType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->isSecondType:Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->standard:Lcn/apppark/mcd/vo/buy/BuyProductStandardVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductStandardVo;->getSecondType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->secondTypeId:Ljava/lang/String;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->standard:Lcn/apppark/mcd/vo/buy/BuyProductStandardVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/buy/BuyProductStandardVo;->getSecondValue()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->initStandard(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->tv_price:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u00a5"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->pricerange:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->tv_stock:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5269\u4f59\u5e93\u5b58:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->sum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->img_icon:Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->pic:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrlCorner(Ljava/lang/String;I)V

    return-void

    :cond_2
    move v3, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public getTextWidth(Landroid/content/Context;Ljava/lang/String;I)F
    .locals 3

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    int-to-float v2, p3

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->firstPosValueId:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->isSecondType:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->secondPosValueId:I

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->currentRelationVo:Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "\u8bf7\u9009\u62e9\u8d2d\u4e70\u89c4\u683c!"

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->et_num:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotZero(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->currentRelationVo:Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->currentRelationVo:Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->getStock()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->et_num:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v2

    if-ge v0, v2, :cond_3

    const-string v0, "\u8d2d\u4e70\u6570\u91cf\u8d85\u8fc7\u5e93\u5b58!"

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->addBuyCar(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "\u8bf7\u8f93\u5165\u8d2d\u4e70\u6570\u91cf!"

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->et_num:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotZero(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->et_num:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->et_num:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->et_num:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotZero(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->et_num:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-lez v0, :cond_6

    :goto_3
    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->et_num:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_3

    :sswitch_3
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->finish()V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x7f0a0117 -> :sswitch_0
        0x7f0a011c -> :sswitch_3
        0x7f0a011f -> :sswitch_2
        0x7f0a0121 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/BaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "standard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyProductStandardVo;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->standard:Lcn/apppark/mcd/vo/buy/BuyProductStandardVo;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "relation"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->standardRelation:Ljava/util/ArrayList;

    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->createLoadingDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pic"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->pic:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sum"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->sum:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pricerange"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->pricerange:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "productid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->productId:Ljava/lang/String;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->productId:Ljava/lang/String;

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lfl;

    invoke-direct {v0, p0}, Lfl;-><init>(Lcn/apppark/vertify/activity/buy/BuyProductStandard;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->handler:Lfl;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyProductStandard;->initWidget()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcn/apppark/vertify/activity/BaseAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
