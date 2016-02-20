import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.mcd.vo.free.SoftReturnVo;
import cn.apppark.vertify.activity.soft.Soft;
import cn.apppark.vertify.activity.soft.SoftDetail;
import cn.apppark.vertify.activity.soft.SoftList;
import java.util.ArrayList;

public final class qm
  implements AdapterView.OnItemClickListener
{
  public qm(Soft paramSoft) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramInt %= Soft.o(this.a).size();
    if ("0".equals(((SoftReturnVo)Soft.o(this.a).get(paramInt)).getAppId()))
    {
      paramAdapterView = new Intent(this.a, SoftList.class);
      paramAdapterView.putExtra("subjectid", ((SoftReturnVo)Soft.o(this.a).get(paramInt)).getId());
      this.a.startActivity(paramAdapterView);
      return;
    }
    paramAdapterView = new Intent(this.a, SoftDetail.class);
    paramAdapterView.putExtra("id", ((SoftReturnVo)Soft.o(this.a).get(paramInt)).getAppId());
    paramAdapterView.putExtra("subjectid", "0");
    this.a.startActivity(paramAdapterView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/qm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */