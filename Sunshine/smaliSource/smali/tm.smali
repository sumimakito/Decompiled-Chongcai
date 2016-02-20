.class public final Ltm;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/vertify/adapter/TCommnetAdapter$OnDeleteListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)V
    .locals 0

    iput-object p1, p0, Ltm;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDelete(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 2

    iget-object v0, p0, Ltm;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0, p3}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->d(Lcn/apppark/vertify/activity/tieba/TTopicDetail;I)I

    if-nez p5, :cond_0

    iget-object v0, p0, Ltm;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    const/16 v1, 0x8

    invoke-static {v0, v1, p1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->b(Lcn/apppark/vertify/activity/tieba/TTopicDetail;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ltm;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    const/16 v1, 0xa

    invoke-static {v0, v1, p2}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->c(Lcn/apppark/vertify/activity/tieba/TTopicDetail;ILjava/lang/String;)V

    iget-object v0, p0, Ltm;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-static {v0, p4}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->e(Lcn/apppark/vertify/activity/tieba/TTopicDetail;I)I

    goto :goto_0
.end method
