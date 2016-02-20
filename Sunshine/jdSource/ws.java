import cn.apppark.vertify.network.request.HttpPostRequestPool;
import cn.apppark.vertify.network.request.NetWorkRequest.OnSuccessListener;

public final class ws
  implements Runnable
{
  public ws(HttpPostRequestPool paramHttpPostRequestPool, String paramString) {}
  
  public final void run()
  {
    this.b.onSuccessListener.onResponse(this.a);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ws.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */