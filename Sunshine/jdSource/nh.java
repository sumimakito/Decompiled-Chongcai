import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.TextView;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView4013;
import java.util.ArrayList;

public final class nh
  implements AdapterView.OnItemSelectedListener
{
  public nh(SelfGalleryView4013 paramSelfGalleryView4013) {}
  
  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    SelfGalleryView4013.b(this.a, paramInt);
    SelfGalleryView4013.c(this.a, paramInt % SelfGalleryView4013.b(this.a).size());
    paramAdapterView = SelfGalleryView4013.d(this.a) + 1 + "/" + SelfGalleryView4013.b(this.a).size();
    SelfGalleryView4013.i(this.a).setText(paramAdapterView);
    SelfGalleryView4013.d(this.a, SelfGalleryView4013.d(this.a));
  }
  
  public final void onNothingSelected(AdapterView<?> paramAdapterView) {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/nh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */