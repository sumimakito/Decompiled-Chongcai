import android.app.Dialog;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.vertify.activity.soft.SoftDetail;

public final class re
  implements AdapterView.OnItemClickListener
{
  public re(SoftDetail paramSoftDetail) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    SoftDetail.a(this.a).dismiss();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/re.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */