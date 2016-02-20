import android.os.Handler;
import android.os.Message;
import android.widget.SeekBar;
import android.widget.TextView;
import cn.apppark.mcd.widget.Mp4VideoView;
import cn.apppark.vertify.activity.free.self.Mp4PlayerActivity;

public final class ly
  extends Handler
{
  public ly(Mp4PlayerActivity paramMp4PlayerActivity) {}
  
  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    }
    for (;;)
    {
      super.handleMessage(paramMessage);
      return;
      int i = Mp4PlayerActivity.b(this.a).getCurrentPosition();
      Mp4PlayerActivity.h(this.a).setProgress(i);
      int j;
      if (Mp4PlayerActivity.g(this.a))
      {
        j = Mp4PlayerActivity.b(this.a).getBufferPercentage();
        Mp4PlayerActivity.h(this.a).setSecondaryProgress(j * Mp4PlayerActivity.h(this.a).getMax() / 100);
      }
      for (;;)
      {
        i /= 1000;
        j = i / 60;
        int k = j / 60;
        Mp4PlayerActivity.o(this.a).setText(String.format("%02d:%02d:%02d", new Object[] { Integer.valueOf(k), Integer.valueOf(j % 60), Integer.valueOf(i % 60) }));
        sendEmptyMessageDelayed(0, 100L);
        break;
        Mp4PlayerActivity.h(this.a).setSecondaryProgress(0);
      }
      Mp4PlayerActivity.l(this.a);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ly.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */