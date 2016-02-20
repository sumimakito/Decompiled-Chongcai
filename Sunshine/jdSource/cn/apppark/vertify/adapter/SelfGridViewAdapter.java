package cn.apppark.vertify.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.free.SelfGridItem2Vo;
import cn.apppark.mcd.vo.free.SelfGridItemVo;
import java.util.ArrayList;
import ut;

public class SelfGridViewAdapter
  extends TempBaseAdapter
{
  private ArrayList<SelfGridItem2Vo> item2List;
  private int itemWidth = 1;
  private LayoutInflater mInflater;
  private SelfGridItemVo vo;
  
  public SelfGridViewAdapter(Context paramContext, SelfGridItemVo paramSelfGridItemVo, ArrayList<SelfGridItem2Vo> paramArrayList)
  {
    this.vo = paramSelfGridItemVo;
    this.item2List = paramArrayList;
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.itemWidth = (((int)(paramSelfGridItemVo.getSys_w() * YYGYContants.scaleUnite) - FunctionPublic.getConvertValue(paramSelfGridItemVo.getStyle_margin()) * 2 - (FunctionPublic.str2int(paramSelfGridItemVo.getStyle_columnNum()) - 1) * FunctionPublic.getConvertValue(paramSelfGridItemVo.getStyle_columnSpace())) / FunctionPublic.str2int(paramSelfGridItemVo.getStyle_columnNum()));
  }
  
  public int getCount()
  {
    return this.item2List.size();
  }
  
  public Object getItem(int paramInt)
  {
    return this.item2List.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903188, null);
      paramViewGroup = new ut(this);
      paramViewGroup.a = ((LinearLayout)paramView.findViewById(2131362729));
      paramViewGroup.b = ((ImageView)paramView.findViewById(2131362730));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131362731));
      FunctionPublic.setBackground(paramViewGroup.a, this.vo.getStyle_itemBgType(), this.vo.getStyle_itemBgPic(), this.vo.getStyle_itemBgColor(), this.vo.getStyle_itemBgAlpha());
      paramViewGroup.b.getLayoutParams().width = this.itemWidth;
      paramViewGroup.b.getLayoutParams().height = this.itemWidth;
      paramViewGroup.c.getLayoutParams().width = this.itemWidth;
      FunctionPublic.setTextStyle(paramViewGroup.c, this.vo.getStyle_text1Size(), this.vo.getStyle_text1Color(), this.vo.getStyle_text1Bold());
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      SelfGridItem2Vo localSelfGridItem2Vo = (SelfGridItem2Vo)this.item2List.get(paramInt);
      if (localSelfGridItem2Vo != null)
      {
        if (localSelfGridItem2Vo.getData_pic() != null)
        {
          paramViewGroup.b.setVisibility(0);
          Drawable localDrawable = getCachedDrawable(localSelfGridItem2Vo.getData_pic());
          paramViewGroup.b.setImageDrawable(localDrawable);
          paramViewGroup.b.setScaleType(ImageView.ScaleType.FIT_XY);
        }
        if ((localSelfGridItem2Vo.getData_text() != null) && (!localSelfGridItem2Vo.getData_text().equals("")))
        {
          paramViewGroup.c.setVisibility(0);
          paramViewGroup.c.setText(localSelfGridItem2Vo.getData_text());
        }
      }
      return paramView;
      paramViewGroup = (ut)paramView.getTag();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/SelfGridViewAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */