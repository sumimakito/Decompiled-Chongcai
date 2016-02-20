package cn.apppark.vertify.activity.bottommenu;

import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.HorizontalScrollView;

class NavigationTab2$4
  implements View.OnClickListener
{
  NavigationTab2$4(NavigationTab2 paramNavigationTab2) {}
  
  public void onClick(View paramView)
  {
    int i = NavigationTab2.b(this.a).getScrollX();
    NavigationTab2.b(this.a).smoothScrollTo(i + NavigationTab2.c(this.a) * 2, 0);
    NavigationTab2.a(this.a).sendMessageDelayed(NavigationTab2.a(this.a).obtainMessage(1), 200L);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/bottommenu/NavigationTab2$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */