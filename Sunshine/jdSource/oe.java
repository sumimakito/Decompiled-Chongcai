import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.vo.buy.BuyCollectionVo;
import cn.apppark.vertify.activity.buy.BuyProductDetail;
import cn.apppark.vertify.activity.persion.PersionCollection;
import java.util.ArrayList;

public final class oe
  implements AdapterView.OnItemClickListener
{
  public oe(PersionCollection paramPersionCollection) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = new Intent(HQCHApplication.mainActivity, BuyProductDetail.class);
    paramAdapterView.putExtra("id", ((BuyCollectionVo)PersionCollection.e(this.a).get(paramInt - 1)).getProductId());
    this.a.startActivity(paramAdapterView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/oe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */