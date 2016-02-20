import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import cn.apppark.vertify.activity.soft.Soft;
import java.util.ArrayList;

public final class qn
  implements AdapterView.OnItemSelectedListener
{
  public qn(Soft paramSoft) {}
  
  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.a.changePoint(paramInt % Soft.o(this.a).size());
  }
  
  public final void onNothingSelected(AdapterView<?> paramAdapterView) {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/qn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */