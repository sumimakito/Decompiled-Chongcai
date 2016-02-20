import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.mcd.vo.buy.BuyCollectionVo;
import cn.apppark.vertify.activity.buy.BuyProductCollection;
import cn.apppark.vertify.activity.buy.BuyProductDetail;
import java.util.ArrayList;

public final class ew
  implements AdapterView.OnItemClickListener
{
  public ew(BuyProductCollection paramBuyProductCollection) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = new Intent(this.a, BuyProductDetail.class);
    paramAdapterView.putExtra("id", ((BuyCollectionVo)BuyProductCollection.b(this.a).get(paramInt)).getProductId());
    this.a.startActivity(paramAdapterView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ew.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */