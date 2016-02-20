import android.annotation.SuppressLint;
import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.ImageView;
import cn.apppark.mcd.vo.buy.BuyLoginVo;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.persion.PersonInfo;
import cn.apppark.vertify.base.ClientPersionInfo;
import org.json.JSONException;
import org.json.JSONObject;

@SuppressLint({"HandlerLeak"})
public final class ot
  extends Handler
{
  private ot(PersonInfo paramPersonInfo) {}
  
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
      do
      {
        return;
        PersonInfo.c(this.a).dismiss();
      } while (!PersonInfo.a(this.a, str, "图片提交失败,请重试", "图片提交成功"));
      try
      {
        paramMessage = new JSONObject(str);
        paramMessage = paramMessage.getString("headFace") + "?t=" + System.currentTimeMillis();
        PersonInfo.d(this.a).updateUserHeadFace(paramMessage);
        PersonInfo.f(this.a).setImageBitmap(PersonInfo.e(this.a));
        return;
      }
      catch (JSONException paramMessage)
      {
        for (;;)
        {
          paramMessage.printStackTrace();
        }
      }
      PersonInfo.a(this.a).hidden();
      if (PersonInfo.b(this.a, str, "个人信息获取失败", null))
      {
        paramMessage = (BuyLoginVo)JsonParserBuy.parseJson2Vo(str, BuyLoginVo.class);
        PersonInfo.g(this.a).updateNikeNameRight(paramMessage.getNickNameRight());
        if ("0".equals(paramMessage.getNickNameRight()))
        {
          PersonInfo.h(this.a).setVisibility(4);
          return;
        }
        PersonInfo.h(this.a).setVisibility(0);
        return;
      }
      PersonInfo.i(this.a);
      return;
    } while (PersonInfo.e(this.a) == null);
    PersonInfo.a(this.a, 4);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ot.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */