package cn.apppark.vertify.activity.buy.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.mcd.vo.buy.BuyCollectionVo;
import cn.apppark.mcd.widget.RemoteImageView;
import gl;
import java.util.ArrayList;

public class BuyCollectionAdapter
  extends BaseAdapter
{
  private ArrayList<BuyCollectionVo> itemList;
  private LayoutInflater mInflater;
  
  public BuyCollectionAdapter(Context paramContext, ArrayList<BuyCollectionVo> paramArrayList)
  {
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.itemList = paramArrayList;
  }
  
  public int getCount()
  {
    return this.itemList.size();
  }
  
  public Object getItem(int paramInt)
  {
    return this.itemList.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903046, null);
      paramViewGroup = new gl();
      paramViewGroup.a = ((RelativeLayout)paramView.findViewById(2131361849));
      paramViewGroup.b = ((RemoteImageView)paramView.findViewById(2131361850));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131361851));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131361854));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131361853));
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      BuyCollectionVo localBuyCollectionVo = (BuyCollectionVo)this.itemList.get(paramInt);
      if (localBuyCollectionVo != null)
      {
        paramViewGroup.b.setImageUrl(localBuyCollectionVo.getPicPath());
        paramViewGroup.c.setText(localBuyCollectionVo.getTitle());
        paramViewGroup.e.setText("￥" + localBuyCollectionVo.getPrice());
        paramViewGroup.d.setText("购买:" + localBuyCollectionVo.getSoldCount());
      }
      return paramView;
      paramViewGroup = (gl)paramView.getTag();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */