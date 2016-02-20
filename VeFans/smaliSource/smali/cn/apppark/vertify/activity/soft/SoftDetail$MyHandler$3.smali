.class public Lcn/apppark/vertify/activity/soft/SoftDetail$MyHandler$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lqi;


# direct methods
.method public constructor <init>(Lqi;I)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$MyHandler$3;->b:Lqi;

    iput p2, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$MyHandler$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Lpf;

    iget-object v1, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$MyHandler$3;->b:Lqi;

    iget-object v1, v1, Lqi;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/SoftDetail;->e(Lcn/apppark/vertify/activity/soft/SoftDetail;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$MyHandler$3;->b:Lqi;

    iget-object v2, v2, Lqi;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-static {v2}, Lcn/apppark/vertify/activity/soft/SoftDetail;->g(Lcn/apppark/vertify/activity/soft/SoftDetail;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lpf;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$MyHandler$3;->b:Lqi;

    iget-object v1, v1, Lqi;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/SoftDetail;->i(Lcn/apppark/vertify/activity/soft/SoftDetail;)Landroid/widget/Gallery;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$MyHandler$3;->b:Lqi;

    iget-object v0, v0, Lqi;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->i(Lcn/apppark/vertify/activity/soft/SoftDetail;)Landroid/widget/Gallery;

    move-result-object v0

    iget v1, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$MyHandler$3;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSelection(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftDetail$MyHandler$3;->b:Lqi;

    iget-object v0, v0, Lqi;->a:Lcn/apppark/vertify/activity/soft/SoftDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftDetail;->a(Lcn/apppark/vertify/activity/soft/SoftDetail;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
