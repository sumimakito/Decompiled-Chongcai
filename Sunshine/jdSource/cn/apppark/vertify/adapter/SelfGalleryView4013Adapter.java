package cn.apppark.vertify.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Gallery.LayoutParams;
import android.widget.ImageView.ScaleType;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.free.SelfGalleryItem2Vo;
import cn.apppark.mcd.vo.free.SelfGalleryItemVo;
import cn.apppark.mcd.widget.RemoteImageView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;

public class SelfGalleryView4013Adapter
  extends TempBaseAdapter
{
  private ArrayList<SelfGalleryItem2Vo> itemArr;
  private HashMap<Integer, WeakReference<Bitmap>> mBitmapMap;
  private Context mContext;
  private SelfGalleryItemVo vo;
  
  public SelfGalleryView4013Adapter(Context paramContext, SelfGalleryItemVo paramSelfGalleryItemVo, ArrayList<SelfGalleryItem2Vo> paramArrayList)
  {
    this.mContext = paramContext;
    this.vo = paramSelfGalleryItemVo;
    this.itemArr = paramArrayList;
    this.mBitmapMap = new HashMap();
  }
  
  public Bitmap getBitMap(Context paramContext, int paramInt)
  {
    paramContext = (WeakReference)this.mBitmapMap.get(Integer.valueOf(paramInt));
    if (paramContext != null)
    {
      paramContext = (Bitmap)paramContext.get();
      if (paramContext != null) {
        return paramContext;
      }
    }
    paramContext = getCachedBitmap(((SelfGalleryItem2Vo)this.itemArr.get(paramInt % this.itemArr.size())).getData_pic());
    this.mBitmapMap.put(Integer.valueOf(paramInt), new WeakReference(paramContext));
    return paramContext;
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
    if (paramView == null)
    {
      paramView = new RemoteImageView(this.mContext);
      paramView.setId(paramInt);
      paramView.setScaleType(ImageView.ScaleType.FIT_CENTER);
      paramView.setLayoutParams(new Gallery.LayoutParams((int)(this.vo.getSys_w() * YYGYContants.scaleUnite * 3.0F / 5.0F), -1));
    }
    for (;;)
    {
      paramViewGroup = ((SelfGalleryItem2Vo)this.itemArr.get(paramInt)).getData_pic();
      if (!paramViewGroup.startsWith("http://")) {
        break;
      }
      paramView.setImageUrl(paramViewGroup);
      return paramView;
      paramView = (RemoteImageView)paramView;
    }
    FunctionPublic.setImageDrawable(paramViewGroup, paramView);
    return paramView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/SelfGalleryView4013Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */