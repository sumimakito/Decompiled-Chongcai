import android.os.Handler;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import cn.apppark.mcd.widget.Mp4VideoView;
import cn.apppark.vertify.activity.free.self.Mp4PlayerActivity;

public final class md
  implements SeekBar.OnSeekBarChangeListener
{
  public md(Mp4PlayerActivity paramMp4PlayerActivity) {}
  
  public final void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    if ((paramBoolean) && (Mp4PlayerActivity.g(this.a))) {
      Mp4PlayerActivity.b(this.a).seekTo(paramInt);
    }
  }
  
  public final void onStartTrackingTouch(SeekBar paramSeekBar)
  {
    this.a.b.removeMessages(1);
  }
  
  public final void onStopTrackingTouch(SeekBar paramSeekBar)
  {
    this.a.b.sendEmptyMessageDelayed(1, 6868L);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/md.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */