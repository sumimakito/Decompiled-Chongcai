package cn.apppark.vertify.activity.buy.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.mcd.vo.buy.BuyCollectionVo;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.adapter.TCollectionAdapter.onRightItemClickListener;
import gm;
import java.util.ArrayList;

public class BuyCollectionAdapter2
  extends BaseAdapter
{
  private ArrayList<BuyCollectionVo> itemList;
  private LayoutInflater mInflater;
  private TCollectionAdapter.onRightItemClickListener mListener = null;
  private int mRightWidth = 0;
  
  public BuyCollectionAdapter2(Context paramContext, ArrayList<BuyCollectionVo> paramArrayList, int paramInt)
  {
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.itemList = paramArrayList;
    this.mRightWidth = paramInt;
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
    Object localObject;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903047, null);
      paramViewGroup = new gm();
      paramViewGroup.a = ((RelativeLayout)paramView.findViewById(2131361849));
      paramViewGroup.c = ((RemoteImageView)paramView.findViewById(2131361850));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131361851));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131361854));
      paramViewGroup.f = ((TextView)paramView.findViewById(2131361853));
      paramViewGroup.b = ((RelativeLayout)paramView.findViewById(2131361819));
      localObject = new LinearLayout.LayoutParams(-1, -1);
      paramViewGroup.a.setLayoutParams((ViewGroup.LayoutParams)localObject);
      localObject = new LinearLayout.LayoutParams(this.mRightWidth, -1);
      paramViewGroup.b.setLayoutParams((ViewGroup.LayoutParams)localObject);
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      localObject = (BuyCollectionVo)this.itemList.get(paramInt);
      if (localObject != null)
      {
        paramViewGroup.c.setImageUrl(((BuyCollectionVo)localObject).getPicPath());
        paramViewGroup.d.setText(((BuyCollectionVo)localObject).getTitle());
        paramViewGroup.f.setText(((BuyCollectionVo)localObject).getPrice());
        paramViewGroup.e.setText("购买:" + ((BuyCollectionVo)localObject).getSoldCount());
        paramViewGroup.b.setOnClickListener(new BuyCollectionAdapter2.1(this, paramInt));
      }
      return paramView;
      paramViewGroup = (gm)paramView.getTag();
    }
  }
  
  public void setOnRightItemClickListener(TCollectionAdapter.onRightItemClickListener paramonRightItemClickListener)
  {
    this.mListener = paramonRightItemClickListener;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */