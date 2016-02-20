.class Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;I)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$6;->b:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    iput p2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$6;->b:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    iget-object v0, v0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$6;->b:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$6;->b:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->g(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)I

    move-result v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$6;->b:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->h(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)I

    move-result v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$6;->b:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-static {v3}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->i(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)I

    move-result v3

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$6;->b:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-static {v4}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->j(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)I

    move-result v4

    iget-object v5, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$6;->b:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-static {v5}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->k(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)I

    move-result v5

    iget-object v6, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$6;->b:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-static {v6}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->l(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)Ljava/util/List;

    move-result-object v6

    iget v7, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$6;->a:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static/range {v0 .. v6}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;IIIIILandroid/widget/TextView;)V

    return-void
.end method
