.class final Llk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Llj;


# direct methods
.method constructor <init>(Llj;FF)V
    .locals 0

    iput-object p1, p0, Llk;->c:Llj;

    iput p2, p0, Llk;->a:F

    iput p3, p0, Llk;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Llk;->c:Llj;

    iget-object v0, v0, Llj;->a:Lcn/apppark/vertify/activity/free/self/Self720View;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Self720View;->i(Lcn/apppark/vertify/activity/free/self/Self720View;)Lll;

    move-result-object v0

    iget-object v0, v0, Lll;->a:Lcn/apppark/vertify/activity/free/self/Ball720;

    iget v1, p0, Llk;->a:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/free/self/Ball720;->increaseX(F)V

    iget-object v0, p0, Llk;->c:Llj;

    iget-object v0, v0, Llj;->a:Lcn/apppark/vertify/activity/free/self/Self720View;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Self720View;->i(Lcn/apppark/vertify/activity/free/self/Self720View;)Lll;

    move-result-object v0

    iget-object v0, v0, Lll;->a:Lcn/apppark/vertify/activity/free/self/Ball720;

    iget v1, p0, Llk;->b:F

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/free/self/Ball720;->increaseY(F)V

    iget-object v0, p0, Llk;->c:Llj;

    iget-object v0, v0, Llj;->a:Lcn/apppark/vertify/activity/free/self/Self720View;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/free/self/Self720View;->requestRender()V

    return-void
.end method
