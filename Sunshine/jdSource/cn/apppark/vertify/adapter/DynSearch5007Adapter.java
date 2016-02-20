package cn.apppark.vertify.adapter;

import android.content.Context;
import android.text.TextPaint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.dyn.Dyn5007ReturnVo;
import cn.apppark.mcd.widget.RemoteImageView;
import java.util.ArrayList;
import ue;

public class DynSearch5007Adapter
  extends TempBaseAdapter
{
  private ArrayList<Dyn5007ReturnVo> itemList;
  private LayoutInflater mInflater;
  
  public DynSearch5007Adapter(Context paramContext, ArrayList<Dyn5007ReturnVo> paramArrayList)
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
      paramView = this.mInflater.inflate(2130903115, null);
      paramViewGroup = new ue();
      paramViewGroup.a = ((TextView)paramView.findViewById(2131362377));
      paramViewGroup.b = ((LinearLayout)paramView.findViewById(2131362381));
      paramViewGroup.c = ((RemoteImageView)paramView.findViewById(2131362382));
      paramViewGroup.d = ((RemoteImageView)paramView.findViewById(2131362387));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131362383));
      paramViewGroup.f = ((TextView)paramView.findViewById(2131362384));
      paramViewGroup.g = ((TextView)paramView.findViewById(2131362385));
      paramViewGroup.h = ((TextView)paramView.findViewById(2131362386));
      paramViewGroup.g.getPaint().setFlags(16);
      paramViewGroup.i = ((LinearLayout)paramView.findViewById(2131362378));
      paramViewGroup.j = ((ImageView)paramView.findViewById(2131362379));
      paramViewGroup.k = ((TextView)paramView.findViewById(2131362380));
      paramView.setTag(paramViewGroup);
    }
    Dyn5007ReturnVo localDyn5007ReturnVo;
    for (;;)
    {
      localDyn5007ReturnVo = (Dyn5007ReturnVo)this.itemList.get(paramInt);
      if (localDyn5007ReturnVo != null)
      {
        paramViewGroup.a.setVisibility(8);
        paramViewGroup.b.setVisibility(8);
        paramViewGroup.i.setVisibility(8);
        paramViewGroup.g.setVisibility(8);
      }
      switch (localDyn5007ReturnVo.getShowType())
      {
      default: 
        return paramView;
        paramViewGroup = (ue)paramView.getTag();
      }
    }
    paramViewGroup.a.setVisibility(0);
    return paramView;
    paramViewGroup.i.setVisibility(0);
    paramViewGroup.j.setVisibility(8);
    paramViewGroup.k.setText(localDyn5007ReturnVo.getTitle());
    return paramView;
    paramViewGroup.i.setVisibility(0);
    paramViewGroup.j.setVisibility(0);
    paramViewGroup.k.setText(localDyn5007ReturnVo.getTitle());
    return paramView;
    paramViewGroup.b.setVisibility(0);
    paramViewGroup.c.setVisibility(0);
    paramViewGroup.d.setVisibility(8);
    paramViewGroup.c.setImageUrl(localDyn5007ReturnVo.getPicPath());
    paramViewGroup.e.setText(localDyn5007ReturnVo.getTitle());
    paramViewGroup.f.setText("￥" + localDyn5007ReturnVo.getPrice() + "    ");
    if ((StringUtil.isNotNull(localDyn5007ReturnVo.getOriPrice())) && (!"0".equals(localDyn5007ReturnVo.getOriPrice())))
    {
      paramViewGroup.g.setVisibility(0);
      paramViewGroup.g.setText(localDyn5007ReturnVo.getOriPrice());
    }
    for (;;)
    {
      paramViewGroup.h.setText("购买：" + localDyn5007ReturnVo.getSoldCount());
      return paramView;
      paramViewGroup.g.setVisibility(8);
    }
    paramViewGroup.b.setVisibility(0);
    paramViewGroup.d.setVisibility(0);
    paramViewGroup.c.setVisibility(8);
    paramViewGroup.d.setImageUrl(localDyn5007ReturnVo.getPicUrl());
    paramViewGroup.e.setText(localDyn5007ReturnVo.getTitle());
    paramViewGroup.f.setText(localDyn5007ReturnVo.getNote());
    paramViewGroup.h.setText(localDyn5007ReturnVo.getCreateTime());
    return paramView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/DynSearch5007Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */