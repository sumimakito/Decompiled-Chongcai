import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import cn.apppark.vertify.PageGroup;

public final class at
  implements DialogInterface.OnClickListener
{
  public at(PageGroup paramPageGroup) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.mainActivity.finish = true;
    this.a.finish();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/at.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */