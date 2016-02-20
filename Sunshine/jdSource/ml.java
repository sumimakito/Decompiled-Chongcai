import android.graphics.ColorMatrixColorFilter;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.free.SelfDefineItemVo;
import cn.apppark.vertify.PageGroup;
import cn.apppark.vertify.activity.free.self.SelfButtonView;

public final class ml
  implements View.OnTouchListener
{
  public ml(SelfButtonView paramSelfButtonView) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default: 
      SelfButtonView.c(this.a);
      return false;
    case 0: 
      if ("1".equals(SelfButtonView.a(this.a).getStyle_bgType()))
      {
        paramView.getBackground().setColorFilter(new ColorMatrixColorFilter(ButtonColorFilter.BT_SELECTED));
        paramView.getBackground().setAlpha(ButtonColorFilter.CLICKALPHA);
        paramView.setBackgroundDrawable(paramView.getBackground());
        return true;
      }
      paramView.getBackground().setColorFilter(new ColorMatrixColorFilter(ButtonColorFilter.BT_SELECTED));
      paramView.setBackgroundDrawable(paramView.getBackground());
      return true;
    }
    HQCHApplication.mainActivity.pageGroup.goNextPage(SelfButtonView.b(this.a).getSys_pageID(), SelfButtonView.a(this.a).getnPageId(), true, SelfButtonView.a(this.a).getnPageType(), SelfButtonView.a(this.a).getnPageModuleType());
    return true;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ml.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */