import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import cn.apppark.vertify.network.FileDownLoader;
import cn.apppark.vertify.network.FileUpdater;

public final class wf
  implements DialogInterface.OnClickListener
{
  public wf(FileUpdater paramFileUpdater) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    new FileDownLoader(this.a.mActivity, FileUpdater.a(this.a)).execute(new Void[0]);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/wf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */