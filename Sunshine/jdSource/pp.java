import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.TextView;
import cn.apppark.vertify.activity.persion.UpdateInfo;

public final class pp
  implements TextWatcher
{
  private CharSequence b;
  private int c;
  private int d;
  
  public pp(UpdateInfo paramUpdateInfo) {}
  
  public final void afterTextChanged(Editable paramEditable)
  {
    this.c = UpdateInfo.a(this.a).getSelectionStart();
    this.d = UpdateInfo.a(this.a).getSelectionEnd();
    if (this.b.length() > 16)
    {
      paramEditable.delete(this.c - 1, this.d);
      int i = this.c;
      UpdateInfo.a(this.a).setText(paramEditable);
      UpdateInfo.a(this.a).setSelection(i);
      return;
    }
    UpdateInfo.b(this.a).setText(16 - this.b.length());
  }
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    this.b = paramCharSequence;
  }
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/pp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */