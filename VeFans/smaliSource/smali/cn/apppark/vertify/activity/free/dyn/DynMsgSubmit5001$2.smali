.class Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$2;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$2;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$2;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->b(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$2;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    iget-object v0, v0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
