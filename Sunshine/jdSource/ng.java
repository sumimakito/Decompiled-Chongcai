import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.free.SelfGalleryItemVo;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView4013;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView4013.PublicHandler;

public final class ng
  implements Runnable
{
  public ng(SelfGalleryView4013 paramSelfGalleryView4013) {}
  
  public final void run()
  {
    while (!SelfGalleryView4013.f(this.a)) {
      try
      {
        Thread.sleep(FunctionPublic.str2int(SelfGalleryView4013.g(this.a).getStyle_playDuration()));
        if (SelfGalleryView4013.h(this.a) != null) {
          SelfGalleryView4013.h(this.a).sendEmptyMessage(1);
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ng.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */