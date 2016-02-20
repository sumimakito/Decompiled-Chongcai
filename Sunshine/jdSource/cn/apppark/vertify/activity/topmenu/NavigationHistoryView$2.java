package cn.apppark.vertify.activity.topmenu;

import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.vo.navigation.NavigationHistoryVo;
import cn.apppark.vertify.PageGroup;

class NavigationHistoryView$2
  implements View.OnClickListener
{
  NavigationHistoryView$2(NavigationHistoryView paramNavigationHistoryView) {}
  
  public void onClick(View paramView)
  {
    HQCHApplication.mainActivity.pageGroup.goNextPage("0", NavigationHistoryView.a(this.a).getnRightPageId(), true, NavigationHistoryView.a(this.a).getnRightPageType(), NavigationHistoryView.a(this.a).getnRightPageModuleType());
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/topmenu/NavigationHistoryView$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */