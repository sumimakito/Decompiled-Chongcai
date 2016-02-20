package cn.apppark.vertify.activity.buy.adapter;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.vo.buy.BuyProductVo;
import cn.apppark.mcd.vo.buy.BuyTempOrderVo;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.buy.BuyOrderTemp;
import gw;
import java.util.ArrayList;

public class BuyTempOrderAdapter
  extends BaseAdapter
{
  private Context context;
  private ArrayList<BuyTempOrderVo> itemList;
  private LayoutInflater mInflater;
  private BuyOrderTemp temp;
  
  public BuyTempOrderAdapter(BuyOrderTemp paramBuyOrderTemp, Context paramContext, ArrayList<BuyTempOrderVo> paramArrayList)
  {
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.itemList = paramArrayList;
    this.context = paramContext;
    this.temp = paramBuyOrderTemp;
  }
  
  private void initProducts(ArrayList<BuyProductVo> paramArrayList, LinearLayout paramLinearLayout)
  {
    int i = 0;
    if (i < paramArrayList.size())
    {
      View localView = this.mInflater.inflate(2130903080, null);
      RemoteImageView localRemoteImageView = (RemoteImageView)localView.findViewById(2131362118);
      TextView localTextView1 = (TextView)localView.findViewById(2131362119);
      TextView localTextView2 = (TextView)localView.findViewById(2131362121);
      TextView localTextView3 = (TextView)localView.findViewById(2131362122);
      TextView localTextView4 = (TextView)localView.findViewById(2131362123);
      TextView localTextView5 = (TextView)localView.findViewById(2131362120);
      localTextView1.setText(((BuyProductVo)paramArrayList.get(i)).getTitle());
      localTextView5.setText(((BuyProductVo)paramArrayList.get(i)).getStandardValue());
      if (((BuyProductVo)paramArrayList.get(i)).isHavaStore()) {
        localTextView4.setVisibility(8);
      }
      for (;;)
      {
        localTextView2.setText(((BuyProductVo)paramArrayList.get(i)).getNumber() + "  x");
        localTextView3.setText(((BuyProductVo)paramArrayList.get(i)).getPrice());
        localRemoteImageView.setDefaultImage(Integer.valueOf(2130837617));
        localRemoteImageView.setImageUrl(((BuyProductVo)paramArrayList.get(i)).getPicPath());
        paramLinearLayout.addView(localView);
        i += 1;
        break;
        localTextView4.setVisibility(0);
        localTextView4.setText(((BuyProductVo)paramArrayList.get(i)).getReason());
      }
    }
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
    String str;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903079, null);
      paramViewGroup = new gw();
      paramViewGroup.a = ((TextView)paramView.findViewById(2131362112));
      paramViewGroup.b = ((TextView)paramView.findViewById(2131362113));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131362116));
      paramViewGroup.c = ((Button)paramView.findViewById(2131362114));
      paramViewGroup.d = ((Button)paramView.findViewById(2131362115));
      paramViewGroup.f = ((LinearLayout)paramView.findViewById(2131362111));
      ButtonColorFilter.setButtonFocusChanged(paramViewGroup.c);
      paramView.setTag(paramViewGroup);
      BuyTempOrderVo localBuyTempOrderVo = (BuyTempOrderVo)this.itemList.get(paramInt);
      if (localBuyTempOrderVo != null)
      {
        paramViewGroup.b.setText("¥" + String.format("%.2f", new Object[] { Float.valueOf(Float.parseFloat(localBuyTempOrderVo.getTotalPrice())) }));
        paramViewGroup.a.setText("数量:" + localBuyTempOrderVo.getTotalNumber());
        paramViewGroup.f.removeAllViews();
        initProducts(localBuyTempOrderVo.getOrderItem(), paramViewGroup.f);
        str = localBuyTempOrderVo.getRemark();
        if ((str == null) || ("".equals(str))) {
          break label417;
        }
        paramViewGroup.e.setText(str);
        label254:
        if (!"1".equals(localBuyTempOrderVo.getIsPayInline())) {
          break label439;
        }
        paramViewGroup.c.setVisibility(0);
        label275:
        if (!"1".equals(localBuyTempOrderVo.getIsPayMoney())) {
          break label451;
        }
        paramViewGroup.d.setVisibility(0);
        label296:
        if (!"1".equals(localBuyTempOrderVo.getIsSelPayOnLine())) {
          break label463;
        }
        paramViewGroup.c.setBackgroundResource(2130837584);
        paramViewGroup.d.setBackgroundResource(2130837582);
        paramViewGroup.c.setTextColor(Color.parseColor("#50c6f8"));
        paramViewGroup.d.setTextColor(Color.parseColor("#666666"));
      }
    }
    for (;;)
    {
      paramViewGroup.e.setOnClickListener(new BuyTempOrderAdapter.MyClick(this, paramInt, str));
      paramViewGroup.c.setOnClickListener(new BuyTempOrderAdapter.MyClick(this, paramInt));
      paramViewGroup.d.setOnClickListener(new BuyTempOrderAdapter.MyClick(this, paramInt));
      return paramView;
      paramViewGroup = (gw)paramView.getTag();
      break;
      label417:
      paramViewGroup.e.setText("");
      paramViewGroup.e.setHint("请告诉卖家您对商品的特殊需求");
      break label254;
      label439:
      paramViewGroup.c.setVisibility(8);
      break label275;
      label451:
      paramViewGroup.d.setVisibility(8);
      break label296;
      label463:
      paramViewGroup.c.setBackgroundResource(2130837582);
      paramViewGroup.d.setBackgroundResource(2130837584);
      paramViewGroup.c.setTextColor(Color.parseColor("#666666"));
      paramViewGroup.d.setTextColor(Color.parseColor("#50c6f8"));
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */