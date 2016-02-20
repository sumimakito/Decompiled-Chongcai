import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import cn.apppark.mcd.widget.TCellLinearLayout;

public final class ak
  implements DialogInterface.OnClickListener
{
  public ak(TCellLinearLayout paramTCellLinearLayout) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      TCellLinearLayout.a(this.a, 0, 1);
      return;
    }
    TCellLinearLayout.a(this.a, 2);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */