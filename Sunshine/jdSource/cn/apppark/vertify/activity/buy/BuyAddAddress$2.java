package cn.apppark.vertify.activity.buy;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.util.PublicUtil;

class BuyAddAddress$2
  implements View.OnClickListener
{
  BuyAddAddress$2(BuyAddAddress paramBuyAddAddress) {}
  
  public void onClick(View paramView)
  {
    if ("".equals(BuyAddAddress.c(this.a).getText().toString().trim())) {
      HQCHApplication.instance.initToast("请输入收货人", 0);
    }
    do
    {
      return;
      if ("".equals(BuyAddAddress.d(this.a).getText().toString().trim()))
      {
        HQCHApplication.instance.initToast("请输入手机号码", 0);
        return;
      }
      if (!PublicUtil.chekMobilePhone(BuyAddAddress.d(this.a).getText().toString().trim()))
      {
        HQCHApplication.instance.initToast("请输入正确的手机号码", 0);
        return;
      }
      if ("".equals(BuyAddAddress.e(this.a).getText().toString().trim()))
      {
        HQCHApplication.instance.initToast("请选择地区", 0);
        return;
      }
      if ("".equals(BuyAddAddress.f(this.a).getText().toString().trim()))
      {
        HQCHApplication.instance.initToast("请输入详细地址", 0);
        return;
      }
    } while (!BuyAddAddress.g(this.a));
    BuyAddAddress.a(this.a, false);
    BuyAddAddress.h(this.a).setVisibility(8);
    BuyAddAddress.i(this.a).show();
    BuyAddAddress.a(this.a, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyAddAddress$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */