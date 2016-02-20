package cn.apppark.vertify.activity.free.dyn;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.vo.dyn.DynProductGroupDetailVo;

class SProductBase$4
  implements View.OnClickListener
{
  SProductBase$4(SProductBase paramSProductBase) {}
  
  public void onClick(View paramView)
  {
    paramView = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + SProductBase.e(this.a).getTelnumber()));
    paramView.setFlags(268435456);
    HQCHApplication.getInstance().startActivity(paramView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/SProductBase$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */