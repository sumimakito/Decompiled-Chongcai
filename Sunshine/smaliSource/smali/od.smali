.class public final Lod;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/apppark/mcd/widget/PullDownListView4$OnFootRefreshListener4;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/persion/PersionCollection;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/persion/PersionCollection;)V
    .locals 0

    iput-object p1, p0, Lod;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFootRefresh()V
    .locals 3

    iget-object v0, p0, Lod;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/persion/PersionCollection;->b(Lcn/apppark/vertify/activity/persion/PersionCollection;II)V

    return-void
.end method
