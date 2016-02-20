import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.vertify.activity.persion.PersionMyTieBa;

public final class op
  extends Handler
{
  private op(PersionMyTieBa paramPersionMyTieBa) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    String str = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    default: 
      return;
    }
    PersionMyTieBa.a(this.a, str);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/op.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */