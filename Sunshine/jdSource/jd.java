import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Gallery.LayoutParams;
import android.widget.ImageView.ScaleType;
import cn.apppark.mcd.vo.dyn.DynProductReturnVo;
import cn.apppark.mcd.widget.RemoteImageView;
import java.util.ArrayList;

public final class jd
  extends BaseAdapter
{
  private Context b;
  private ArrayList<DynProductReturnVo> c;
  
  public jd(Context paramContext, ArrayList<DynProductReturnVo> paramArrayList)
  {
    this.b = paramArrayList;
    ArrayList localArrayList;
    this.c = localArrayList;
  }
  
  public final int getCount()
  {
    return this.c.size();
  }
  
  public final Object getItem(int paramInt)
  {
    return this.c.get(paramInt);
  }
  
  public final long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = new RemoteImageView(this.b);
    paramView.setImageUrl(((DynProductReturnVo)this.c.get(paramInt)).getGalleryPic());
    paramView.setDefaultImage(Integer.valueOf(2130837617));
    paramView.setScaleType(ImageView.ScaleType.FIT_XY);
    paramView.setLayoutParams(new Gallery.LayoutParams(-1, -1));
    return paramView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/jd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */