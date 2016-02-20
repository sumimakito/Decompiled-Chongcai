import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.vertify.activity.buy.BuyMyCenter;
import org.json.JSONException;
import org.json.JSONObject;

@SuppressLint({"HandlerLeak"})
public final class dg
  extends Handler
{
  private dg(BuyMyCenter paramBuyMyCenter) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    String str = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    }
    for (;;)
    {
      return;
      try
      {
        paramMessage = new JSONObject(str).getString("notCommentCount");
        if (paramMessage != null) {
          if (StringUtil.isNotZero(paramMessage))
          {
            BuyMyCenter.a(this.a).setVisibility(0);
            BuyMyCenter.a(this.a).setText(paramMessage);
            return;
          }
        }
      }
      catch (JSONException paramMessage)
      {
        paramMessage.printStackTrace();
        return;
      }
    }
    BuyMyCenter.a(this.a).setVisibility(8);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/dg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */