import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.TextView;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView4011;
import java.util.ArrayList;

public final class nb
  implements AdapterView.OnItemSelectedListener
{
  public nb(SelfGalleryView4011 paramSelfGalleryView4011) {}
  
  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    SelfGalleryView4011.b(this.a, paramInt);
    SelfGalleryView4011.c(this.a, paramInt);
    paramAdapterView = SelfGalleryView4011.g(this.a) + 1 + "/" + SelfGalleryView4011.b(this.a).size();
    SelfGalleryView4011.h(this.a).setText(paramAdapterView);
    SelfGalleryView4011.d(this.a, SelfGalleryView4011.g(this.a));
  }
  
  public final void onNothingSelected(AdapterView<?> paramAdapterView) {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/nb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */