import android.os.Handler;
import android.os.Message;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import cn.apppark.vertify.base.PushWebView;

public final class vv
  extends Handler
{
  public vv(PushWebView paramPushWebView) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default: 
      return;
    }
    PushWebView.a(this.a).setVisibility(8);
    PushWebView.b(this.a).setVisibility(8);
    PushWebView.c(this.a).setVisibility(0);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/vv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */