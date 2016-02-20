package cn.apppark.vertify.activity;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.vo.base.FreePageVo;

class FreeAct$3
  implements View.OnClickListener
{
  FreeAct$3(FreeAct paramFreeAct) {}
  
  public void onClick(View paramView)
  {
    if ((this.a.pageVo.getData_password().equals(this.a.d.getText().toString())) || (YYGYContants.getSuperPass().equals(this.a.d.getText().toString())))
    {
      if (this.a.a != null) {
        this.a.a.dismiss();
      }
      FreeAct.a(this.a);
      return;
    }
    HQCHApplication.instance.initToast("对不起,密码错误", 0);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/FreeAct$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */