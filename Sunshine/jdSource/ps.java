import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.vertify.activity.service.LBSService;

public final class ps
  extends Handler
{
  private ps(LBSService paramLBSService) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    String str = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    default: 
      return;
    case 1: 
      LBSService.a(this.a, str);
      return;
    }
    LBSService.a(this.a, str);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ps.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */