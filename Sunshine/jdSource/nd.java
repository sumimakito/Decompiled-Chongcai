import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.free.SelfGalleryItemVo;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView4012;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView4012.PublicHandler;

public final class nd
  implements Runnable
{
  public nd(SelfGalleryView4012 paramSelfGalleryView4012) {}
  
  public final void run()
  {
    while (!SelfGalleryView4012.f(this.a)) {
      try
      {
        Thread.sleep(FunctionPublic.str2int(SelfGalleryView4012.e(this.a).getStyle_playDuration()));
        if (SelfGalleryView4012.g(this.a) != null) {
          SelfGalleryView4012.g(this.a).sendEmptyMessage(1);
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/nd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */