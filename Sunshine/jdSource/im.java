import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.vo.dyn.DynProductReturnVo;
import cn.apppark.vertify.activity.buy.BuyProductDetail;
import cn.apppark.vertify.activity.free.dyn.DynPorductList5004;
import java.util.ArrayList;

public final class im
  implements AdapterView.OnItemClickListener
{
  public im(DynPorductList5004 paramDynPorductList5004) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = new Intent(HQCHApplication.mainActivity, BuyProductDetail.class);
    paramAdapterView.putExtra("id", ((DynProductReturnVo)DynPorductList5004.c(this.a).get(paramInt - 1)).getId());
    DynPorductList5004.d(this.a).startActivity(paramAdapterView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/im.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */