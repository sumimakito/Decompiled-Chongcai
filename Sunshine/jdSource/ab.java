import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.Button;
import android.widget.EditText;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.widget.MyEditText2;

public final class ab
  implements View.OnFocusChangeListener
{
  public ab(MyEditText2 paramMyEditText2) {}
  
  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if ((paramBoolean) && (StringUtil.isNotNull(MyEditText2.a(this.a).getText().toString())))
    {
      MyEditText2.b(this.a).setVisibility(0);
      return;
    }
    MyEditText2.b(this.a).setVisibility(4);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */