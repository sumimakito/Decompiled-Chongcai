import cn.apppark.vertify.network.request.HttpUploadFileRequestPool;
import cn.apppark.vertify.network.request.NetWorkRequest.OnSuccessListener;

public final class wu
  implements Runnable
{
  public wu(HttpUploadFileRequestPool paramHttpUploadFileRequestPool, String paramString) {}
  
  public final void run()
  {
    this.b.onSuccessListener.onResponse(this.a);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/wu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */