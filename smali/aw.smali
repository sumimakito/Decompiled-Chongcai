.class public final Law;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/FreeAct;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/FreeAct;)V
    .locals 0

    iput-object p1, p0, Law;->a:Lcn/apppark/vertify/activity/FreeAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Law;->a:Lcn/apppark/vertify/activity/FreeAct;

    iget-object v0, v0, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/ElasticScrollView;->fullScroll(I)Z

    return-void
.end method
