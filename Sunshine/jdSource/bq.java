import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.vertify.activity.buy.BuyAddAddress;
import cn.apppark.vertify.activity.buy.BuyAddressList;
import java.io.Serializable;
import java.util.ArrayList;

public final class bq
  implements AdapterView.OnItemClickListener
{
  public bq(BuyAddressList paramBuyAddressList) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if ((BuyAddressList.f(this.a) == 1) && (!BuyAddressList.c(this.a)))
    {
      paramAdapterView = new Intent();
      paramAdapterView.putExtra("address", (Serializable)BuyAddressList.b(this.a).get(paramInt));
      this.a.setResult(1, paramAdapterView);
      this.a.finish();
      return;
    }
    paramAdapterView = new Intent(BuyAddressList.a(this.a), BuyAddAddress.class);
    paramAdapterView.putExtra("addressvo", (Serializable)BuyAddressList.b(this.a).get(paramInt));
    this.a.startActivityForResult(paramAdapterView, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/bq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */