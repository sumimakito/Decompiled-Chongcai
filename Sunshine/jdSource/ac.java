import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.widget.MyEditText2;

public final class ac
  implements TextWatcher
{
  public ac(MyEditText2 paramMyEditText2) {}
  
  public final void afterTextChanged(Editable paramEditable) {}
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if (StringUtil.isNotNull(paramCharSequence.toString()))
    {
      MyEditText2.b(this.a).setVisibility(0);
      return;
    }
    MyEditText2.b(this.a).setVisibility(4);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */