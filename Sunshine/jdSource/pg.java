import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.vertify.activity.persion.SetInfo;

public final class pg
  extends Handler
{
  public pg(SetInfo paramSetInfo) {}
  
  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default: 
      return;
    }
    SetInfo.c(this.a).setText(PublicUtil.formatSizeStr(this.a.a));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/pg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */