import cn.apppark.vertify.base.PushWebView;

public final class vw
  implements Runnable
{
  public vw(PushWebView paramPushWebView) {}
  
  public final void run()
  {
    while (!PushWebView.e(this.a)) {
      try
      {
        Thread.sleep(2000L);
        PushWebView.f(this.a);
        if (PushWebView.g(this.a) >= PushWebView.h(this.a))
        {
          PushWebView.i(this.a).sendEmptyMessage(1);
          PushWebView.a(this.a, 0);
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/vw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */