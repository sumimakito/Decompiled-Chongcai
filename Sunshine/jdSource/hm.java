import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ImageView;
import android.widget.TextView;
import cn.apppark.mcd.vo.dyn.DynMsgListReturnVo;
import cn.apppark.vertify.activity.free.dyn.DynMsgGalleryText5010;
import java.util.ArrayList;

public final class hm
  implements AdapterView.OnItemSelectedListener
{
  public hm(DynMsgGalleryText5010 paramDynMsgGalleryText5010) {}
  
  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.a.f.setText(((DynMsgListReturnVo)DynMsgGalleryText5010.c(this.a).get(paramInt)).getTitle());
    this.a.e.setVisibility(0);
    if ("1".equals(((DynMsgListReturnVo)DynMsgGalleryText5010.c(this.a).get(paramInt)).getType()))
    {
      this.a.e.setImageResource(2130837655);
      return;
    }
    if ("2".equals(((DynMsgListReturnVo)DynMsgGalleryText5010.c(this.a).get(paramInt)).getType()))
    {
      this.a.e.setImageResource(2130837641);
      return;
    }
    if ("3".equals(((DynMsgListReturnVo)DynMsgGalleryText5010.c(this.a).get(paramInt)).getType()))
    {
      this.a.e.setImageResource(2130837659);
      return;
    }
    this.a.e.setVisibility(8);
  }
  
  public final void onNothingSelected(AdapterView<?> paramAdapterView) {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/hm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */