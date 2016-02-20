import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView;
import java.util.ArrayList;

public final class mw
  implements AdapterView.OnItemSelectedListener
{
  public mw(SelfGalleryView paramSelfGalleryView) {}
  
  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    SelfGalleryView.a(this.a, paramInt % SelfGalleryView.b(this.a).size());
    this.a.changePoint(SelfGalleryView.a(this.a));
  }
  
  public final void onNothingSelected(AdapterView<?> paramAdapterView) {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/mw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */