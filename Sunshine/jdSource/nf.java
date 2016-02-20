import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView4012;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView4012.PublicHandler;

public final class nf
  implements AdapterView.OnItemClickListener
{
  public nf(SelfGalleryView4012 paramSelfGalleryView4012) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = SelfGalleryView4012.g(this.a).obtainMessage();
    paramAdapterView.arg1 = paramInt;
    paramAdapterView.what = 2;
    SelfGalleryView4012.g(this.a).sendMessage(paramAdapterView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/nf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */