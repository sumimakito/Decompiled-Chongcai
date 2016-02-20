.class public Lcn/apppark/mcd/vo/base/BasePageItem2Vo;
.super Lcn/apppark/mcd/vo/base/BaseVo;


# instance fields
.field private itemID:Ljava/lang/String;

.field private seq:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/mcd/vo/base/BaseVo;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItemID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/base/BasePageItem2Vo;->itemID:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/base/BasePageItem2Vo;->seq:Ljava/lang/String;

    return-object v0
.end method

.method public final setItemID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/base/BasePageItem2Vo;->itemID:Ljava/lang/String;

    return-void
.end method

.method public final setSeq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/base/BasePageItem2Vo;->seq:Ljava/lang/String;

    return-void
.end method
