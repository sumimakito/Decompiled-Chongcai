import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.widget.MediaController;
import cn.apppark.mcd.widget.Mp4VideoView;

public final class u
  implements MediaPlayer.OnCompletionListener
{
  public u(Mp4VideoView paramMp4VideoView) {}
  
  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    if (Mp4VideoView.f(this.a) != null) {
      Mp4VideoView.f(this.a).hide();
    }
    if (Mp4VideoView.k(this.a) != null) {
      Mp4VideoView.k(this.a).onCompletion(Mp4VideoView.e(this.a));
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */