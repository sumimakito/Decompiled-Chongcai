.class Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$3;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v3, 0x0

    move v1, v3

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$3;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$3;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;

    if-eqz v0, :cond_2

    const-string v2, "1"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getStyle_must()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$3;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$3;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->b(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "\u8bf7\u60a8\u586b\u5199"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v2, :cond_2

    :cond_0
    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    invoke-virtual {v1, v0, v3}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$3;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->c(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$3;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->c(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    const-string v2, "1"

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getStyle_must()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v6, v3

    :goto_3
    if-ge v6, v7, :cond_a

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/CheckBox;

    if-eqz v2, :cond_4

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v5

    :goto_4
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u8bf7\u9009\u62e9"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getData_label()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    invoke-virtual {v1, v0, v3}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_6
    move v2, v3

    :goto_5
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$3;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$3;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;

    if-eqz v0, :cond_7

    const-string v1, "1"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getStyle_must()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "1"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getStyle_inputType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "3"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getStyle_type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$3;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->chekPhone(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getData_label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u683c\u5f0f\u9519\u8bef"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$3;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    move v0, v3

    :goto_6
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$3;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->d(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$3;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-static {v0, v3}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;Z)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$3;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->e(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)V

    goto/16 :goto_1

    :cond_7
    if-eqz v0, :cond_8

    const-string v1, "1"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getStyle_must()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "2"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getStyle_inputType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "3"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getStyle_type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$3;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->checkEmail(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5001ItemVo;->getData_label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u683c\u5f0f\u9519\u8bef"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$3;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    move v0, v3

    goto/16 :goto_6

    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_5

    :cond_9
    move v0, v5

    goto/16 :goto_6

    :cond_a
    move v0, v3

    goto/16 :goto_4
.end method
