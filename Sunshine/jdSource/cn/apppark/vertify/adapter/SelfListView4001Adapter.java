package cn.apppark.vertify.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.free.SelfListViewItem2Vo;
import cn.apppark.mcd.vo.free.SelfListViewItemVo;
import java.util.ArrayList;
import uu;

public class SelfListView4001Adapter
  extends TempBaseAdapter
{
  private ArrayList<SelfListViewItem2Vo> itemList;
  private LayoutInflater mInflater;
  private SelfListViewItemVo pageItem;
  
  public SelfListView4001Adapter(Context paramContext, SelfListViewItemVo paramSelfListViewItemVo, ArrayList<SelfListViewItem2Vo> paramArrayList)
  {
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.pageItem = paramSelfListViewItemVo;
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
    SelfListViewItem2Vo localSelfListViewItem2Vo = (SelfListViewItem2Vo)this.itemList.get(paramInt);
    label204:
    label259:
    Drawable localDrawable;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903190, null);
      paramViewGroup = new uu();
      paramViewGroup.a = ((LinearLayout)paramView.findViewById(2131362732));
      paramViewGroup.b = ((ImageView)paramView.findViewById(2131362734));
      paramViewGroup.c = ((ImageView)paramView.findViewById(2131362737));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131362735));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131362736));
      paramViewGroup.f = ((TextView)paramView.findViewById(2131362733));
      paramViewGroup.f.setHeight(FunctionPublic.getConvertValue(this.pageItem.getStyle_rowHeight()));
      switch (FunctionPublic.str2int(this.pageItem.getStyle_text1Align()))
      {
      default: 
        switch (FunctionPublic.str2int(this.pageItem.getStyle_text2Align()))
        {
        default: 
          paramViewGroup.b.getLayoutParams().height = FunctionPublic.getConvertValue(this.pageItem.getStyle_leftPicHeight());
          paramViewGroup.b.getLayoutParams().width = FunctionPublic.getConvertValue(this.pageItem.getStyle_leftPicWidth());
          paramViewGroup.b.setScaleType(ImageView.ScaleType.FIT_XY);
          paramView.setTag(paramViewGroup);
          if (localSelfListViewItem2Vo != null)
          {
            FunctionPublic.setBackgroundWithSel(paramViewGroup.a, this.pageItem.getStyle_rowBgType(), this.pageItem.getStyle_rowBgPic(), this.pageItem.getStyle_rowBgColor());
            if (paramViewGroup.a.getBackground() != null) {
              paramViewGroup.a.getBackground().setAlpha(FunctionPublic.str2int(this.pageItem.getStyle_rowBgAlpha()) * 255 / 100);
            }
            paramViewGroup.a.setLayoutParams(new AbsListView.LayoutParams(-1, FunctionPublic.getConvertValue(this.pageItem.getStyle_rowHeight())));
            paramViewGroup.b.setVisibility(0);
            localDrawable = getCachedDrawable(localSelfListViewItem2Vo.getData_leftPic());
            paramViewGroup.b.setImageDrawable(localDrawable);
            if ((localSelfListViewItem2Vo.getData_rightPic() != null) && (!"".equals(localSelfListViewItem2Vo.getData_rightPic()))) {
              break label594;
            }
            paramViewGroup.c.setVisibility(8);
            label412:
            if ((localSelfListViewItem2Vo.getData_text1() != null) && (!"".equals(localSelfListViewItem2Vo.getData_text1()))) {
              break label635;
            }
            paramViewGroup.d.setVisibility(8);
            label442:
            if ((localSelfListViewItem2Vo.getData_text2() != null) && (!"".equals(localSelfListViewItem2Vo.getData_text2())) && (!"0".equals(this.pageItem.getStyle_showText2()))) {
              break label679;
            }
            paramViewGroup.e.setVisibility(8);
          }
          break;
        }
        break;
      }
    }
    for (;;)
    {
      paramViewGroup.d.setPadding(10, 0, 10, 0);
      paramViewGroup.e.setPadding(10, 0, 10, 0);
      return paramView;
      paramViewGroup.d.setGravity(3);
      break;
      paramViewGroup.d.setGravity(17);
      break;
      paramViewGroup.d.setGravity(5);
      break;
      paramViewGroup.e.setGravity(3);
      break label204;
      paramViewGroup.e.setGravity(17);
      break label204;
      paramViewGroup.e.setGravity(5);
      break label204;
      paramViewGroup = (uu)paramView.getTag();
      break label259;
      label594:
      paramViewGroup.c.setScaleType(ImageView.ScaleType.FIT_CENTER);
      paramViewGroup.c.setVisibility(0);
      localDrawable = getCachedDrawable(localSelfListViewItem2Vo.getData_rightPic());
      paramViewGroup.c.setImageDrawable(localDrawable);
      break label412;
      label635:
      paramViewGroup.d.setVisibility(0);
      FunctionPublic.setTextStyle(paramViewGroup.d, localSelfListViewItem2Vo.getData_text1(), this.pageItem.getStyle_text1Size(), this.pageItem.getStyle_text1Color(), this.pageItem.getStyle_text1Bold());
      break label442;
      label679:
      paramViewGroup.e.setVisibility(0);
      FunctionPublic.setTextStyle(paramViewGroup.e, localSelfListViewItem2Vo.getData_text2(), this.pageItem.getStyle_text2Size(), this.pageItem.getStyle_text2Color(), this.pageItem.getStyle_text2Bold());
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/SelfListView4001Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */