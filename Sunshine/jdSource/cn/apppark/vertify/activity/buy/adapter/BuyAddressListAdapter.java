package cn.apppark.vertify.activity.buy.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.mcd.vo.buy.BuyAddressVo;
import cn.apppark.vertify.adapter.TMyHistoryAdapter.onRightItem2ClickListener;
import cn.apppark.vertify.adapter.TMyHistoryAdapter.onRightItemClickListener;
import gh;
import java.util.ArrayList;

public class BuyAddressListAdapter
  extends BaseAdapter
{
  private ArrayList<BuyAddressVo> itemList;
  private LayoutInflater mInflater;
  private TMyHistoryAdapter.onRightItemClickListener mListener = null;
  private TMyHistoryAdapter.onRightItem2ClickListener mListener2 = null;
  private int mRightWidth = 0;
  
  public BuyAddressListAdapter(Context paramContext, ArrayList<BuyAddressVo> paramArrayList, int paramInt)
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
      paramView = this.mInflater.inflate(2130903042, null);
      paramViewGroup = new gh();
      paramViewGroup.g = ((RelativeLayout)paramView.findViewById(2131361810));
      paramViewGroup.h = ((LinearLayout)paramView.findViewById(2131361819));
      paramViewGroup.i = ((LinearLayout)paramView.findViewById(2131361820));
      paramViewGroup.j = ((LinearLayout)paramView.findViewById(2131361821));
      paramViewGroup.a = ((LinearLayout)paramView.findViewById(2131361813));
      paramViewGroup.b = ((ImageView)paramView.findViewById(2131361818));
      paramViewGroup.f = ((ImageView)paramView.findViewById(2131361816));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131361814));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131361815));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131361817));
      paramViewGroup.b.setVisibility(8);
      localObject = new LinearLayout.LayoutParams(-1, -1);
      paramViewGroup.g.setLayoutParams((ViewGroup.LayoutParams)localObject);
      localObject = new LinearLayout.LayoutParams(this.mRightWidth, -1);
      paramViewGroup.h.setLayoutParams((ViewGroup.LayoutParams)localObject);
      paramView.setTag(paramViewGroup);
      localObject = (BuyAddressVo)this.itemList.get(paramInt);
      if (localObject != null)
      {
        if (!"1".equals(((BuyAddressVo)localObject).getIsDefault())) {
          break label367;
        }
        paramViewGroup.b.setVisibility(0);
        label249:
        if (!((BuyAddressVo)localObject).isEdit()) {
          break label379;
        }
        paramViewGroup.f.setVisibility(0);
      }
    }
    for (;;)
    {
      paramViewGroup.c.setText(((BuyAddressVo)localObject).getName());
      paramViewGroup.d.setText(((BuyAddressVo)localObject).getPhone());
      paramViewGroup.e.setText(((BuyAddressVo)localObject).getAddress1() + ((BuyAddressVo)localObject).getAddress2());
      paramViewGroup.j.setOnClickListener(new BuyAddressListAdapter.1(this, paramInt));
      paramViewGroup.i.setOnClickListener(new BuyAddressListAdapter.2(this, paramInt));
      return paramView;
      paramViewGroup = (gh)paramView.getTag();
      break;
      label367:
      paramViewGroup.b.setVisibility(8);
      break label249;
      label379:
      paramViewGroup.f.setVisibility(8);
    }
  }
  
  public TMyHistoryAdapter.onRightItem2ClickListener getmListener2()
  {
    return this.mListener2;
  }
  
  public void setOnRightItem2ClickListener(TMyHistoryAdapter.onRightItem2ClickListener paramonRightItem2ClickListener)
  {
    this.mListener2 = paramonRightItem2ClickListener;
  }
  
  public void setOnRightItemClickListener(TMyHistoryAdapter.onRightItemClickListener paramonRightItemClickListener)
  {
    this.mListener = paramonRightItemClickListener;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */