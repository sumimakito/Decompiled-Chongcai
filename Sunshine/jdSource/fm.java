import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.mcd.vo.buy.BuyBaseAreaVo;
import cn.apppark.vertify.activity.buy.BuySelArea;
import java.util.ArrayList;

public final class fm
  implements AdapterView.OnItemClickListener
{
  public fm(BuySelArea paramBuySelArea) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = ((BuyBaseAreaVo)BuySelArea.a(this.a).get(paramInt)).getName();
    int i = 0;
    int j = paramAdapterView.length();
    if (paramAdapterView.contains(".")) {
      i = paramAdapterView.lastIndexOf(".") + 1;
    }
    paramView = new Intent();
    paramView.putExtra("name", (BuySelArea.b(this.a) + paramAdapterView.substring(i, j)).replace("全市", ""));
    paramView.putExtra("id", ((BuyBaseAreaVo)BuySelArea.a(this.a).get(paramInt)).getId());
    this.a.setResult(1, paramView);
    this.a.finish();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/fm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */