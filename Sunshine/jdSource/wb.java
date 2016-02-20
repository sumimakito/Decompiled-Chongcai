import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import cn.apppark.ckj10185912.Main;
import cn.apppark.vertify.network.FileDownLoader;

public final class wb
  implements DialogInterface.OnClickListener
{
  public wb(FileDownLoader paramFileDownLoader) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = new Intent(this.a.mActivity, Main.class);
    paramDialogInterface.setFlags(67108864);
    this.a.mActivity.startActivity(paramDialogInterface);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/wb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */