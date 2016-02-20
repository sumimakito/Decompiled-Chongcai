import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ImageView;
import android.widget.TextView;
import cn.apppark.mcd.vo.dyn.DynProductReturnVo;
import cn.apppark.vertify.activity.free.dyn.DynProductGalleryText5013;
import java.util.ArrayList;

public final class iy
  implements AdapterView.OnItemSelectedListener
{
  public iy(DynProductGalleryText5013 paramDynProductGalleryText5013) {}
  
  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.a.f.setText(((DynProductReturnVo)DynProductGalleryText5013.c(this.a).get(paramInt)).getTitle());
    this.a.e.setVisibility(0);
    if ("1".equals(((DynProductReturnVo)DynProductGalleryText5013.c(this.a).get(paramInt)).getType()))
    {
      this.a.e.setImageResource(2130837655);
      return;
    }
    if ("2".equals(((DynProductReturnVo)DynProductGalleryText5013.c(this.a).get(paramInt)).getType()))
    {
      this.a.e.setImageResource(2130837641);
      return;
    }
    if ("3".equals(((DynProductReturnVo)DynProductGalleryText5013.c(this.a).get(paramInt)).getType()))
    {
      this.a.e.setImageResource(2130837659);
      return;
    }
    this.a.e.setVisibility(8);
  }
  
  public final void onNothingSelected(AdapterView<?> paramAdapterView) {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/iy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */