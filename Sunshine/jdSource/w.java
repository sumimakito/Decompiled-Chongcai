import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import cn.apppark.mcd.widget.Mp4VideoView;

public final class w
  implements MediaPlayer.OnBufferingUpdateListener
{
  public w(Mp4VideoView paramMp4VideoView) {}
  
  public final void onBufferingUpdate(MediaPlayer paramMediaPlayer, int paramInt)
  {
    Mp4VideoView.d(this.a, paramInt);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */