import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import cn.apppark.vertify.activity.free.dyn.STogetherBase;

public final class lm
  implements AdapterView.OnItemSelectedListener
{
  public lm(STogetherBase paramSTogetherBase) {}
  
  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.a.changePoint(paramInt);
  }
  
  public final void onNothingSelected(AdapterView<?> paramAdapterView) {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/lm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */