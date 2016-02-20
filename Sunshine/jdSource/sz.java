import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.tieba.TMyHistory;

public final class sz
  extends Handler
{
  private sz(TMyHistory paramTMyHistory) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    default: 
      return;
    }
    TMyHistory.c(this.a).hidden();
    TMyHistory.d(this.a);
    TMyHistory.e(this.a);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/sz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */