package cn.apppark.vertify.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Gallery.LayoutParams;
import android.widget.ImageView.ScaleType;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.free.SelfGalleryItem2Vo;
import cn.apppark.mcd.widget.RemoteImageView;
import java.util.ArrayList;

public class SelfGalleryViewAdapter
  extends TempBaseAdapter
{
  private Context context;
  private ArrayList<SelfGalleryItem2Vo> itemArr;
  
  public SelfGalleryViewAdapter(Context paramContext, ArrayList<SelfGalleryItem2Vo> paramArrayList)
  {
    this.context = paramContext;
    this.itemArr = paramArrayList;
  }
  
  public int getCount()
  {
    return this.itemArr.size();
  }
  
  public Object getItem(int paramInt)
  {
    return this.itemArr.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = new RemoteImageView(this.context);
    paramViewGroup = ((SelfGalleryItem2Vo)this.itemArr.get(paramInt)).getData_pic();
    if (paramViewGroup.startsWith("http://")) {
      paramView.setImageUrl(paramViewGroup);
    }
    for (;;)
    {
      paramView.setScaleType(ImageView.ScaleType.FIT_CENTER);
      paramView.setLayoutParams(new Gallery.LayoutParams(-1, -1));
      return paramView;
      FunctionPublic.setImageDrawable(paramViewGroup, paramView);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/SelfGalleryViewAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */