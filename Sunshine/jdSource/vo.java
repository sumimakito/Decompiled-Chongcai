import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.PopupWindow;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.vertify.base.ImagePreview;

public final class vo
  extends PopupWindow
{
  public vo(ImagePreview paramImagePreview, Context paramContext)
  {
    super(paramContext);
    paramContext = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903123, null);
    ImagePreview.a(paramImagePreview, (Button)paramContext.findViewById(2131362409));
    ImagePreview.b(paramImagePreview, (Button)paramContext.findViewById(2131362410));
    ButtonColorFilter.setButtonFocusChanged(ImagePreview.g(paramImagePreview));
    ButtonColorFilter.setButtonFocusChanged(ImagePreview.h(paramImagePreview));
    ImagePreview.h(paramImagePreview).setOnClickListener(paramImagePreview);
    ImagePreview.g(paramImagePreview).setOnClickListener(paramImagePreview);
    setAnimationStyle(2131099664);
    setBackgroundDrawable(null);
    setContentView(paramContext);
    setWidth(-1);
    setHeight(-2);
    setOutsideTouchable(true);
    setTouchable(true);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/vo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */