.class public final Lof;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/persion/RegNewStep2;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/persion/RegNewStep2;)V
    .locals 0

    iput-object p1, p0, Lof;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    const v0, 0x7f0a02b8

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lof;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->a(Lcn/apppark/vertify/activity/persion/RegNewStep2;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lof;->a:Lcn/apppark/vertify/activity/persion/RegNewStep2;

    const-string v1, "1"

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->a(Lcn/apppark/vertify/activity/persion/RegNewStep2;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
