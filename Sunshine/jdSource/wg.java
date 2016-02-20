import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import cn.apppark.vertify.network.FileUpdater;

public final class wg
  implements DialogInterface.OnDismissListener
{
  public wg(FileUpdater paramFileUpdater) {}
  
  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    FileUpdater.a(this.a, false);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/wg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */