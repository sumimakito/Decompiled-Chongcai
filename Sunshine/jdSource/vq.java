import android.os.Handler;
import android.os.Message;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.file.AssetsIO;
import cn.apppark.vertify.base.ClientInitInfoHelpler;
import cn.apppark.vertify.base.InitClient;
import java.io.IOException;

public final class vq
  implements Runnable
{
  public vq(InitClient paramInitClient) {}
  
  public final void run()
  {
    InitClient.a(this.a, true);
    int i = 0;
    for (;;)
    {
      if (i < InitClient.d(this.a).length) {
        try
        {
          InitClient.a(this.a, i);
          InitClient.f(this.a).copyToSdcard(InitClient.e(this.a), InitClient.d(this.a)[i]);
          Message localMessage1 = new Message();
          localMessage1.what = 1;
          this.a.a.sendMessage(localMessage1);
          i += 1;
        }
        catch (IOException localIOException)
        {
          for (;;)
          {
            InitClient.a(this.a, false);
            this.a.a.obtainMessage(3).sendToTarget();
          }
        }
      }
    }
    if (InitClient.g(this.a)) {
      YYGYContants.mHelper.updateInitFlag();
    }
    Message localMessage2 = new Message();
    localMessage2.what = 2;
    this.a.a.sendMessage(localMessage2);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/vq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */