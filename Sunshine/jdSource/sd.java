import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.EditText;
import android.widget.RelativeLayout;
import cn.apppark.mcd.widget.TCellLinearLayout;
import cn.apppark.vertify.activity.tieba.TEdit;

public final class sd
  extends Handler
{
  private sd(TEdit paramTEdit) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    String str = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    default: 
    case 4: 
    case 5: 
      do
      {
        do
        {
          return;
          TEdit.g(this.a).dismiss();
        } while (!TEdit.a(this.a, str, this.a.getText(2131230787).toString(), this.a.getText(2131230788).toString()));
        TEdit.h(this.a).setText("");
        TEdit.i(this.a).setText("");
        TEdit.j(this.a).removeAllCell();
        this.a.setResult(1);
        this.a.finish();
        return;
        TEdit.k(this.a).dismiss();
      } while (!TEdit.b(this.a, str, "举报失败", "举报成功"));
      TEdit.h(this.a).setText("");
      TEdit.i(this.a).setText("");
      TEdit.j(this.a).removeAllCell();
      this.a.finish();
      return;
    }
    if (paramMessage.arg1 == 1)
    {
      if (TEdit.l(this.a)) {
        TEdit.m(this.a).setVisibility(0);
      }
      while (TEdit.n(this.a))
      {
        TEdit.o(this.a).setVisibility(0);
        return;
        TEdit.m(this.a).setVisibility(8);
      }
      TEdit.o(this.a).setVisibility(8);
      return;
    }
    TEdit.o(this.a).setVisibility(8);
    TEdit.m(this.a).setVisibility(8);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/sd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */