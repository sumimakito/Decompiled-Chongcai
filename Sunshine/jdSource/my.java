import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Gallery.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.free.SelfGalleryItem2Vo;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView;
import java.util.ArrayList;

public final class my
  extends BaseAdapter
{
  private Context b;
  
  public my(SelfGalleryView paramSelfGalleryView, Context paramContext)
  {
    this.b = paramContext;
  }
  
  public final int getCount()
  {
    return Integer.MAX_VALUE;
  }
  
  public final Object getItem(int paramInt)
  {
    return SelfGalleryView.b(this.a).get(paramInt % SelfGalleryView.b(this.a).size());
  }
  
  public final long getItemId(int paramInt)
  {
    return paramInt % SelfGalleryView.b(this.a).size();
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = new ImageView(this.b);
    FunctionPublic.setImageDrawable(((SelfGalleryItem2Vo)SelfGalleryView.b(this.a).get(paramInt % SelfGalleryView.b(this.a).size())).getData_pic(), paramView);
    paramView.setScaleType(ImageView.ScaleType.FIT_CENTER);
    paramView.setLayoutParams(new Gallery.LayoutParams(-1, -1));
    return paramView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/my.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */