import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import cn.apppark.vertify.activity.buy.BuyOrderDetail;

public final class ds
  implements DialogInterface.OnClickListener
{
  public ds(BuyOrderDetail paramBuyOrderDetail) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    BuyOrderDetail.c(this.a).show();
    BuyOrderDetail.c(this.a, 3);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ds.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */