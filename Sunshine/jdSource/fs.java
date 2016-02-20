import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.mcd.vo.buy.BuyBaseAreaVo;
import cn.apppark.vertify.activity.buy.BuySelCity;
import cn.apppark.vertify.activity.buy.BuySelProvience;
import java.util.ArrayList;

public final class fs
  implements AdapterView.OnItemClickListener
{
  public fs(BuySelProvience paramBuySelProvience) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    BuySelProvience.province_id = ((BuyBaseAreaVo)BuySelProvience.a(this.a).get(paramInt)).getProvience_id();
    BuySelProvience.province_name = ((BuyBaseAreaVo)BuySelProvience.a(this.a).get(paramInt)).getName();
    if (("710000".equals(BuySelProvience.province_id)) || ("810000".equals(BuySelProvience.province_id)) || ("820000".equals(BuySelProvience.province_id)) || ("830000".equals(BuySelProvience.province_id)))
    {
      paramAdapterView = new Intent();
      paramAdapterView.putExtra("name", BuySelProvience.province_name);
      paramAdapterView.putExtra("id", BuySelProvience.province_id);
      this.a.setResult(1, paramAdapterView);
      this.a.finish();
      return;
    }
    paramAdapterView = new Intent(BuySelProvience.b(this.a), BuySelCity.class);
    paramAdapterView.putExtra("id", BuySelProvience.province_id);
    paramAdapterView.putExtra("name", BuySelProvience.province_name);
    this.a.startActivityForResult(paramAdapterView, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/fs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */