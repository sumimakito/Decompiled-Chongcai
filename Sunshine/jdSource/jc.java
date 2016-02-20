import cn.apppark.vertify.activity.free.dyn.DynProductGalleryText5013;

public final class jc
  implements Runnable
{
  public jc(DynProductGalleryText5013 paramDynProductGalleryText5013) {}
  
  public final void run()
  {
    while (!DynProductGalleryText5013.o(this.a)) {
      try
      {
        Thread.sleep(4000L);
        if (DynProductGalleryText5013.d(this.a) != null) {
          DynProductGalleryText5013.d(this.a).sendEmptyMessage(3);
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/jc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */