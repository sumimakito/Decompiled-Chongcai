package cn.apppark.vertify.activity.free.dyn;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.vo.dyn.Dyn5007Vo;
import com.google.gson.JsonElement;

class DynSearch5007$1
  implements View.OnClickListener
{
  DynSearch5007$1(DynSearch5007 paramDynSearch5007) {}
  
  public void onClick(View paramView)
  {
    paramView = new Intent(HQCHApplication.mainActivity, DynSearch5007Act.class);
    paramView.putExtra("param", DynSearch5007.a(this.a).getSource().toString());
    HQCHApplication.mainActivity.startActivity(paramView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/DynSearch5007$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */