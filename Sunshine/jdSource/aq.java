import android.app.Activity;
import cn.apppark.mcd.vo.dyn.DynMsgListReturnVo;
import cn.apppark.mcd.widget.WaterfallImageView;

public final class aq
  extends Thread
{
  public aq(WaterfallImageView paramWaterfallImageView) {}
  
  public final void run()
  {
    if (WaterfallImageView.a(this.a) != null) {}
    try
    {
      this.a.bitmap = WaterfallImageView.a(this.a, WaterfallImageView.a(this.a).getPicUrl());
      ((Activity)WaterfallImageView.b(this.a)).runOnUiThread(new ar(this));
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/aq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */