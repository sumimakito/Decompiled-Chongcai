import cn.apppark.vertify.network.request.HttpPostRequestPool;
import cn.apppark.vertify.network.request.NetWorkRequest.OnErrorListener;

public final class wr
  implements Runnable
{
  public wr(HttpPostRequestPool paramHttpPostRequestPool, String paramString) {}
  
  public final void run()
  {
    this.b.onErrorListener.onErrorResponse(this.a);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/wr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */