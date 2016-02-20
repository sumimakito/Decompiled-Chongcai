import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import cn.apppark.vertify.base.InitClient;

public final class vp
  extends Handler
{
  public vp(InitClient paramInitClient) {}
  
  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    }
    for (;;)
    {
      super.handleMessage(paramMessage);
      return;
      if (InitClient.a(this.a) != 0)
      {
        InitClient.c(this.a).setText((InitClient.b(this.a) + 1) * 100 / InitClient.a(this.a) + "%");
        continue;
        this.a.initFinish();
        continue;
        this.a.setResult(-1);
        this.a.initFinish();
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/vp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */