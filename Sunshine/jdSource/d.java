import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.util.FunctionPublic;

public final class d
  extends PopupWindow
{
  public d(Main paramMain, Context paramContext)
  {
    super(paramContext);
    paramContext = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903127, null);
    Main.a(paramMain, (LinearLayout)paramContext.findViewById(2131362423));
    Main.b(paramMain, (LinearLayout)paramContext.findViewById(2131362422));
    Main.c(paramMain, (LinearLayout)paramContext.findViewById(2131362424));
    Main.d(paramMain, (LinearLayout)paramContext.findViewById(2131362425));
    FunctionPublic.setSelBack(Main.a(paramMain), 2130837950);
    FunctionPublic.setSelBack(Main.b(paramMain), 2130837950);
    FunctionPublic.setSelBack(Main.c(paramMain), 2130837950);
    FunctionPublic.setSelBack(Main.d(paramMain), 2130837950);
    Main.a(paramMain).setOnClickListener(paramMain);
    Main.b(paramMain).setOnClickListener(paramMain);
    Main.c(paramMain).setOnClickListener(paramMain);
    Main.d(paramMain).setOnClickListener(paramMain);
    setAnimationStyle(2131099664);
    setBackgroundDrawable(new ColorDrawable(0));
    setContentView(paramContext);
    setWidth(-1);
    setHeight(-2);
    setOutsideTouchable(true);
    setTouchable(true);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */