package cn.apppark.vertify.activity.buy.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.apppark.mcd.vo.buy.BuyBaseAreaVo;
import gu;
import java.util.ArrayList;

public class BuySelAreaListAdapter
  extends BaseAdapter
{
  private ArrayList<BuyBaseAreaVo> itemList;
  private LayoutInflater mInflater;
  
  public BuySelAreaListAdapter(Context paramContext, ArrayList<BuyBaseAreaVo> paramArrayList)
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
    BuyBaseAreaVo localBuyBaseAreaVo;
    String str;
    int i;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903075, null);
      paramViewGroup = new gu();
      paramViewGroup.a = ((LinearLayout)paramView.findViewById(2131362086));
      paramViewGroup.b = ((ImageView)paramView.findViewById(2131362088));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131362087));
      paramView.setTag(paramViewGroup);
      localBuyBaseAreaVo = (BuyBaseAreaVo)this.itemList.get(paramInt);
      if (localBuyBaseAreaVo != null)
      {
        str = localBuyBaseAreaVo.getName();
        i = str.length();
        if (!str.contains(".")) {
          break label174;
        }
      }
    }
    label174:
    for (paramInt = str.lastIndexOf(".") + 1;; paramInt = 0)
    {
      paramViewGroup.c.setText(str.substring(paramInt, i));
      if (localBuyBaseAreaVo.isNext())
      {
        paramViewGroup.b.setVisibility(0);
        return paramView;
        paramViewGroup = (gu)paramView.getTag();
        break;
      }
      paramViewGroup.b.setVisibility(8);
      return paramView;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/adapter/BuySelAreaListAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */