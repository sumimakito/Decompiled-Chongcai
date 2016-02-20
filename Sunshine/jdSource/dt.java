import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import cn.apppark.vertify.activity.buy.BuyOrderDetail;

public final class dt
  implements DialogInterface.OnClickListener
{
  public dt(BuyOrderDetail paramBuyOrderDetail) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    BuyOrderDetail.c(this.a).show();
    BuyOrderDetail.d(this.a, 4);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/dt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */