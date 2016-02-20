.class public final Lhg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;I)V
    .locals 0

    iput-object p1, p0, Lhg;->b:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    iput p2, p0, Lhg;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lhg;->b:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->a:Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhg;->b:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    const-class v2, Lcn/apppark/vertify/activity/free/dyn/PicGallery;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "urls"

    iget-object v2, p0, Lhg;->b:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;)Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getPics()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "position"

    iget v2, p0, Lhg;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lhg;->b:Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;

    invoke-virtual {v1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgDetail;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
