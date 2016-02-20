.class public final Lpw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/share/ShareAct;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/share/ShareAct;)V
    .locals 0

    iput-object p1, p0, Lpw;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/share/ShareAct;->finish()V

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/share/ShareAct;

    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Lcn/apppark/vertify/activity/share/ShareAct;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
