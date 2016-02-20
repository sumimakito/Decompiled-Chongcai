import android.os.Handler;
import cn.apppark.vertify.network.VersionUpdateManager;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public final class wq
  implements Runnable
{
  public wq(VersionUpdateManager paramVersionUpdateManager) {}
  
  public final void run()
  {
    try
    {
      Object localObject1 = (HttpURLConnection)new URL(VersionUpdateManager.e(this.a)).openConnection();
      ((HttpURLConnection)localObject1).connect();
      int j = ((HttpURLConnection)localObject1).getContentLength();
      localObject1 = ((HttpURLConnection)localObject1).getInputStream();
      Object localObject2 = new File(VersionUpdateManager.f(this.a));
      if (!((File)localObject2).exists()) {
        ((File)localObject2).mkdir();
      }
      localObject2 = new FileOutputStream(new File(VersionUpdateManager.g(this.a)));
      byte[] arrayOfByte = new byte['Ѐ'];
      int i = 0;
      int k = ((InputStream)localObject1).read(arrayOfByte);
      i += k;
      VersionUpdateManager.a(this.a, (int)(i / j * 100.0F));
      VersionUpdateManager.h(this.a).sendEmptyMessage(1);
      if (k <= 0) {
        VersionUpdateManager.h(this.a).sendEmptyMessage(2);
      }
      for (;;)
      {
        ((InputStream)localObject1).close();
        ((FileOutputStream)localObject2).close();
        return;
        ((FileOutputStream)localObject2).write(arrayOfByte, 0, k);
        boolean bool = VersionUpdateManager.i(this.a).booleanValue();
        if (!bool) {
          break;
        }
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      VersionUpdateManager.h(this.a).sendEmptyMessage(3);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/wq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */