import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import cn.apppark.mcd.vo.buy.BuyOrderVo;
import cn.apppark.vertify.activity.buy.BuyBuyCar;
import java.util.ArrayList;

public final class cb
  implements DialogInterface.OnClickListener
{
  public cb(BuyBuyCar paramBuyBuyCar) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    BuyBuyCar.a(this.a, false);
    BuyBuyCar.e(this.a).show();
    BuyBuyCar.b(this.a, ((BuyOrderVo)BuyBuyCar.a(this.a).get(BuyBuyCar.g(this.a))).getId(), 3);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */