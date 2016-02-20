package cn.apppark.vertify.activity.buy.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.buy.BuyOrderVo;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.buy.BuyBuyCar;
import gi;
import gj;
import gk;
import java.util.ArrayList;

public class BuyBuyCarAdapter
  extends BaseAdapter
{
  private static int CHANGE_NUM = 2;
  private static int DEL = 1;
  BuyBuyCar a;
  private Context context;
  private LayoutInflater inflater = null;
  private ArrayList<BuyOrderVo> list;
  private EditText mCurrentFocusEdit;
  
  public BuyBuyCarAdapter(Context paramContext, BuyBuyCar paramBuyBuyCar, ArrayList<BuyOrderVo> paramArrayList)
  {
    this.context = paramContext;
    this.list = paramArrayList;
    this.a = paramBuyBuyCar;
    int i = 0;
    while (i < paramArrayList.size())
    {
      ((BuyOrderVo)paramArrayList.get(i)).setOldNumber(((BuyOrderVo)paramArrayList.get(i)).getNumber());
      i += 1;
    }
    this.inflater = LayoutInflater.from(paramContext);
  }
  
  private void changeNnm(BuyBuyCarAdapter.ViewHolder paramViewHolder, int paramInt1, int paramInt2, String paramString, boolean paramBoolean)
  {
    if (StringUtil.isNotZero(paramViewHolder.i.getText().toString())) {}
    for (paramInt1 = Integer.parseInt(paramViewHolder.i.getText().toString()) + paramInt1;; paramInt1 = 0)
    {
      if (paramInt1 <= 1)
      {
        paramViewHolder.h.setBackgroundResource(2130837523);
        paramInt1 = 1;
      }
      for (;;)
      {
        if (paramBoolean) {
          paramViewHolder.i.setText(Integer.toString(paramInt1));
        }
        ((BuyOrderVo)this.list.get(paramInt2)).setNumber(paramInt1);
        this.a.setTotalPrice(this.list);
        this.a.updateChangeStatus();
        paramViewHolder.d.setText("数量:" + paramInt1);
        paramViewHolder.b.setText(String.format("%.2f", new Object[] { Double.valueOf(Double.parseDouble(paramString) * paramInt1) }));
        return;
        paramViewHolder.h.setBackgroundResource(2130837522);
      }
    }
  }
  
  public int getCount()
  {
    return this.list.size();
  }
  
  public Object getItem(int paramInt)
  {
    return this.list.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = new BuyBuyCarAdapter.ViewHolder();
    paramViewGroup = this.inflater.inflate(2130903044, null);
    paramView.a = ((TextView)paramViewGroup.findViewById(2131361838));
    paramView.b = ((TextView)paramViewGroup.findViewById(2131361844));
    paramView.c = ((TextView)paramViewGroup.findViewById(2131361835));
    paramView.e = ((TextView)paramViewGroup.findViewById(2131361836));
    paramView.g = ((Button)paramViewGroup.findViewById(2131361843));
    paramView.h = ((Button)paramViewGroup.findViewById(2131361841));
    paramView.f = ((Button)paramViewGroup.findViewById(2131361845));
    paramView.k = ((LinearLayout)paramViewGroup.findViewById(2131361840));
    paramView.l = ((LinearLayout)paramViewGroup.findViewById(2131361837));
    paramView.i = ((EditText)paramViewGroup.findViewById(2131361842));
    paramView.d = ((TextView)paramViewGroup.findViewById(2131361839));
    paramView.j = ((RemoteImageView)paramViewGroup.findViewById(2131361834));
    ButtonColorFilter.setButtonFocusChanged(paramView.g);
    ButtonColorFilter.setButtonFocusChanged(paramView.h);
    ButtonColorFilter.setButtonFocusChanged(paramView.f);
    paramViewGroup.setTag(paramView);
    BuyOrderVo localBuyOrderVo = (BuyOrderVo)this.list.get(paramInt);
    if (localBuyOrderVo != null)
    {
      if (localBuyOrderVo.isShowEdit() != true) {
        break label521;
      }
      paramView.l.setVisibility(8);
      paramView.f.setVisibility(0);
      paramView.k.setVisibility(0);
    }
    for (;;)
    {
      paramView.g.setOnClickListener(new BuyBuyCarAdapter.MyOnClick(this, paramView, localBuyOrderVo.getPrice(), 1, paramInt));
      paramView.h.setOnClickListener(new BuyBuyCarAdapter.MyOnClick(this, paramView, localBuyOrderVo.getPrice(), -1, paramInt));
      paramView.f.setOnClickListener(new BuyBuyCarAdapter.MyOnClick(this, paramInt));
      paramView.e.setText(localBuyOrderVo.getStandardValue());
      paramView.a.setText("单价:" + localBuyOrderVo.getPrice());
      paramView.c.setText(localBuyOrderVo.getTitle());
      paramView.d.setText("数量:" + localBuyOrderVo.getNumber());
      paramView.b.setText(String.format("%.2f", new Object[] { Double.valueOf(Double.parseDouble(localBuyOrderVo.getPrice()) * Integer.parseInt(localBuyOrderVo.getNumber())) }));
      paramView.i.setText(localBuyOrderVo.getNumber());
      paramView.i.addTextChangedListener(new gk(this, paramView, localBuyOrderVo.getPrice(), 0, paramInt));
      paramView.i.setOnFocusChangeListener(new gi(this, paramView.i));
      paramView.i.setOnTouchListener(new gj(this, paramView.i));
      paramView.j.setImageUrl(localBuyOrderVo.getPicPath());
      return paramViewGroup;
      label521:
      paramView.l.setVisibility(0);
      paramView.f.setVisibility(4);
      paramView.k.setVisibility(8);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */