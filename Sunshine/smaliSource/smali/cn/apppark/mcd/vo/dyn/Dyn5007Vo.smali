.class public Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;
.super Lcn/apppark/mcd/vo/base/BasePageItemVo;


# instance fields
.field private searchType:Ljava/lang/String;

.field private source:Lcom/google/gson/JsonElement;

.field private style_bgAlpha:Ljava/lang/String;

.field private style_bgColor:Ljava/lang/String;

.field private style_bgPic:Ljava/lang/String;

.field private style_bgType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/mcd/vo/base/BasePageItemVo;-><init>()V

    return-void
.end method


# virtual methods
.method public getSearchType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;->searchType:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Lcom/google/gson/JsonElement;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;->source:Lcom/google/gson/JsonElement;

    return-object v0
.end method

.method public getStyle_bgAlpha()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;->style_bgAlpha:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle_bgColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;->style_bgColor:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle_bgPic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;->style_bgPic:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle_bgType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;->style_bgType:Ljava/lang/String;

    return-object v0
.end method

.method public setSearchType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;->searchType:Ljava/lang/String;

    return-void
.end method

.method public setSource(Lcom/google/gson/JsonElement;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;->source:Lcom/google/gson/JsonElement;

    return-void
.end method

.method public setStyle_bgAlpha(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;->style_bgAlpha:Ljava/lang/String;

    return-void
.end method

.method public setStyle_bgColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;->style_bgColor:Ljava/lang/String;

    return-void
.end method

.method public setStyle_bgPic(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;->style_bgPic:Ljava/lang/String;

    return-void
.end method

.method public setStyle_bgType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;->style_bgType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dyn5007Vo [style_bgColor="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;->style_bgColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", style_bgPic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;->style_bgPic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", searchType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;->searchType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", style_bgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;->style_bgType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", style_bgAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;->style_bgAlpha:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;->source:Lcom/google/gson/JsonElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
