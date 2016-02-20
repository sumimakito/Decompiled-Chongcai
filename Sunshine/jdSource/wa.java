import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.widget.Toast;
import cn.apppark.vertify.network.FileDownLoader;

public final class wa
  implements DialogInterface.OnCancelListener
{
  public wa(FileDownLoader paramFileDownLoader) {}
  
  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.a.cancel(true);
    Toast.makeText(this.a.mActivity, this.a.mActivity.getString(2131230748), 0).show();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/wa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */