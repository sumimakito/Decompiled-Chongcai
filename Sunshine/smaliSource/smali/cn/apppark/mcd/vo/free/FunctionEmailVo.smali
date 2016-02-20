.class public Lcn/apppark/mcd/vo/free/FunctionEmailVo;
.super Lcn/apppark/mcd/vo/base/BasePageItemVo;


# instance fields
.field private data_addr:Ljava/lang/String;

.field private data_text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/mcd/vo/base/BasePageItemVo;-><init>()V

    return-void
.end method


# virtual methods
.method public getData_addr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/free/FunctionEmailVo;->data_addr:Ljava/lang/String;

    return-object v0
.end method

.method public getData_text()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/free/FunctionEmailVo;->data_text:Ljava/lang/String;

    return-object v0
.end method

.method public setData_addr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/free/FunctionEmailVo;->data_addr:Ljava/lang/String;

    return-void
.end method

.method public setData_text(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/free/FunctionEmailVo;->data_text:Ljava/lang/String;

    return-void
.end method
