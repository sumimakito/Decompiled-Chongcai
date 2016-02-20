.class public Lcn/apppark/mcd/vo/dyn/DynLoginReturnVo;
.super Lcn/apppark/mcd/vo/base/BaseReturnVo;


# instance fields
.field private retFlag:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userPicUrl:Ljava/lang/String;

.field private usernikeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/mcd/vo/base/BaseReturnVo;-><init>()V

    return-void
.end method


# virtual methods
.method public getRetFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynLoginReturnVo;->retFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynLoginReturnVo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPicUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynLoginReturnVo;->userPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUsernikeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynLoginReturnVo;->usernikeName:Ljava/lang/String;

    return-object v0
.end method

.method public setRetFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynLoginReturnVo;->retFlag:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynLoginReturnVo;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserPicUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynLoginReturnVo;->userPicUrl:Ljava/lang/String;

    return-void
.end method

.method public setUsernikeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynLoginReturnVo;->usernikeName:Ljava/lang/String;

    return-void
.end method
