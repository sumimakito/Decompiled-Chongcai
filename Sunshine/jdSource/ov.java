import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.PopupWindow;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.vertify.activity.persion.PersonInfo2;

public final class ov
  extends PopupWindow
{
  public ov(PersonInfo2 paramPersonInfo2, Context paramContext)
  {
    super(paramContext);
    paramContext = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903091, null);
    PersonInfo2.a(paramPersonInfo2, (Button)paramContext.findViewById(2131362186));
    PersonInfo2.b(paramPersonInfo2, (Button)paramContext.findViewById(2131362187));
    PersonInfo2.c(paramPersonInfo2, (Button)paramContext.findViewById(2131362188));
    ButtonColorFilter.setButtonFocusChanged(PersonInfo2.b(paramPersonInfo2));
    ButtonColorFilter.setButtonFocusChanged(PersonInfo2.c(paramPersonInfo2));
    ButtonColorFilter.setButtonFocusChanged(PersonInfo2.d(paramPersonInfo2));
    PersonInfo2.d(paramPersonInfo2).setOnClickListener(paramPersonInfo2);
    PersonInfo2.c(paramPersonInfo2).setOnClickListener(paramPersonInfo2);
    PersonInfo2.b(paramPersonInfo2).setOnClickListener(paramPersonInfo2);
    setAnimationStyle(2131099664);
    setBackgroundDrawable(null);
    setContentView(paramContext);
    setWidth(-1);
    setHeight(-2);
    setOutsideTouchable(true);
    setTouchable(true);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ov.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */