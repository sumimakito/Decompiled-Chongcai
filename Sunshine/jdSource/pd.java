import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.mcd.vo.buy.BuyRegVo;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.persion.RegNewStep2;
import cn.apppark.vertify.base.ClientPersionInfo;

public final class pd
  extends Handler
{
  public pd(RegNewStep2 paramRegNewStep2) {}
  
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
        RegNewStep2.a(this.a).dismiss();
        RegNewStep2.a(this.a, (BuyRegVo)JsonParserBuy.parseJson2Vo(str, BuyRegVo.class));
        if (RegNewStep2.a(this.a, str, this.a.getText(2131230782).toString(), this.a.getText(2131230783).toString()))
        {
          if (RegNewStep2.b(this.a) != null)
          {
            paramMessage = new ClientPersionInfo(RegNewStep2.c(this.a));
            paramMessage.updateUserId(RegNewStep2.b(this.a).getId());
            paramMessage.updatePhone(RegNewStep2.b(this.a).getPhone());
            paramMessage.updateUserNikeName(RegNewStep2.b(this.a).getNickName());
            paramMessage.updateUserSex(RegNewStep2.b(this.a).getSex());
            paramMessage.updateUserEmail(RegNewStep2.b(this.a).getEmail());
            paramMessage.updateUserHeadFace(null);
          }
          this.a.setResult(1);
          this.a.finish();
          return;
        }
      } while (!"2".equals(RegNewStep2.b(this.a).getRetFlag()));
      this.a.setResult(-1);
      this.a.finish();
      return;
      RegNewStep2.d(this.a).dismiss();
      if (!RegNewStep2.b(this.a, str, "验证码获取失败,请重试", null)) {
        break;
      }
      RegNewStep2.a(this.a, (BuyRegVo)JsonParserBuy.parseJson2Vo(str, BuyRegVo.class));
    } while (RegNewStep2.b(this.a) == null);
    RegNewStep2.e(this.a).setImageUrl(RegNewStep2.b(this.a).getCodePngUrl());
    return;
    RegNewStep2.e(this.a).setImageUrl(null);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/pd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */