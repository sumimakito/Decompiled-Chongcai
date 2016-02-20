import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import cn.apppark.vertify.activity.buy.BuyBuyCar;

public final class ca
  implements AdapterView.OnItemLongClickListener
{
  public ca(BuyBuyCar paramBuyBuyCar) {}
  
  public final boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.a.delCommodity(paramInt);
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ca.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */