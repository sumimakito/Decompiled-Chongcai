package cn.apppark.vertify.adapter;

import android.content.Context;
import android.text.TextPaint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.dyn.Dyn5007ReturnVo;
import cn.apppark.mcd.widget.RemoteImageView;
import java.util.ArrayList;
import uf;

public class DynSearch5007Adapter2
  extends TempBaseAdapter
{
  private ArrayList<Dyn5007ReturnVo> itemList;
  private LayoutInflater mInflater;
  private int searchType;
  
  public DynSearch5007Adapter2(Context paramContext, ArrayList<Dyn5007ReturnVo> paramArrayList, int paramInt)
  {
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.itemList = paramArrayList;
    this.searchType = paramInt;
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
      paramView = this.mInflater.inflate(2130903116, null);
      paramViewGroup = new uf();
      paramViewGroup.a = ((LinearLayout)paramView.findViewById(2131362388));
      paramViewGroup.b = ((RemoteImageView)paramView.findViewById(2131362389));
      paramViewGroup.c = ((RemoteImageView)paramView.findViewById(2131362394));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131362390));
      paramViewGroup.f = ((TextView)paramView.findViewById(2131362391));
      paramViewGroup.g = ((TextView)paramView.findViewById(2131362393));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131362392));
      paramViewGroup.d.getPaint().setFlags(16);
      paramView.setTag(paramViewGroup);
    }
    Dyn5007ReturnVo localDyn5007ReturnVo;
    for (;;)
    {
      localDyn5007ReturnVo = (Dyn5007ReturnVo)this.itemList.get(paramInt);
      if (localDyn5007ReturnVo != null) {
        paramViewGroup.d.setVisibility(8);
      }
      switch (this.searchType)
      {
      default: 
        return paramView;
        paramViewGroup = (uf)paramView.getTag();
      }
    }
    paramViewGroup.a.setVisibility(0);
    paramViewGroup.b.setVisibility(0);
    paramViewGroup.c.setVisibility(8);
    paramViewGroup.b.setImageUrl(localDyn5007ReturnVo.getPicPath());
    paramViewGroup.d.setVisibility(0);
    paramViewGroup.e.setText(localDyn5007ReturnVo.getTitle());
    paramViewGroup.f.setText("￥" + localDyn5007ReturnVo.getPrice() + "    ");
    if ((StringUtil.isNotNull(localDyn5007ReturnVo.getOriPrice())) && (!"0".equals(localDyn5007ReturnVo.getOriPrice())))
    {
      paramViewGroup.d.setVisibility(0);
      paramViewGroup.d.setText(localDyn5007ReturnVo.getOriPrice());
    }
    paramViewGroup.g.setText("购买：" + localDyn5007ReturnVo.getSoldCount());
    return paramView;
    paramViewGroup.a.setVisibility(0);
    paramViewGroup.c.setVisibility(0);
    paramViewGroup.b.setVisibility(8);
    paramViewGroup.c.setImageUrl(localDyn5007ReturnVo.getPicUrl());
    paramViewGroup.d.setVisibility(8);
    paramViewGroup.e.setText(localDyn5007ReturnVo.getTitle());
    paramViewGroup.f.setText(localDyn5007ReturnVo.getContent());
    paramViewGroup.g.setText(localDyn5007ReturnVo.getNote());
    return paramView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/DynSearch5007Adapter2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */