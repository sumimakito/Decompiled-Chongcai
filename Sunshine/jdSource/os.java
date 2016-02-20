import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.PopupWindow;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.vertify.activity.persion.PersonInfo;

public final class os
  extends PopupWindow
{
  public os(PersonInfo paramPersonInfo, Context paramContext)
  {
    super(paramContext);
    paramContext = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903091, null);
    PersonInfo.a(paramPersonInfo, (Button)paramContext.findViewById(2131362186));
    PersonInfo.b(paramPersonInfo, (Button)paramContext.findViewById(2131362187));
    PersonInfo.c(paramPersonInfo, (Button)paramContext.findViewById(2131362188));
    ButtonColorFilter.setButtonFocusChanged(PersonInfo.k(paramPersonInfo));
    ButtonColorFilter.setButtonFocusChanged(PersonInfo.l(paramPersonInfo));
    ButtonColorFilter.setButtonFocusChanged(PersonInfo.m(paramPersonInfo));
    PersonInfo.m(paramPersonInfo).setOnClickListener(paramPersonInfo);
    PersonInfo.l(paramPersonInfo).setOnClickListener(paramPersonInfo);
    PersonInfo.k(paramPersonInfo).setOnClickListener(paramPersonInfo);
    setBackgroundDrawable(null);
    setContentView(paramContext);
    setWidth(-1);
    setHeight(-2);
    setOutsideTouchable(true);
    setTouchable(true);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/os.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */