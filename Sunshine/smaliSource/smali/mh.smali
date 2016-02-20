.class final Lmh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Lmg;


# direct methods
.method constructor <init>(Lmg;FF)V
    .locals 0

    iput-object p1, p0, Lmh;->c:Lmg;

    iput p2, p0, Lmh;->a:F

    iput p3, p0, Lmh;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lmh;->c:Lmg;

    iget-object v0, v0, Lmg;->a:Lcn/apppark/vertify/activity/free/self/Self720View;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Self720View;->i(Lcn/apppark/vertify/activity/free/self/Self720View;)Lmi;

    move-result-object v0

    iget-object v0, v0, Lmi;->a:Lcn/apppark/vertify/activity/free/self/Ball720;

    iget v1, p0, Lmh;->a:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/free/self/Ball720;->increaseX(F)V

    iget-object v0, p0, Lmh;->c:Lmg;

    iget-object v0, v0, Lmg;->a:Lcn/apppark/vertify/activity/free/self/Self720View;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Self720View;->i(Lcn/apppark/vertify/activity/free/self/Self720View;)Lmi;

    move-result-object v0

    iget-object v0, v0, Lmi;->a:Lcn/apppark/vertify/activity/free/self/Ball720;

    iget v1, p0, Lmh;->b:F

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/free/self/Ball720;->increaseY(F)V

    iget-object v0, p0, Lmh;->c:Lmg;

    iget-object v0, v0, Lmg;->a:Lcn/apppark/vertify/activity/free/self/Self720View;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/free/self/Self720View;->requestRender()V

    return-void
.end method
