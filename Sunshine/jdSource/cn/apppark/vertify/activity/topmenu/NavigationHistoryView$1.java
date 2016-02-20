package cn.apppark.vertify.activity.topmenu;

import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.navigation.NavigationHistoryVo;
import cn.apppark.vertify.PageGroup;

class NavigationHistoryView$1
  implements View.OnClickListener
{
  NavigationHistoryView$1(NavigationHistoryView paramNavigationHistoryView) {}
  
  public void onClick(View paramView)
  {
    switch (FunctionPublic.str2int(NavigationHistoryView.a(this.a).getStyle_nLeftFlag()))
    {
    default: 
      return;
    case 0: 
      HQCHApplication.mainActivity.pageGroup.pageBack();
      return;
    }
    HQCHApplication.mainActivity.pageGroup.goNextPage("0", NavigationHistoryView.a(this.a).getnLeftPageId(), true, "", "");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/topmenu/NavigationHistoryView$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */