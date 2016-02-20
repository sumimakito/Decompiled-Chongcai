package cn.apppark.vertify.activity.buy.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.buy.BuyOrderVo;
import cn.apppark.mcd.vo.buy.BuyProductVo;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.buy.BuyBaseParam;
import gr;
import java.util.ArrayList;

public class BuyOrderManagerAdapter
  extends BaseAdapter
{
  private Context context;
  private ArrayList<BuyOrderVo> itemList;
  private LayoutInflater mInflater;
  
  public BuyOrderManagerAdapter(Context paramContext, ArrayList<BuyOrderVo> paramArrayList)
  {
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.itemList = paramArrayList;
    this.context = paramContext;
  }
  
  private void initProductImg(LinearLayout paramLinearLayout, ArrayList<BuyProductVo> paramArrayList)
  {
    paramLinearLayout.removeAllViews();
    int i = 0;
    while ((i < paramArrayList.size()) && (i < 4))
    {
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(PublicUtil.dip2px(50.0F), PublicUtil.dip2px(50.0F));
      localLayoutParams.setMargins(0, 0, PublicUtil.dip2px(10.0F), 0);
      RemoteImageView localRemoteImageView = new RemoteImageView(this.context);
      localRemoteImageView.setScaleType(ImageView.ScaleType.FIT_XY);
      localRemoteImageView.setDefaultImage(Integer.valueOf(2130837617));
      localRemoteImageView.setImageUrl(((BuyProductVo)paramArrayList.get(i)).getPicPath());
      paramLinearLayout.addView(localRemoteImageView, localLayoutParams);
      i += 1;
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
    label158:
    BuyOrderVo localBuyOrderVo;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903059, null);
      paramViewGroup = new gr();
      paramViewGroup.a = ((LinearLayout)paramView.findViewById(2131361923));
      paramViewGroup.i = ((LinearLayout)paramView.findViewById(2131361926));
      paramViewGroup.j = ((RelativeLayout)paramView.findViewById(2131361927));
      paramViewGroup.b = ((RemoteImageView)paramView.findViewById(2131361928));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131361929));
      paramViewGroup.h = ((TextView)paramView.findViewById(2131361930));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131361932));
      paramViewGroup.f = ((TextView)paramView.findViewById(2131361931));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131361925));
      paramViewGroup.g = ((TextView)paramView.findViewById(2131361924));
      paramView.setTag(paramViewGroup);
      localBuyOrderVo = (BuyOrderVo)this.itemList.get(paramInt);
      if (localBuyOrderVo != null)
      {
        if ((localBuyOrderVo.getOrderItem() == null) || (localBuyOrderVo.getOrderItem().size() != 1)) {
          break label429;
        }
        paramViewGroup.b.setImageUrl(((BuyProductVo)localBuyOrderVo.getOrderItem().get(0)).getPicPath());
        paramViewGroup.d.setText(((BuyProductVo)localBuyOrderVo.getOrderItem().get(0)).getTitle());
        paramViewGroup.h.setText(localBuyOrderVo.getStandardValue());
        paramViewGroup.i.setVisibility(8);
        paramViewGroup.i.removeAllViews();
        paramViewGroup.j.setVisibility(0);
      }
    }
    for (;;)
    {
      paramViewGroup.g.setText("订单号: " + localBuyOrderVo.getOrderNumber());
      paramViewGroup.e.setText("￥" + localBuyOrderVo.getTotalPrice());
      paramViewGroup.f.setText("共 " + localBuyOrderVo.getTotalNumber() + " 件商品");
      paramViewGroup.c.setTextColor(-7829368);
      switch (FunctionPublic.str2int(localBuyOrderVo.getStatus()))
      {
      default: 
        return paramView;
        paramViewGroup = (gr)paramView.getTag();
        break label158;
        label429:
        if ((localBuyOrderVo.getOrderItem() != null) && (localBuyOrderVo.getOrderItem().size() > 1))
        {
          paramViewGroup.i.setVisibility(0);
          paramViewGroup.j.setVisibility(8);
          initProductImg(paramViewGroup.i, localBuyOrderVo.getOrderItem());
        }
        break;
      }
    }
    paramViewGroup.c.setBackgroundResource(2130837851);
    return paramView;
    paramViewGroup.c.setBackgroundResource(2130837854);
    return paramView;
    if (localBuyOrderVo.getType() == BuyBaseParam.PAYTYPE_ONLINE)
    {
      paramViewGroup.c.setBackgroundResource(2130837855);
      return paramView;
    }
    paramViewGroup.c.setBackgroundResource(2130837857);
    return paramView;
    paramViewGroup.c.setBackgroundResource(2130837856);
    return paramView;
    paramViewGroup.c.setBackgroundResource(2130837852);
    return paramView;
    paramViewGroup.c.setBackgroundResource(2130837853);
    return paramView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/adapter/BuyOrderManagerAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */