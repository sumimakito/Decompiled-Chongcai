package cn.apppark.vertify.activity.soft;

import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

class Soft$5
  implements View.OnClickListener
{
  Soft$5(Soft paramSoft) {}
  
  public void onClick(View paramView)
  {
    Soft.j(this.a).setCurrentItem(2, true);
    Soft.a(this.a).setBackgroundResource(2130837839);
    Soft.b(this.a).setBackgroundResource(2130837824);
    Soft.c(this.a).setBackgroundResource(2130837835);
    if ((Soft.g(this.a) == null) && (Soft.h(this.a)))
    {
      Soft.b(this.a, false);
      Soft.a(this.a, Soft.i(this.a), 9, "need", true, "must");
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/soft/Soft$5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */