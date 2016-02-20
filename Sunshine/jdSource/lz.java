import android.app.AlertDialog.Builder;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import cn.apppark.mcd.widget.Mp4VideoView;
import cn.apppark.vertify.activity.free.self.Mp4PlayerActivity;

public final class lz
  implements MediaPlayer.OnErrorListener
{
  public lz(Mp4PlayerActivity paramMp4PlayerActivity) {}
  
  public final boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    Mp4PlayerActivity.b(this.a).stopPlayback();
    Mp4PlayerActivity.a(this.a, false);
    new AlertDialog.Builder(this.a).setTitle("对不起").setMessage("您所播的视频格式不正确，播放已停止。").setPositiveButton("知道了", new ma(this)).setCancelable(false).show();
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/lz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */