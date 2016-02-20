.class public final Ltn;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/vertify/adapter/TCommnetAdapter$OnPicClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/tieba/TTopicDetail;)V
    .locals 0

    iput-object p1, p0, Ltn;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPicClick(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ltn;->a:Lcn/apppark/vertify/activity/tieba/TTopicDetail;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcn/apppark/vertify/activity/tieba/TTopicDetail;->a(Lcn/apppark/vertify/activity/tieba/TTopicDetail;ILjava/lang/String;)V

    return-void
.end method
