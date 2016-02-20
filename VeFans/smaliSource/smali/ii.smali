.class public final Lii;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lii;->b:Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;

    iput-object p2, p0, Lii;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lii;->b:Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->a(Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lii;->b:Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;

    iget-object v1, p0, Lii;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->a(Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;Landroid/view/View;)V

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
