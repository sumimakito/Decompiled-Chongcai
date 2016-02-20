import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import cn.apppark.vertify.network.VersionUpdateManager;

public final class wo
  implements DialogInterface.OnClickListener
{
  public wo(VersionUpdateManager paramVersionUpdateManager) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    VersionUpdateManager.d(this.a);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/wo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */