package cn.apppark.vertify.activity.free.dyn;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.LinearLayout;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.vertify.base.ClientPersionInfo;

class DynSubComment$9
  implements View.OnClickListener
{
  DynSubComment$9(DynSubComment paramDynSubComment) {}
  
  public void onClick(View paramView)
  {
    if ("".equals(DynSubComment.b(this.a).getText().toString().trim()))
    {
      DynSubComment.b(this.a, "请输入评论", 0);
      return;
    }
    if (DynSubComment.f(this.a).getUserId() != null)
    {
      DynSubComment.c(this.a).setVisibility(8);
      DynSubComment.d(this.a).setVisibility(0);
      DynSubComment.i(this.a);
      return;
    }
    DynSubComment.c(this.a, "请登录后发表评论", 0);
    paramView = new Intent(this.a, YYGYContants.getLoginClass());
    this.a.startActivityForResult(paramView, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/DynSubComment$9.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */