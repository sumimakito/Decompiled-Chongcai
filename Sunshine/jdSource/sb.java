import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.Button;
import cn.apppark.vertify.activity.tieba.TEdit;

public final class sb
  implements View.OnFocusChangeListener
{
  public sb(TEdit paramTEdit) {}
  
  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      TEdit.b(this.a).setBackgroundResource(2130837897);
      TEdit.b(this.a).setClickable(false);
      TEdit.c(this.a).setBackgroundResource(2130837895);
      TEdit.c(this.a).setClickable(false);
      TEdit.d(this.a).setBackgroundResource(2130837869);
      TEdit.d(this.a).setClickable(false);
      return;
    }
    TEdit.b(this.a).setBackgroundResource(2130837898);
    TEdit.b(this.a).setClickable(true);
    TEdit.c(this.a).setBackgroundResource(2130837896);
    TEdit.c(this.a).setClickable(true);
    TEdit.d(this.a).setBackgroundResource(2130837870);
    TEdit.d(this.a).setClickable(true);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/sb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */