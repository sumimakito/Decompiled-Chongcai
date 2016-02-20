import cn.apppark.vertify.activity.free.dyn.DynMsgGalleryText5010;

public final class ho
  implements Runnable
{
  public ho(DynMsgGalleryText5010 paramDynMsgGalleryText5010) {}
  
  public final void run()
  {
    while (!DynMsgGalleryText5010.m(this.a)) {
      try
      {
        Thread.sleep(4000L);
        if (DynMsgGalleryText5010.d(this.a) != null) {
          DynMsgGalleryText5010.d(this.a).sendEmptyMessage(1);
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ho.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */