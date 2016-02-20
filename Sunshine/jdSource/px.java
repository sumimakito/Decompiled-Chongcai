import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.TextView;
import cn.apppark.vertify.activity.share.SinaShareAct;

public final class px
  implements TextWatcher
{
  public px(SinaShareAct paramSinaShareAct) {}
  
  public final void afterTextChanged(Editable paramEditable)
  {
    SinaShareAct.b(this.a).setText("还可输入" + (140 - SinaShareAct.a(this.a).getText().toString().trim().length()) + "字");
  }
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/px.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */