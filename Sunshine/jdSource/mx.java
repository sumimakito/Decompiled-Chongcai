import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.mcd.vo.free.SelfGalleryItem2Vo;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView.PublicHandler;
import java.util.ArrayList;

public final class mx
  implements AdapterView.OnItemClickListener
{
  public mx(SelfGalleryView paramSelfGalleryView) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (SelfGalleryItem2Vo)SelfGalleryView.b(this.a).get(paramInt % SelfGalleryView.b(this.a).size());
    if ((paramAdapterView != null) && ("1".equals(paramAdapterView.getnFlag())))
    {
      paramAdapterView = SelfGalleryView.h(this.a).obtainMessage();
      paramAdapterView.what = 2;
      paramAdapterView.arg1 = (paramInt % SelfGalleryView.b(this.a).size());
      SelfGalleryView.h(this.a).sendMessage(paramAdapterView);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/mx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */