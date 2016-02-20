import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.mcd.vo.free.SoftReturnVo;
import cn.apppark.vertify.activity.soft.Soft;
import cn.apppark.vertify.activity.soft.SoftDetail;
import java.util.ArrayList;

public final class qj
  implements AdapterView.OnItemClickListener
{
  public qj(Soft paramSoft) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Soft.m(this.a).get(paramInt - 1);
    paramAdapterView = new Intent(this.a, SoftDetail.class);
    paramAdapterView.putExtra("id", ((SoftReturnVo)Soft.m(this.a).get(paramInt - 1)).getId());
    paramAdapterView.putExtra("subjectid", "0");
    this.a.startActivity(paramAdapterView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/qj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */