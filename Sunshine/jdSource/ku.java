import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.PopupWindow;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.vertify.activity.free.dyn.PicGallery;

public final class ku
  extends PopupWindow
{
  public ku(PicGallery paramPicGallery, Context paramContext)
  {
    super(paramContext);
    paramContext = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903123, null);
    PicGallery.a(paramPicGallery, (Button)paramContext.findViewById(2131362409));
    PicGallery.b(paramPicGallery, (Button)paramContext.findViewById(2131362410));
    ButtonColorFilter.setButtonFocusChanged(PicGallery.d(paramPicGallery));
    ButtonColorFilter.setButtonFocusChanged(PicGallery.e(paramPicGallery));
    PicGallery.e(paramPicGallery).setOnClickListener(paramPicGallery);
    PicGallery.d(paramPicGallery).setOnClickListener(paramPicGallery);
    setAnimationStyle(2131099664);
    setBackgroundDrawable(null);
    setContentView(paramContext);
    setWidth(-1);
    setHeight(-2);
    setOutsideTouchable(true);
    setTouchable(true);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ku.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */