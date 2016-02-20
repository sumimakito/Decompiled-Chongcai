import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.widget.Toast;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.widget.DialogProgress;
import cn.apppark.vertify.network.VersionUpdateManager;

public final class wp
  implements DialogInterface.OnCancelListener
{
  public wp(VersionUpdateManager paramVersionUpdateManager) {}
  
  public final void onCancel(DialogInterface paramDialogInterface)
  {
    VersionUpdateManager.b(this.a).dismiss();
    VersionUpdateManager.a(this.a, Boolean.valueOf(true));
    Toast.makeText(HQCHApplication.mainActivity, "更新取消", 0).show();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/wp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */