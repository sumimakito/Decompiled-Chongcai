import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.vertify.activity.free.dyn.DynMsgGalleryText5010;

public final class hn
  implements AdapterView.OnItemClickListener
{
  public hn(DynMsgGalleryText5010 paramDynMsgGalleryText5010) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    DynMsgGalleryText5010.a(this.a, paramInt);
    DynMsgGalleryText5010.d(this.a).sendEmptyMessage(2);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/hn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */