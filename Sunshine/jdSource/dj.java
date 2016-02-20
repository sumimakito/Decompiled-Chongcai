import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.mcd.vo.buy.BuyOrderVo;
import cn.apppark.vertify.activity.buy.BuyMyOrderList;
import cn.apppark.vertify.activity.buy.BuyOrderDetail;
import java.util.ArrayList;

public final class dj
  implements AdapterView.OnItemClickListener
{
  public dj(BuyMyOrderList paramBuyMyOrderList) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = new Intent(BuyMyOrderList.c(this.a), BuyOrderDetail.class);
    paramAdapterView.putExtra("id", ((BuyOrderVo)BuyMyOrderList.d(this.a).get(paramInt - 1)).getId());
    paramAdapterView.putExtra("orderstatus", ((BuyOrderVo)BuyMyOrderList.d(this.a).get(paramInt - 1)).getStatus());
    this.a.startActivityForResult(paramAdapterView, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/dj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */