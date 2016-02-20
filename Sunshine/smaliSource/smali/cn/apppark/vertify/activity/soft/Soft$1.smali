.class public Lcn/apppark/vertify/activity/soft/Soft$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/soft/Soft;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/soft/Soft;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/soft/Soft$1;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft$1;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/soft/Soft;->finish()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft$1;->a:Lcn/apppark/vertify/activity/soft/Soft;

    const/4 v1, 0x0

    const v2, 0x7f040006

    invoke-virtual {v0, v1, v2}, Lcn/apppark/vertify/activity/soft/Soft;->overridePendingTransition(II)V

    return-void
.end method
