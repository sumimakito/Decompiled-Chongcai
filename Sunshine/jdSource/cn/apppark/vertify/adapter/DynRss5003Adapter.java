package cn.apppark.vertify.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.dyn.DynRss5003Vo;
import cn.apppark.mcd.vo.dyn.DynRssItem5003Vo;
import java.util.ArrayList;
import ud;

public class DynRss5003Adapter
  extends TempBaseAdapter
{
  private ArrayList<DynRssItem5003Vo> itemList;
  private LayoutInflater mInflater;
  private DynRss5003Vo pageItem;
  
  public DynRss5003Adapter(Context paramContext, DynRss5003Vo paramDynRss5003Vo, ArrayList<DynRssItem5003Vo> paramArrayList)
  {
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.pageItem = paramDynRss5003Vo;
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
      paramView = this.mInflater.inflate(2130903111, null);
      paramViewGroup = new ud();
      paramViewGroup.a = ((LinearLayout)paramView.findViewById(2131362365));
      paramViewGroup.b = ((TextView)paramView.findViewById(2131362366));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131362367));
      FunctionPublic.setBackgroundWithSel(paramViewGroup.a, this.pageItem.getStyle_rowBgType(), this.pageItem.getStyle_rowBgPic(), this.pageItem.getStyle_rowBgColor());
      if (paramViewGroup.a.getBackground() != null) {
        paramViewGroup.a.getBackground().setAlpha(FunctionPublic.str2int(this.pageItem.getStyle_rowBgAlpha()) * 255 / 100);
      }
      paramViewGroup.a.setLayoutParams(new AbsListView.LayoutParams(-1, FunctionPublic.getConvertValue(this.pageItem.getStyle_rowHeight())));
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      DynRssItem5003Vo localDynRssItem5003Vo = (DynRssItem5003Vo)this.itemList.get(paramInt);
      if (localDynRssItem5003Vo != null)
      {
        paramViewGroup.b.setVisibility(0);
        FunctionPublic.setTextStyle(paramViewGroup.b, localDynRssItem5003Vo.getTitle(), this.pageItem.getStyle_text1Size(), this.pageItem.getStyle_text1Color(), this.pageItem.getStyle_text1Bold());
        FunctionPublic.setTextStyle(paramViewGroup.c, localDynRssItem5003Vo.getPubDate(), this.pageItem.getStyle_text2Size(), this.pageItem.getStyle_text2Color(), this.pageItem.getStyle_text2Bold());
      }
      return paramView;
      paramViewGroup = (ud)paramView.getTag();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/DynRss5003Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */