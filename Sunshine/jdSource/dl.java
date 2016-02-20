import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import cn.apppark.mcd.vo.buy.BuyOrderVo;
import cn.apppark.vertify.activity.buy.BuyMyOrderList;
import java.util.ArrayList;

public final class dl
  implements DialogInterface.OnClickListener
{
  public dl(BuyMyOrderList paramBuyMyOrderList) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    BuyMyOrderList.e(this.a).show();
    BuyMyOrderList.a(this.a, false);
    BuyMyOrderList.a(this.a, ((BuyOrderVo)BuyMyOrderList.d(this.a).get(BuyMyOrderList.f(this.a))).getId(), 3);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/dl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */