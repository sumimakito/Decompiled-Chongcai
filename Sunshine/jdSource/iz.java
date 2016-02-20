import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.vertify.activity.free.dyn.DynProductGalleryText5013;

public final class iz
  implements AdapterView.OnItemClickListener
{
  public iz(DynProductGalleryText5013 paramDynProductGalleryText5013) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    DynProductGalleryText5013.a(this.a, paramInt);
    DynProductGalleryText5013.d(this.a).sendEmptyMessage(4);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/iz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */