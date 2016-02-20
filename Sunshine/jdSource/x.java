import android.media.MediaPlayer;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.widget.MediaController;
import cn.apppark.mcd.widget.Mp4VideoView;

public final class x
  implements SurfaceHolder.Callback
{
  public x(Mp4VideoView paramMp4VideoView) {}
  
  public final void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    Mp4VideoView.e(this.a, paramInt2);
    Mp4VideoView.f(this.a, paramInt3);
    if ((Mp4VideoView.e(this.a) != null) && (Mp4VideoView.m(this.a)) && (Mp4VideoView.b(this.a) == paramInt2) && (Mp4VideoView.c(this.a) == paramInt3))
    {
      if (Mp4VideoView.i(this.a) != 0)
      {
        Mp4VideoView.e(this.a).seekTo(Mp4VideoView.i(this.a));
        Mp4VideoView.c(this.a, 0);
      }
      Mp4VideoView.e(this.a).start();
      if (Mp4VideoView.f(this.a) != null) {
        Mp4VideoView.f(this.a).show();
      }
    }
  }
  
  public final void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    Mp4VideoView.a(this.a, paramSurfaceHolder);
    Mp4VideoView.n(this.a);
  }
  
  public final void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    Mp4VideoView.a(this.a, null);
    if (Mp4VideoView.f(this.a) != null) {
      Mp4VideoView.f(this.a).hide();
    }
    if (Mp4VideoView.e(this.a) != null)
    {
      Mp4VideoView.e(this.a).reset();
      Mp4VideoView.e(this.a).release();
      Mp4VideoView.a(this.a, null);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */