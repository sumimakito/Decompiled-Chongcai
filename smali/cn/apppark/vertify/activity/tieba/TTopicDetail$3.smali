.class Lcn/apppark/vertify/activity/tieba/TTopicDetail$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;


# direct methods
.method constructor <init>(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail$3;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TTopicDetail$3;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;ILjava/lang/String;)V

    return-void
.end method
