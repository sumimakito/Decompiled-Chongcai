.class final Lwm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lwj;


# direct methods
.method constructor <init>(Lwj;)V
    .locals 0

    iput-object p1, p0, Lwm;->a:Lwj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lwm;->a:Lwj;

    iget-object v0, v0, Lwj;->d:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iget-object v1, p0, Lwm;->a:Lwj;

    iget-object v1, v1, Lwj;->a:Ljava/lang/String;

    iget-object v2, p0, Lwm;->a:Lwj;

    iget-object v2, v2, Lwj;->b:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
