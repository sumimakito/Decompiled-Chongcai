import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import cn.apppark.vertify.network.VersionUpdateManager;

public final class wm
  implements DialogInterface.OnClickListener
{
  public wm(VersionUpdateManager paramVersionUpdateManager) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    VersionUpdateManager.d(this.a);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/wm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */