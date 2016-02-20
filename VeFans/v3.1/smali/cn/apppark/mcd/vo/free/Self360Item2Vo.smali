.class public Lcn/apppark/mcd/vo/free/Self360Item2Vo;
.super Lcn/apppark/mcd/vo/base/BasePageItem2Vo;


# instance fields
.field private data_pic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/mcd/vo/base/BasePageItem2Vo;-><init>()V

    return-void
.end method


# virtual methods
.method public getData_pic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/free/Self360Item2Vo;->data_pic:Ljava/lang/String;

    return-object v0
.end method

.method public setData_pic(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/free/Self360Item2Vo;->data_pic:Ljava/lang/String;

    return-void
.end method
