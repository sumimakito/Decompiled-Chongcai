import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Gallery.LayoutParams;
import android.widget.ImageView.ScaleType;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.buy.BuyProductDetail;

public final class fh
  extends BaseAdapter
{
  private Context b;
  private String[] c;
  
  public fh(BuyProductDetail paramBuyProductDetail, Context paramContext, String[] paramArrayOfString)
  {
    this.b = paramContext;
    this.c = paramArrayOfString;
  }
  
  public final int getCount()
  {
    return this.c.length;
  }
  
  public final Object getItem(int paramInt)
  {
    return this.c[paramInt];
  }
  
  public final long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramViewGroup = new fi();
      paramViewGroup.a = new RemoteImageView(this.b);
      paramViewGroup.a.setAdjustViewBounds(true);
      paramViewGroup.a.setDefaultImage(Integer.valueOf(2130837617));
      paramViewGroup.a.setScaleType(ImageView.ScaleType.FIT_CENTER);
      paramViewGroup.a.setLayoutParams(new Gallery.LayoutParams(-1, -1));
      paramView = paramViewGroup.a;
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      if (this.c.length > paramInt) {
        paramViewGroup.a.setImageUrl(this.c[paramInt]);
      }
      return paramView;
      paramViewGroup = (fi)paramView.getTag();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/fh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */