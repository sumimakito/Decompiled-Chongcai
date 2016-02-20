package cn.apppark.vertify.activity.buy.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.TextView;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.buy.BuyOrderVo;
import cn.apppark.vertify.activity.buy.BuySubOrderResult;
import gv;
import java.util.ArrayList;

public class BuySubOrderResultAdapter
  extends BaseAdapter
{
  private BuySubOrderResult act;
  private ArrayList<BuyOrderVo> itemList;
  private LayoutInflater mInflater;
  
  public BuySubOrderResultAdapter(Context paramContext, ArrayList<BuyOrderVo> paramArrayList, BuySubOrderResult paramBuySubOrderResult)
  {
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.itemList = paramArrayList;
    this.act = paramBuySubOrderResult;
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
    BuyOrderVo localBuyOrderVo;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903060, null);
      paramViewGroup = new gv();
      paramViewGroup.a = ((TextView)paramView.findViewById(2131361934));
      paramViewGroup.b = ((TextView)paramView.findViewById(2131361935));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131361936));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131361938));
      paramViewGroup.e = ((Button)paramView.findViewById(2131361939));
      ButtonColorFilter.setButtonFocusChanged(paramViewGroup.e);
      paramView.setTag(paramViewGroup);
      localBuyOrderVo = (BuyOrderVo)this.itemList.get(paramInt);
      if (localBuyOrderVo != null)
      {
        paramViewGroup.a.setText("订单号: " + localBuyOrderVo.getOrderNumber());
        paramViewGroup.c.setText(localBuyOrderVo.getTotalPrice());
        if (FunctionPublic.str2int(localBuyOrderVo.getStatus()) != 0) {
          break label221;
        }
        paramViewGroup.d.setText(2131230780);
        paramViewGroup.b.setBackgroundResource(2130837854);
        paramViewGroup.e.setVisibility(8);
      }
    }
    label221:
    while (FunctionPublic.str2int(localBuyOrderVo.getStatus()) != 4)
    {
      return paramView;
      paramViewGroup = (gv)paramView.getTag();
      break;
    }
    paramViewGroup.d.setText(2131230781);
    paramViewGroup.b.setBackgroundResource(2130837853);
    paramViewGroup.e.setOnClickListener(new BuySubOrderResultAdapter.MyOnClick(this, paramInt));
    paramViewGroup.e.setVisibility(0);
    return paramView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/adapter/BuySubOrderResultAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */