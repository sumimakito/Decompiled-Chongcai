import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.TextView;
import cn.apppark.mcd.vo.free.SelfGalleryItem2Vo;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView4012;
import java.util.ArrayList;

public final class ne
  implements AdapterView.OnItemSelectedListener
{
  public ne(SelfGalleryView4012 paramSelfGalleryView4012) {}
  
  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    SelfGalleryView4012.b(this.a, paramInt);
    SelfGalleryView4012.h(this.a).setText(((SelfGalleryItem2Vo)SelfGalleryView4012.b(this.a).get(paramInt)).getData_text());
  }
  
  public final void onNothingSelected(AdapterView<?> paramAdapterView) {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ne.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */