import android.media.MediaPlayer;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.view.SurfaceHolder;
import cn.apppark.mcd.widget.Mp4VideoView;
import cn.apppark.mcd.widget.MySizeChangeLinstener;

public final class s
  implements MediaPlayer.OnVideoSizeChangedListener
{
  public s(Mp4VideoView paramMp4VideoView) {}
  
  public final void onVideoSizeChanged(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    Mp4VideoView.a(this.a, paramMediaPlayer.getVideoWidth());
    Mp4VideoView.b(this.a, paramMediaPlayer.getVideoHeight());
    if (Mp4VideoView.a(this.a) != null) {
      Mp4VideoView.a(this.a).doMyThings();
    }
    if ((Mp4VideoView.b(this.a) != 0) && (Mp4VideoView.c(this.a) != 0)) {
      this.a.getHolder().setFixedSize(Mp4VideoView.b(this.a), Mp4VideoView.c(this.a));
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */