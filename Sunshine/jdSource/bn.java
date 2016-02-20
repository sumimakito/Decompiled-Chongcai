import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.imge.CacheUtil;
import cn.apppark.mcd.vo.navigation.NavigationTabVo;
import cn.apppark.vertify.activity.bottommenu.NavigationTab2;
import java.util.ArrayList;

public final class bn
  extends Handler
{
  public bn(NavigationTab2 paramNavigationTab2) {}
  
  public final void handleMessage(Message paramMessage)
  {
    if (paramMessage.what == 1)
    {
      paramMessage = new Rect();
      NavigationTab2.b(this.a).getLocalVisibleRect(paramMessage);
      if (paramMessage.left > 10) {
        break label138;
      }
      NavigationTab2.f(this.a).setImageDrawable(HQCHApplication.cacheUtil.getCachedDrawable(NavigationTab2.e(this.a).getStyle_slipLeftPic()));
    }
    while (paramMessage.right >= (YYGYContants.screenWidth - FunctionPublic.str2int(NavigationTab2.e(this.a).getStyle_slipWidth()) * 2) / NavigationTab2.g(this.a) * NavigationTab2.d(this.a).size() - 10)
    {
      NavigationTab2.h(this.a).setImageDrawable(HQCHApplication.cacheUtil.getCachedDrawable(NavigationTab2.e(this.a).getStyle_slipRightPic()));
      return;
      label138:
      NavigationTab2.f(this.a).setImageDrawable(HQCHApplication.cacheUtil.getCachedDrawable(NavigationTab2.e(this.a).getStyle_slipLeftLightPic()));
    }
    NavigationTab2.h(this.a).setImageDrawable(HQCHApplication.cacheUtil.getCachedDrawable(NavigationTab2.e(this.a).getStyle_slipRightLightPic()));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/bn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */