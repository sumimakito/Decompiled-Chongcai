import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import cn.apppark.vertify.activity.buy.BuyProductDetail;

public final class ff
  implements AdapterView.OnItemSelectedListener
{
  public ff(BuyProductDetail paramBuyProductDetail) {}
  
  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (BuyProductDetail.a(this.a).length > 1) {
      this.a.changePoint(paramInt);
    }
  }
  
  public final void onNothingSelected(AdapterView<?> paramAdapterView) {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ff.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */