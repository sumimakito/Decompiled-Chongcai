import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.vo.buy.BuyOrderVo;
import cn.apppark.vertify.activity.buy.BuyBuyCar;
import cn.apppark.vertify.activity.buy.BuyProductDetail;
import java.util.ArrayList;

public final class bz
  implements AdapterView.OnItemClickListener
{
  public bz(BuyBuyCar paramBuyBuyCar) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = new Intent(HQCHApplication.mainActivity, BuyProductDetail.class);
    paramAdapterView.putExtra("id", ((BuyOrderVo)BuyBuyCar.a(this.a).get(paramInt)).getProductId());
    this.a.startActivity(paramAdapterView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/bz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */