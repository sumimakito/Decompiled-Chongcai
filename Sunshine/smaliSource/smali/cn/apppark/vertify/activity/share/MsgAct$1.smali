.class Lcn/apppark/vertify/activity/share/MsgAct$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/share/MsgAct;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/share/MsgAct;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/share/MsgAct$1;->a:Lcn/apppark/vertify/activity/share/MsgAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/MsgAct$1;->a:Lcn/apppark/vertify/activity/share/MsgAct;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/share/MsgAct;->finish()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/share/MsgAct$1;->a:Lcn/apppark/vertify/activity/share/MsgAct;

    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Lcn/apppark/vertify/activity/share/MsgAct;->overridePendingTransition(II)V

    return-void
.end method
