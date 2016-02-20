import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.vertify.activity.free.dyn.STogetherBase;

public final class ll
  implements AdapterView.OnItemClickListener
{
  public ll(STogetherBase paramSTogetherBase) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    STogetherBase.a(this.a, paramInt);
    STogetherBase.e(this.a).sendEmptyMessage(4);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ll.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */