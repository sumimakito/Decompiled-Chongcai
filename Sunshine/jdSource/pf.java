import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import cn.apppark.vertify.activity.persion.SetInfo;

public final class pf
  implements DialogInterface.OnClickListener
{
  public pf(SetInfo paramSetInfo) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    SetInfo.b(this.a, "缓存清除中", 0);
    new pi(this.a, null).start();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/pf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */