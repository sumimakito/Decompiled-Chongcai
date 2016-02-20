package cn.apppark.vertify.activity.buy;

import cn.apppark.vertify.activity.BaseAct;
import cn.apppark.vertify.base.ClientPersionInfo;

public class BuyBaseAct
  extends BaseAct
{
  protected ClientPersionInfo info;
  
  protected ClientPersionInfo getInfo()
  {
    if (this.info == null) {
      this.info = new ClientPersionInfo(this.context);
    }
    return this.info;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyBaseAct.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */