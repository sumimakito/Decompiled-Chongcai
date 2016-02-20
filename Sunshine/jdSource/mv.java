import android.os.Message;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.free.SelfGalleryItemVo;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView.PublicHandler;

public final class mv
  implements Runnable
{
  public mv(SelfGalleryView paramSelfGalleryView) {}
  
  public final void run()
  {
    while (!SelfGalleryView.g(this.a)) {
      try
      {
        Thread.sleep(FunctionPublic.str2int(SelfGalleryView.f(this.a).getStyle_playDuration()));
        if (SelfGalleryView.h(this.a) != null)
        {
          Message localMessage = SelfGalleryView.h(this.a).obtainMessage();
          localMessage.what = 1;
          SelfGalleryView.h(this.a).sendMessage(localMessage);
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/mv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */