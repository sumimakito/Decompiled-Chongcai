.class public Lcn/apppark/mcd/vo/dyn/Dyn5006Vo;
.super Lcn/apppark/mcd/vo/base/BasePageItemVo;


# instance fields
.field private style_infoPic:Ljava/lang/String;

.field private style_navBgColor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/mcd/vo/base/BasePageItemVo;-><init>()V

    return-void
.end method


# virtual methods
.method public getStyle_infoPic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/Dyn5006Vo;->style_infoPic:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle_navBgColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/Dyn5006Vo;->style_navBgColor:Ljava/lang/String;

    return-object v0
.end method

.method public setStyle_infoPic(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5006Vo;->style_infoPic:Ljava/lang/String;

    return-void
.end method

.method public setStyle_navBgColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5006Vo;->style_navBgColor:Ljava/lang/String;

    return-void
.end method
