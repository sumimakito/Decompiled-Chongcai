import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.persion.PersonInfo2;
import cn.apppark.vertify.base.ClientPersionInfo;
import org.json.JSONException;
import org.json.JSONObject;

public final class ow
  extends Handler
{
  private ow(PersonInfo2 paramPersonInfo2) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    String str = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    }
    do
    {
      return;
      PersonInfo2.e(this.a).dismiss();
    } while (!PersonInfo2.a(this.a, str, "图片提交失败,请重试", "图片提交成功"));
    try
    {
      paramMessage = new JSONObject(str);
      paramMessage = paramMessage.getString("headFace") + "?t=" + System.currentTimeMillis();
      PersonInfo2.f(this.a).updateUserHeadFace(paramMessage);
      PersonInfo2.h(this.a).setImageBitmap(PersonInfo2.g(this.a));
      return;
    }
    catch (JSONException paramMessage)
    {
      for (;;)
      {
        paramMessage.printStackTrace();
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ow.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */