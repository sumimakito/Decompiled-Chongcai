import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.mcd.vo.buy.BuyBaseAreaVo;
import cn.apppark.vertify.activity.buy.BuySelArea;
import cn.apppark.vertify.activity.buy.BuySelCity;
import java.util.ArrayList;

public final class fp
  implements AdapterView.OnItemClickListener
{
  public fp(BuySelCity paramBuySelCity) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (((BuyBaseAreaVo)BuySelCity.a(this.a).get(paramInt)).isNext() == true)
    {
      paramAdapterView = new Intent(BuySelCity.b(this.a), BuySelArea.class);
      paramAdapterView.putExtra("cityid", ((BuyBaseAreaVo)BuySelCity.a(this.a).get(paramInt)).getCity_id());
      paramAdapterView.putExtra("name", BuySelCity.c(this.a) + ((BuyBaseAreaVo)BuySelCity.a(this.a).get(paramInt)).getName());
      this.a.startActivityForResult(paramAdapterView, 1);
      return;
    }
    paramView = new Intent();
    paramAdapterView = ((BuyBaseAreaVo)BuySelCity.a(this.a).get(paramInt)).getName();
    int i = paramAdapterView.length();
    if (paramAdapterView.contains(".")) {}
    for (paramAdapterView = paramAdapterView.substring(paramAdapterView.lastIndexOf(".") + 1, i);; paramAdapterView = "")
    {
      paramView.putExtra("name", BuySelCity.c(this.a) + paramAdapterView);
      paramView.putExtra("id", ((BuyBaseAreaVo)BuySelCity.a(this.a).get(paramInt)).getCity_id());
      this.a.setResult(1, paramView);
      this.a.finish();
      return;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/fp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */