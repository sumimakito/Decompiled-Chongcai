.class public final Lmi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field public a:Lcn/apppark/vertify/activity/free/self/Ball720;

.field final synthetic b:Lcn/apppark/vertify/activity/free/self/Self720View;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/free/self/Self720View;)V
    .locals 0

    iput-object p1, p0, Lmi;->b:Lcn/apppark/vertify/activity/free/self/Self720View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/free/self/Self720View;Lmg;)V
    .locals 0

    invoke-direct {p0, p1}, Lmi;-><init>(Lcn/apppark/vertify/activity/free/self/Self720View;)V

    return-void
.end method


# virtual methods
.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    iget-object v0, p0, Lmi;->b:Lcn/apppark/vertify/activity/free/self/Self720View;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Self720View;->a(Lcn/apppark/vertify/activity/free/self/Self720View;)F

    move-result v0

    iget-object v1, p0, Lmi;->b:Lcn/apppark/vertify/activity/free/self/Self720View;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/self/Self720View;->b(Lcn/apppark/vertify/activity/free/self/Self720View;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    invoke-interface {p1, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    iget-object v0, p0, Lmi;->a:Lcn/apppark/vertify/activity/free/self/Ball720;

    invoke-virtual {v0, p1}, Lcn/apppark/vertify/activity/free/self/Ball720;->drawSelf(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lmi;->b:Lcn/apppark/vertify/activity/free/self/Self720View;

    int-to-float v1, p2

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/self/Self720View;->a(Lcn/apppark/vertify/activity/free/self/Self720View;F)F

    invoke-interface {p1, v2, v2, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42b40000    # 90.0f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p1, v1, v0, v2, v3}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    return-void
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/16 v0, 0xc50

    const/16 v1, 0x1101

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    invoke-interface {p1, v2, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    iget-object v0, p0, Lmi;->b:Lcn/apppark/vertify/activity/free/self/Self720View;

    iget-object v1, p0, Lmi;->b:Lcn/apppark/vertify/activity/free/self/Self720View;

    iget-object v2, p0, Lmi;->b:Lcn/apppark/vertify/activity/free/self/Self720View;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/self/Self720View;->c(Lcn/apppark/vertify/activity/free/self/Self720View;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcn/apppark/vertify/activity/free/self/Self720View;->initTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)I

    move-result v1

    iput v1, v0, Lcn/apppark/vertify/activity/free/self/Self720View;->earthTextureId:I

    new-instance v0, Lcn/apppark/vertify/activity/free/self/Ball720;

    const/16 v1, 0xc

    iget-object v2, p0, Lmi;->b:Lcn/apppark/vertify/activity/free/self/Self720View;

    iget v2, v2, Lcn/apppark/vertify/activity/free/self/Self720View;->earthTextureId:I

    invoke-direct {v0, v1, v2}, Lcn/apppark/vertify/activity/free/self/Ball720;-><init>(II)V

    iput-object v0, p0, Lmi;->a:Lcn/apppark/vertify/activity/free/self/Ball720;

    iget-object v0, p0, Lmi;->a:Lcn/apppark/vertify/activity/free/self/Ball720;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/free/self/Ball720;->increaseX(F)V

    return-void
.end method
