import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.vo.navigation.NavigationTabItemVo;
import cn.apppark.vertify.PageGroup;
import cn.apppark.vertify.activity.bottommenu.NavigationTab2;
import java.util.ArrayList;

public final class bm
  implements View.OnTouchListener
{
  public bm(NavigationTab2 paramNavigationTab2) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
    {
      paramView = (NavigationTabItemVo)paramView.getTag(2131230739);
      NavigationTab2.a(this.a, NavigationTab2.d(this.a).indexOf(paramView));
      paramMotionEvent = paramView.getnPageId();
      if (paramMotionEvent != null)
      {
        NavigationTab2.a(this.a, paramMotionEvent);
        this.a.updateTabBar();
        HQCHApplication.mainActivity.pageGroup.goNextPage(paramMotionEvent, paramMotionEvent, false, paramView.getnPageType(), paramView.getnPageModuleType());
      }
    }
    else
    {
      return false;
    }
    this.a.updateTabBar();
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/bm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */