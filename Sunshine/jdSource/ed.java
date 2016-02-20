import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import cn.apppark.vertify.activity.buy.BuyPersonMsg;
import org.json.JSONException;
import org.json.JSONObject;

@SuppressLint({"HandlerLeak"})
public final class ed
  extends Handler
{
  private ed(BuyPersonMsg paramBuyPersonMsg) {}
  
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
        paramMessage = new JSONObject(str).getString("replyCount");
        if ((paramMessage != null) && (!"0".equals(paramMessage)))
        {
          BuyPersonMsg.a(this.a).setVisibility(0);
          BuyPersonMsg.a(this.a).setText(paramMessage);
          return;
        }
      }
      catch (JSONException paramMessage)
      {
        paramMessage.printStackTrace();
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ed.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */