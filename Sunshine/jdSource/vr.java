import android.os.Handler;
import android.os.Message;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.file.AssetsIO;
import cn.apppark.vertify.base.ClientInitInfoHelpler;
import cn.apppark.vertify.base.InitClient;
import java.io.IOException;
import java.util.ArrayList;

public final class vr
  implements Runnable
{
  public vr(InitClient paramInitClient) {}
  
  public final void run()
  {
    InitClient.a(this.a, true);
    int i = 0;
    for (;;)
    {
      if (i < InitClient.h(this.a).size()) {
        try
        {
          InitClient.a(this.a, i);
          InitClient.f(this.a).copyToSdcard(InitClient.e(this.a), (String)InitClient.h(this.a).get(i));
          Message localMessage1 = new Message();
          localMessage1.what = 1;
          this.a.a.sendMessage(localMessage1);
          i += 1;
        }
        catch (IOException localIOException)
        {
          for (;;)
          {
            localIOException.printStackTrace();
            this.a.a.obtainMessage(3).sendToTarget();
            InitClient.a(this.a, false);
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


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/vr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */