import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import cn.apppark.mcd.vo.free.SelfGalleryItem2Vo;
import cn.apppark.mcd.widget.CoverFlowGallery;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView4013;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView4013.PublicHandler;
import java.util.ArrayList;

public final class ni
  implements AdapterView.OnItemClickListener
{
  public ni(SelfGalleryView4013 paramSelfGalleryView4013) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramInt = paramView.getId();
    paramAdapterView = SelfGalleryView4013.c(this.a).getCenterView();
    if ((paramAdapterView != null) && (paramAdapterView.getId() == paramInt) && ((SelfGalleryItem2Vo)SelfGalleryView4013.b(this.a).get(SelfGalleryView4013.d(this.a)) != null)) {
      SelfGalleryView4013.h(this.a).sendEmptyMessage(2);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ni.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */