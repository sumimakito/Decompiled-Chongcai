import android.content.Context;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import cn.apppark.vertify.activity.free.dyn.DynSearch5007Act;
import java.util.TimerTask;

public final class jw
  extends TimerTask
{
  public jw(DynSearch5007Act paramDynSearch5007Act) {}
  
  public final void run()
  {
    ((InputMethodManager)DynSearch5007Act.a(this.a).getContext().getSystemService("input_method")).showSoftInput(DynSearch5007Act.a(this.a), 0);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/jw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */