import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.Gallery.LayoutParams;
import android.widget.ImageView.ScaleType;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.free.SoftReturnVo;
import cn.apppark.mcd.widget.RemoteImageView;
import java.util.ArrayList;

public final class qe
  extends BaseAdapter
{
  private ArrayList<SoftReturnVo> a;
  private Context b;
  
  public qe(Context paramContext, ArrayList<SoftReturnVo> paramArrayList)
  {
    this.a = paramArrayList;
    this.b = paramContext;
  }
  
  public final int getCount()
  {
    return 1000;
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
      paramViewGroup = new qf();
      paramViewGroup.a = new RemoteImageView(this.b);
      paramView = paramViewGroup.a;
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      Object localObject = (SoftReturnVo)this.a.get(paramInt % this.a.size());
      if (localObject != null)
      {
        paramViewGroup.a.setImageUrl(((SoftReturnVo)localObject).getPicUrl());
        localObject = new Gallery.LayoutParams((int)(YYGYContants.scaleUnite * 160.0F), (int)(YYGYContants.scaleUnite * 104.0F));
        paramViewGroup.a.setLayoutParams((ViewGroup.LayoutParams)localObject);
        paramViewGroup.a.setPadding(PublicUtil.dip2px(5.0F), PublicUtil.dip2px(5.0F), PublicUtil.dip2px(5.0F), PublicUtil.dip2px(5.0F));
        paramViewGroup.a.setScaleType(ImageView.ScaleType.FIT_XY);
      }
      return paramView;
      paramViewGroup = (qf)paramView.getTag();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/qe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */