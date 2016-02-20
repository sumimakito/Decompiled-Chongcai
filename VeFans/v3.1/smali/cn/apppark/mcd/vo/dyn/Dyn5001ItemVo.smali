.class public Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;
.super Lcn/apppark/mcd/vo/base/BasePageItem2Vo;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private data_label:Ljava/lang/String;

.field private data_options:Lcom/google/gson/JsonElement;

.field private id:Ljava/lang/String;

.field private style_height:Ljava/lang/String;

.field private style_inputType:Ljava/lang/String;

.field private style_must:Ljava/lang/String;

.field private style_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/mcd/vo/base/BasePageItem2Vo;-><init>()V

    return-void
.end method

.method public static getSerialversionuid()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method


# virtual methods
.method public getData_label()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->data_label:Ljava/lang/String;

    return-object v0
.end method

.method public getData_options()Lcom/google/gson/JsonElement;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->data_options:Lcom/google/gson/JsonElement;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle_height()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->style_height:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle_inputType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->style_inputType:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle_must()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->style_must:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle_type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->style_type:Ljava/lang/String;

    return-object v0
.end method

.method public setData_label(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->data_label:Ljava/lang/String;

    return-void
.end method

.method public setData_options(Lcom/google/gson/JsonElement;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->data_options:Lcom/google/gson/JsonElement;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->id:Ljava/lang/String;

    return-void
.end method

.method public setStyle_height(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->style_height:Ljava/lang/String;

    return-void
.end method

.method public setStyle_inputType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->style_inputType:Ljava/lang/String;

    return-void
.end method

.method public setStyle_must(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->style_must:Ljava/lang/String;

    return-void
.end method

.method public setStyle_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->style_type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dyn5001ItemVo [data_label="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->data_label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", style_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->style_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", style_inputType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->style_inputType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", style_height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->style_height:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", style_must="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->style_must:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data_options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->data_options:Lcom/google/gson/JsonElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
