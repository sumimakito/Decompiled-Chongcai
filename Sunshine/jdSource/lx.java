import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Handler;
import android.util.Log;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import cn.apppark.mcd.widget.Mp4VideoView;
import cn.apppark.vertify.activity.free.self.Mp4PlayerActivity;

public final class lx
  implements MediaPlayer.OnPreparedListener
{
  public lx(Mp4PlayerActivity paramMp4PlayerActivity) {}
  
  public final void onPrepared(MediaPlayer paramMediaPlayer)
  {
    Mp4PlayerActivity.a(this.a, 1);
    Mp4PlayerActivity.c(this.a, false);
    if (Mp4PlayerActivity.j(this.a)) {
      Mp4PlayerActivity.k(this.a);
    }
    int i = Mp4PlayerActivity.b(this.a).getDuration();
    Log.d("onCompletion", i);
    Mp4PlayerActivity.h(this.a).setMax(i);
    i /= 1000;
    int j = i / 60;
    int k = j / 60;
    Mp4PlayerActivity.m(this.a).setText(String.format("%02d:%02d:%02d", new Object[] { Integer.valueOf(k), Integer.valueOf(j % 60), Integer.valueOf(i % 60) }));
    Mp4PlayerActivity.b(this.a).start();
    Mp4PlayerActivity.c(this.a).setImageResource(2130837750);
    Mp4PlayerActivity.f(this.a);
    Mp4PlayerActivity.n(this.a).setVisibility(8);
    this.a.b.sendEmptyMessage(0);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/lx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */