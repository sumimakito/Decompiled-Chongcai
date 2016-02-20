import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import cn.apppark.vertify.activity.buy.BuyBaseParam;
import cn.apppark.vertify.activity.buy.BuyOrderDetail;
import cn.apppark.vertify.activity.buy.BuySelectRemark;

public final class dp
  implements DialogInterface.OnClickListener
{
  public dp(BuyOrderDetail paramBuyOrderDetail) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = new Intent(BuyOrderDetail.a(this.a), BuySelectRemark.class);
    paramDialogInterface.putExtra("operatetype", BuyBaseParam.OPERATE_GET_REASON);
    this.a.startActivityForResult(paramDialogInterface, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/dp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */