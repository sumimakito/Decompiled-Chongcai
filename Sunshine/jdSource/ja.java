import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.vo.dyn.DynProductReturnVo;
import cn.apppark.vertify.activity.buy.BuyProductDetail;
import cn.apppark.vertify.activity.free.dyn.DynProductGalleryText5013;
import java.util.ArrayList;

public final class ja
  implements AdapterView.OnItemClickListener
{
  public ja(DynProductGalleryText5013 paramDynProductGalleryText5013) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = new Intent(HQCHApplication.mainActivity, BuyProductDetail.class);
    paramAdapterView.putExtra("id", ((DynProductReturnVo)DynProductGalleryText5013.e(this.a).get(paramInt - 2)).getId());
    DynProductGalleryText5013.f(this.a).startActivity(paramAdapterView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ja.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */