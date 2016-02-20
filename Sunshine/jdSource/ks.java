import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Gallery.LayoutParams;
import android.widget.ImageView.ScaleType;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.free.dyn.PicGallery;
import java.util.ArrayList;

public final class ks
  extends BaseAdapter
{
  private Context b;
  
  public ks(PicGallery paramPicGallery, Context paramContext)
  {
    this.b = paramContext;
  }
  
  public final int getCount()
  {
    return PicGallery.c(this.a).size();
  }
  
  public final Object getItem(int paramInt)
  {
    return Integer.valueOf(paramInt);
  }
  
  public final long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramViewGroup = new kt();
      paramViewGroup.a = new RemoteImageView(this.b);
      paramViewGroup.a.setScaleType(ImageView.ScaleType.FIT_CENTER);
      paramView = paramViewGroup.a;
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      if ((PicGallery.c(this.a).size() > paramInt) && (PicGallery.c(this.a).get(paramInt) != null))
      {
        paramViewGroup.a.setImageUrl((String)PicGallery.c(this.a).get(paramInt));
        paramViewGroup.a.setDefaultImage(Integer.valueOf(2130837617));
        Gallery.LayoutParams localLayoutParams = new Gallery.LayoutParams(-1, -1);
        paramViewGroup.a.setLayoutParams(localLayoutParams);
        paramViewGroup.a.setScaleType(ImageView.ScaleType.FIT_CENTER);
      }
      return paramView;
      paramViewGroup = (kt)paramView.getTag();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ks.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */