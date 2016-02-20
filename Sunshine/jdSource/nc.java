import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView4011;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView4011.PublicHandler;

public final class nc
  implements AdapterView.OnItemClickListener
{
  public nc(SelfGalleryView4011 paramSelfGalleryView4011) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = SelfGalleryView4011.f(this.a).obtainMessage();
    paramAdapterView.arg1 = paramInt;
    paramAdapterView.what = 2;
    SelfGalleryView4011.f(this.a).sendMessage(paramAdapterView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/nc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */