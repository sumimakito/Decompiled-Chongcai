import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import cn.apppark.vertify.activity.free.dyn.DynPersonCenter5006;
import org.json.JSONException;
import org.json.JSONObject;

@SuppressLint({"HandlerLeak"})
public final class ik
  extends Handler
{
  private ik(DynPersonCenter5006 paramDynPersonCenter5006) {}
  
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
    try
    {
      paramMessage = new JSONObject(str).getString("count");
      if ((paramMessage != null) && (!"0".equals(paramMessage)))
      {
        DynPersonCenter5006.b(this.a).setVisibility(0);
        DynPersonCenter5006.b(this.a).setText(paramMessage);
        return;
      }
    }
    catch (JSONException paramMessage)
    {
      paramMessage.printStackTrace();
      return;
    }
    DynPersonCenter5006.b(this.a).setVisibility(8);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ik.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */