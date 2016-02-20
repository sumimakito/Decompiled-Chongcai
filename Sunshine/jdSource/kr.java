import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import cn.apppark.vertify.activity.free.dyn.PicGallery;

public final class kr
  implements AdapterView.OnItemSelectedListener
{
  public kr(PicGallery paramPicGallery) {}
  
  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (PicGallery.a(this.a).isShowing()) {
      PicGallery.a(this.a).dismiss();
    }
  }
  
  public final void onNothingSelected(AdapterView<?> paramAdapterView) {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/kr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */