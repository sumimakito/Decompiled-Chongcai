import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.vo.base.PointVo;
import cn.apppark.mcd.vo.base.RetVo;
import cn.apppark.vertify.base.ClientInitInfoHelpler;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.PublicRequest;
import cn.apppark.vertify.network.request.WebServiceRequest;

public final class wk
  extends Handler
{
  private wk(PublicRequest paramPublicRequest) {}
  
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
        do
        {
          do
          {
            do
            {
              do
              {
                return;
              } while (!"1".equals(str));
              return;
            } while (!"{\"retFlag\":\"1\"}".equals(str));
            PublicRequest.delLogFile();
            return;
          } while (WebServiceRequest.WEB_ERROR.equals(str));
          paramMessage = (RetVo)JsonParserDyn.parseJson2Vo(str, RetVo.class);
        } while ((paramMessage == null) || (paramMessage.getRetFlag() != 1));
        if (("1".equals(paramMessage.getMemberStatus())) || ("2".equals(paramMessage.getMemberStatus()))) {
          new ClientPersionInfo(HQCHApplication.mainActivity).LoginOff();
        }
        if ("1".equals(paramMessage.getSmsEnabled()))
        {
          YYGYContants.mHelper.updateNeedSMS(false);
          return;
        }
        YYGYContants.mHelper.updateNeedSMS(true);
        paramMessage = new ClientPersionInfo(HQCHApplication.mainActivity);
      } while (paramMessage.getPhoneState() != 1);
      paramMessage.LoginOff();
      return;
      paramMessage = (PointVo)JsonParserDyn.parseJson2Vo(str, PointVo.class, "content", "point");
    } while (paramMessage == null);
    this.a.subLocation(paramMessage.getY() + "," + paramMessage.getX());
    YYGYContants.LOCATION = paramMessage.getX() + "," + paramMessage.getY();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/wk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */