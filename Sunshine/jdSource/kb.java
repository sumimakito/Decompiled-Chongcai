import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.mcd.vo.dyn.Dyn5007ReturnVo;
import cn.apppark.vertify.activity.buy.BuyProductDetail;
import cn.apppark.vertify.activity.free.dyn.DynMsgDetail;
import cn.apppark.vertify.activity.free.dyn.DynSearch5007Act2;
import java.io.Serializable;
import java.util.ArrayList;

public final class kb
  implements AdapterView.OnItemClickListener
{
  public kb(DynSearch5007Act2 paramDynSearch5007Act2) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    switch (this.a.a)
    {
    default: 
      return;
    case 1: 
      paramAdapterView = new Intent(this.a, BuyProductDetail.class);
      paramAdapterView.putExtra("id", ((Dyn5007ReturnVo)DynSearch5007Act2.b(this.a).get(paramInt - 1)).getId());
      this.a.startActivity(paramAdapterView);
      return;
    }
    paramAdapterView = new Intent(this.a, DynMsgDetail.class);
    paramAdapterView.putExtra("type", 3);
    paramView = new Bundle();
    paramView.putSerializable("vo", (Serializable)DynSearch5007Act2.b(this.a).get(paramInt - 1));
    paramAdapterView.putExtra("bund", paramView);
    this.a.startActivity(paramAdapterView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/kb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */