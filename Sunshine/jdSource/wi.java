import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import cn.apppark.vertify.network.LoadingDialog;

public final class wi
  implements DialogInterface.OnCancelListener
{
  public wi(LoadingDialog paramLoadingDialog) {}
  
  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.a.cancel(true);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/wi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */