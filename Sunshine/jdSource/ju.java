import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import cn.apppark.mcd.vo.dyn.Dyn5007ReturnVo;
import cn.apppark.vertify.activity.buy.BuyProductDetail;
import cn.apppark.vertify.activity.free.dyn.DynMsgDetail;
import cn.apppark.vertify.activity.free.dyn.DynSearch5007Act;
import cn.apppark.vertify.activity.free.dyn.DynSearch5007Act2;
import java.io.Serializable;
import java.util.ArrayList;

public final class ju
  implements AdapterView.OnItemClickListener
{
  public ju(DynSearch5007Act paramDynSearch5007Act) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    switch (((Dyn5007ReturnVo)DynSearch5007Act.b(this.a).get(paramInt - 1)).getNextShowType())
    {
    case 0: 
    default: 
      return;
    case 1: 
      paramAdapterView = new Intent(this.a, BuyProductDetail.class);
      paramAdapterView.putExtra("id", ((Dyn5007ReturnVo)DynSearch5007Act.b(this.a).get(paramInt - 1)).getId());
      this.a.startActivity(paramAdapterView);
      return;
    case 2: 
      paramAdapterView = new Intent(this.a, DynMsgDetail.class);
      paramAdapterView.putExtra("type", 3);
      paramView = new Bundle();
      paramView.putSerializable("vo", (Serializable)DynSearch5007Act.b(this.a).get(paramInt - 1));
      paramAdapterView.putExtra("bund", paramView);
      this.a.startActivity(paramAdapterView);
      return;
    case 3: 
      paramAdapterView = new Intent(this.a, DynSearch5007Act2.class);
      paramAdapterView.putExtra("searchtype", 1);
      paramAdapterView.putExtra("keyword", DynSearch5007Act.a(this.a).getText().toString());
      paramAdapterView.putExtra("param", DynSearch5007Act.c(this.a));
      this.a.startActivity(paramAdapterView);
      return;
    }
    paramAdapterView = new Intent(this.a, DynSearch5007Act2.class);
    paramAdapterView.putExtra("searchtype", 2);
    paramAdapterView.putExtra("keyword", DynSearch5007Act.a(this.a).getText().toString());
    paramAdapterView.putExtra("param", DynSearch5007Act.c(this.a));
    this.a.startActivity(paramAdapterView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ju.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */