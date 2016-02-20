import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.view.SurfaceHolder;
import android.widget.MediaController;
import cn.apppark.mcd.widget.Mp4VideoView;

public final class t
  implements MediaPlayer.OnPreparedListener
{
  public t(Mp4VideoView paramMp4VideoView) {}
  
  public final void onPrepared(MediaPlayer paramMediaPlayer)
  {
    Mp4VideoView.a(this.a, true);
    if (Mp4VideoView.d(this.a) != null) {
      Mp4VideoView.d(this.a).onPrepared(Mp4VideoView.e(this.a));
    }
    if (Mp4VideoView.f(this.a) != null) {
      Mp4VideoView.f(this.a).setEnabled(true);
    }
    Mp4VideoView.a(this.a, paramMediaPlayer.getVideoWidth());
    Mp4VideoView.b(this.a, paramMediaPlayer.getVideoHeight());
    if ((Mp4VideoView.b(this.a) != 0) && (Mp4VideoView.c(this.a) != 0))
    {
      this.a.getHolder().setFixedSize(Mp4VideoView.b(this.a), Mp4VideoView.c(this.a));
      if ((Mp4VideoView.g(this.a) == Mp4VideoView.b(this.a)) && (Mp4VideoView.h(this.a) == Mp4VideoView.c(this.a)))
      {
        if (Mp4VideoView.i(this.a) != 0)
        {
          Mp4VideoView.e(this.a).seekTo(Mp4VideoView.i(this.a));
          Mp4VideoView.c(this.a, 0);
        }
        if (!Mp4VideoView.j(this.a)) {
          break label249;
        }
        Mp4VideoView.e(this.a).start();
        Mp4VideoView.b(this.a, false);
        if (Mp4VideoView.f(this.a) != null) {
          Mp4VideoView.f(this.a).show();
        }
      }
    }
    label249:
    do
    {
      do
      {
        return;
      } while ((this.a.isPlaying()) || ((Mp4VideoView.i(this.a) == 0) && (this.a.getCurrentPosition() <= 0)) || (Mp4VideoView.f(this.a) == null));
      Mp4VideoView.f(this.a).show(0);
      return;
      if (Mp4VideoView.i(this.a) != 0)
      {
        Mp4VideoView.e(this.a).seekTo(Mp4VideoView.i(this.a));
        Mp4VideoView.c(this.a, 0);
      }
    } while (!Mp4VideoView.j(this.a));
    Mp4VideoView.e(this.a).start();
    Mp4VideoView.b(this.a, false);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */