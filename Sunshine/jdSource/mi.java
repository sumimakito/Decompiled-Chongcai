import android.opengl.GLSurfaceView.Renderer;
import android.opengl.GLU;
import cn.apppark.vertify.activity.free.self.Ball720;
import cn.apppark.vertify.activity.free.self.Self720View;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public final class mi
  implements GLSurfaceView.Renderer
{
  public Ball720 a;
  
  private mi(Self720View paramSelf720View) {}
  
  public final void onDrawFrame(GL10 paramGL10)
  {
    paramGL10.glClear(16640);
    paramGL10.glMatrixMode(5888);
    paramGL10.glLoadIdentity();
    paramGL10.glScalef(Self720View.a(this.b), Self720View.b(this.b), 1.0F);
    paramGL10.glScalef(-1.0F, -1.0F, -1.0F);
    this.a.drawSelf(paramGL10);
  }
  
  public final void onSurfaceChanged(GL10 paramGL10, int paramInt1, int paramInt2)
  {
    Self720View.a(this.b, paramInt1);
    paramGL10.glViewport(0, 0, paramInt1, paramInt2);
    paramGL10.glMatrixMode(5889);
    paramGL10.glLoadIdentity();
    GLU.gluPerspective(paramGL10, 90.0F, paramInt1 / paramInt2, 0.1F, 10.0F);
    paramGL10.glMatrixMode(5888);
    paramGL10.glLoadIdentity();
  }
  
  public final void onSurfaceCreated(GL10 paramGL10, EGLConfig paramEGLConfig)
  {
    paramGL10.glDisable(3024);
    paramGL10.glHint(3152, 4353);
    paramGL10.glClearColor(0.0F, 0.0F, 0.0F, 0.0F);
    paramGL10.glShadeModel(7425);
    paramGL10.glEnable(2929);
    paramGL10.glEnable(2884);
    this.b.earthTextureId = this.b.initTexture(paramGL10, Self720View.c(this.b));
    this.a = new Ball720(12, this.b.earthTextureId);
    this.a.increaseX(180.0F);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/mi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */