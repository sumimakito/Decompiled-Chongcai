import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.widget.ImageButton;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.widget.Mp4VideoView;
import cn.apppark.vertify.activity.free.self.Mp4PlayerActivity;

public final class mc
  implements MediaPlayer.OnCompletionListener
{
  public mc(Mp4PlayerActivity paramMp4PlayerActivity) {}
  
  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    boolean bool = false;
    HQCHApplication.getInstance().initToast("播放完成", 0);
    Mp4PlayerActivity.b(this.a).pause();
    Mp4PlayerActivity.c(this.a).setImageResource(2130837751);
    paramMediaPlayer = this.a;
    if (!Mp4PlayerActivity.d(this.a)) {
      bool = true;
    }
    Mp4PlayerActivity.b(paramMediaPlayer, bool);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/mc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */