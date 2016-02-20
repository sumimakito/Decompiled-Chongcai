import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.mcd.vo.free.SoftReturnVo;
import cn.apppark.vertify.activity.soft.Soft;
import cn.apppark.vertify.activity.soft.SoftDetail;
import java.util.ArrayList;

public final class qi
  implements AdapterView.OnItemClickListener
{
  public qi(Soft paramSoft) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = new Intent(this.a, SoftDetail.class);
    paramAdapterView.putExtra("id", ((SoftReturnVo)Soft.l(this.a).get(paramInt - 2)).getId());
    paramAdapterView.putExtra("subjectid", "0");
    this.a.startActivity(paramAdapterView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/qi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */