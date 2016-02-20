.class public Lcn/apppark/vertify/base/ClientPersionInfo;
.super Ljava/lang/Object;


# instance fields
.field private iniName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "buy_ini"

    iput-object v0, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->iniName:Ljava/lang/String;

    iput-object p1, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public LoginOff()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserId(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updatePhone(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserEmail(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserNikeName(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateNikeNameRight(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->updatePhoneState(I)V

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateLastPushMsgTime(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserSex(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserHeadFace(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserSign(Ljava/lang/String;)V

    return-void
.end method

.method public getLastMsgTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->iniName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_LastMsgTime"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastPushMsgTime()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->iniName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "_LastPushMsgTime"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNikeNameRight()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->iniName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "_NikeNameRight"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->iniName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "_UserPhone"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneState()I
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->iniName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "_PhoneState"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUserEmail()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->iniName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "_UserEmail"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserHeadFace()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->iniName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "_HeadFace"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->iniName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "_UserId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserNikeName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->iniName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "_NikeName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserSex()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->iniName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "_sex"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserSign()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->iniName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "_sign"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public receiveMsg()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->iniName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "_receiveMsg"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLastMsgTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->iniName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_LastMsgTime"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public updateLastPushMsgTime(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->iniName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "_LastPushMsgTime"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public updateNikeNameRight(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->iniName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "_NikeNameRight"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public updatePhone(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->iniName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "_UserPhone"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public updatePhoneState(I)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->iniName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "_PhoneState"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public updateReceiveMsg(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->iniName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "_receiveMsg"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public updateUserEmail(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->iniName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "_UserEmail"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public updateUserHeadFace(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->iniName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "_HeadFace"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public updateUserId(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->iniName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "_UserId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public updateUserNikeName(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->iniName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "_NikeName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public updateUserSex(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->iniName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "_sex"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public updateUserSign(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/apppark/vertify/base/ClientPersionInfo;->iniName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "_sign"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
