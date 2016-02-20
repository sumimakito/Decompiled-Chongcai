import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import cn.apppark.vertify.activity.free.function.FunctionsSms;

public final class lv
  implements DialogInterface.OnClickListener
{
  public lv(FunctionsSms paramFunctionsSms) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.sendSmsMainEnter();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/lv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */