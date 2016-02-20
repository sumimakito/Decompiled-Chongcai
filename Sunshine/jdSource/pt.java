import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.TextView;
import cn.apppark.vertify.activity.share.QzoneShareAct;

public final class pt
  implements TextWatcher
{
  public pt(QzoneShareAct paramQzoneShareAct) {}
  
  public final void afterTextChanged(Editable paramEditable)
  {
    QzoneShareAct.c(this.a).setText("还可输入" + (QzoneShareAct.a(this.a) - QzoneShareAct.b(this.a).getText().toString().trim().length()) + "字");
  }
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/pt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */