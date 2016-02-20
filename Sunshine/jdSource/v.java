import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import android.widget.MediaController;
import cn.apppark.mcd.widget.Mp4VideoView;

public final class v
  implements MediaPlayer.OnErrorListener
{
  public v(Mp4VideoView paramMp4VideoView) {}
  
  public final boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    if (Mp4VideoView.f(this.a) != null) {
      Mp4VideoView.f(this.a).hide();
    }
    if ((Mp4VideoView.l(this.a) != null) && (Mp4VideoView.l(this.a).onError(Mp4VideoView.e(this.a), paramInt1, paramInt2))) {}
    return true;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */