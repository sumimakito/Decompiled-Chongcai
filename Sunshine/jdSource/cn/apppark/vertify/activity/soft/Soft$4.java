package cn.apppark.vertify.activity.soft;

import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

class Soft$4
  implements View.OnClickListener
{
  Soft$4(Soft paramSoft) {}
  
  public void onClick(View paramView)
  {
    Soft.j(this.a).setCurrentItem(1, true);
    Soft.a(this.a).setBackgroundResource(2130837839);
    Soft.b(this.a).setBackgroundResource(2130837825);
    Soft.c(this.a).setBackgroundResource(2130837834);
    if ((Soft.d(this.a) == null) && (Soft.e(this.a)))
    {
      Soft.a(this.a, false);
      Soft.a(this.a, Soft.f(this.a), 6, "downTop", true, "down");
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/soft/Soft$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */