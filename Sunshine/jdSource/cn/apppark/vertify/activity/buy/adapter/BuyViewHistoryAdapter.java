package cn.apppark.vertify.activity.buy.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.mcd.vo.buy.BuyProductVo;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.adapter.TMyHistoryAdapter.onRightItemClickListener;
import gx;
import java.util.ArrayList;

public class BuyViewHistoryAdapter
  extends BaseAdapter
{
  private ArrayList<BuyProductVo> itemList;
  private LayoutInflater mInflater;
  private TMyHistoryAdapter.onRightItemClickListener mListener = null;
  
  public BuyViewHistoryAdapter(Context paramContext, ArrayList<BuyProductVo> paramArrayList)
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
      paramView = this.mInflater.inflate(2130903084, null);
      paramViewGroup = new gx();
      paramViewGroup.f = ((RelativeLayout)paramView.findViewById(2131362152));
      paramViewGroup.a = ((RemoteImageView)paramView.findViewById(2131362153));
      paramViewGroup.b = ((TextView)paramView.findViewById(2131362154));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131362158));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131362156));
      paramViewGroup.e = ((Button)paramView.findViewById(2131362157));
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      BuyProductVo localBuyProductVo = (BuyProductVo)this.itemList.get(paramInt);
      if (localBuyProductVo != null)
      {
        paramViewGroup.a.setImageUrl(localBuyProductVo.getPicPath());
        paramViewGroup.b.setText(localBuyProductVo.getTitle());
        paramViewGroup.d.setText("￥" + localBuyProductVo.getPrice());
        paramViewGroup.c.setText("购买:" + localBuyProductVo.getSoldCount());
      }
      return paramView;
      paramViewGroup = (gx)paramView.getTag();
    }
  }
  
  public void setOnRightItemClickListener(TMyHistoryAdapter.onRightItemClickListener paramonRightItemClickListener)
  {
    this.mListener = paramonRightItemClickListener;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/adapter/BuyViewHistoryAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */