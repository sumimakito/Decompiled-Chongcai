import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Gallery.LayoutParams;
import android.widget.ImageView.ScaleType;
import cn.apppark.mcd.vo.free.SoftReturnVo;
import cn.apppark.mcd.widget.RemoteImageView;
import java.util.ArrayList;

public final class qc
  extends BaseAdapter
{
  private ArrayList<SoftReturnVo> a;
  private Context b;
  private int c;
  
  public qc(Context paramContext, ArrayList<SoftReturnVo> paramArrayList, int paramInt)
  {
    this.a = paramArrayList;
    this.b = paramContext;
    this.c = 2;
  }
  
  public final int getCount()
  {
    return this.a.size();
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
    if (this.c == 1)
    {
      if (paramView == null)
      {
        paramViewGroup = new qd();
        paramViewGroup.a = new RemoteImageView(this.b);
        paramView = paramViewGroup.a;
        paramView.setTag(paramViewGroup);
      }
      for (;;)
      {
        if ((this.a.size() > paramInt) && (this.a.get(paramInt) != null))
        {
          paramViewGroup.a.setImageUrl(((SoftReturnVo)this.a.get(paramInt)).getPicUrl());
          Gallery.LayoutParams localLayoutParams = new Gallery.LayoutParams(-1, -1);
          paramViewGroup.a.setLayoutParams(localLayoutParams);
          paramViewGroup.a.setScaleType(ImageView.ScaleType.FIT_XY);
        }
        return paramView;
        paramViewGroup = (qd)paramView.getTag();
      }
    }
    paramView = new RemoteImageView(this.b);
    paramView.setDefaultImage(Integer.valueOf(2130837617));
    paramView.setImageUrl(((SoftReturnVo)this.a.get(paramInt)).getPicUrl());
    paramView.setScaleType(ImageView.ScaleType.FIT_CENTER);
    paramView.setLayoutParams(new Gallery.LayoutParams(-1, -1));
    return paramView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/qc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */