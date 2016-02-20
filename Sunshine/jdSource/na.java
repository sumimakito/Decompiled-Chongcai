import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.free.SelfGalleryItemVo;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView4011;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView4011.PublicHandler;

public final class na
  implements Runnable
{
  public na(SelfGalleryView4011 paramSelfGalleryView4011) {}
  
  public final void run()
  {
    while (!SelfGalleryView4011.d(this.a)) {
      try
      {
        Thread.sleep(FunctionPublic.str2int(SelfGalleryView4011.e(this.a).getStyle_playDuration()));
        if (SelfGalleryView4011.f(this.a) != null) {
          SelfGalleryView4011.f(this.a).sendEmptyMessage(1);
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/na.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */