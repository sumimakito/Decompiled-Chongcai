package cn.apppark.vertify.activity.buy.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.buy.BuyOrderVo;
import cn.apppark.mcd.widget.RemoteImageView;
import gq;
import java.util.ArrayList;

public class BuyOrderDetailAdapter
  extends BaseAdapter
{
  private ArrayList<BuyOrderVo> itemList;
  private LayoutInflater mInflater;
  
  public BuyOrderDetailAdapter(Context paramContext, ArrayList<BuyOrderVo> paramArrayList)
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
      paramView = this.mInflater.inflate(2130903055, null);
      paramViewGroup = new gq();
      paramViewGroup.a = ((RemoteImageView)paramView.findViewById(2131361894));
      paramViewGroup.b = ((TextView)paramView.findViewById(2131361895));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131361898));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131361897));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131361896));
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      BuyOrderVo localBuyOrderVo = (BuyOrderVo)this.itemList.get(paramInt);
      if (localBuyOrderVo != null)
      {
        paramViewGroup.a.setImageUrl(localBuyOrderVo.getPicPath());
        paramViewGroup.b.setText(localBuyOrderVo.getTitle());
        paramViewGroup.c.setText("￥" + localBuyOrderVo.getPrice());
        paramViewGroup.d.setText(localBuyOrderVo.getNumber() + " X");
        if (!StringUtil.isNotNull(localBuyOrderVo.getStandardValue())) {
          break;
        }
        paramViewGroup.e.setText(localBuyOrderVo.getStandardValue());
      }
      return paramView;
      paramViewGroup = (gq)paramView.getTag();
    }
    paramViewGroup.e.setText("");
    return paramView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/adapter/BuyOrderDetailAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */