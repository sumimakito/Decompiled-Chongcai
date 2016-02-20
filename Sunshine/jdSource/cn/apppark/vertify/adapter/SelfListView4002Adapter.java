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
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.free.SelfListViewItem2Vo;
import cn.apppark.mcd.vo.free.SelfListViewItemVo;
import java.util.ArrayList;
import uv;

public class SelfListView4002Adapter
  extends TempBaseAdapter
{
  private ArrayList<SelfListViewItem2Vo> itemList;
  private LayoutInflater mInflater;
  private SelfListViewItemVo pageItem;
  
  public SelfListView4002Adapter(Context paramContext, SelfListViewItemVo paramSelfListViewItemVo, ArrayList<SelfListViewItem2Vo> paramArrayList)
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
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903191, null);
      paramViewGroup = new uv();
      paramViewGroup.a = ((LinearLayout)paramView.findViewById(2131362739));
      paramViewGroup.b = ((ImageView)paramView.findViewById(2131362738));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131362740));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131362741));
      paramView.setTag(paramViewGroup);
      if (localSelfListViewItem2Vo != null)
      {
        FunctionPublic.setBackgroundNine(this.pageItem.getStyle_rowBgPic(), paramViewGroup.a);
        paramViewGroup.a.setPadding(25, 5, 5, 5);
        paramViewGroup.a.setMinimumHeight(40);
        if ((localSelfListViewItem2Vo.getData_leftPic() != null) && (!"".equals(localSelfListViewItem2Vo.getData_leftPic()))) {
          break label236;
        }
        paramViewGroup.b.setVisibility(8);
        label163:
        if ((localSelfListViewItem2Vo.getData_text1() != null) && (!"".equals(localSelfListViewItem2Vo.getData_text1()))) {
          break label317;
        }
        paramViewGroup.c.setVisibility(8);
      }
    }
    for (;;)
    {
      if ((localSelfListViewItem2Vo.getData_text2() != null) && (!"".equals(localSelfListViewItem2Vo.getData_text2()))) {
        break label361;
      }
      paramViewGroup.d.setVisibility(8);
      return paramView;
      paramViewGroup = (uv)paramView.getTag();
      break;
      label236:
      paramViewGroup.b.getLayoutParams().height = FunctionPublic.getConvertValue(this.pageItem.getStyle_rowHeight());
      paramViewGroup.b.getLayoutParams().width = FunctionPublic.getConvertValue(this.pageItem.getStyle_rowHeight());
      paramViewGroup.b.setScaleType(ImageView.ScaleType.FIT_XY);
      paramViewGroup.b.setVisibility(0);
      Drawable localDrawable = getCachedDrawable(localSelfListViewItem2Vo.getData_leftPic());
      paramViewGroup.b.setImageDrawable(localDrawable);
      break label163;
      label317:
      paramViewGroup.c.setVisibility(0);
      FunctionPublic.setTextStyle(paramViewGroup.c, localSelfListViewItem2Vo.getData_text1(), this.pageItem.getStyle_text1Size(), this.pageItem.getStyle_text1Color(), this.pageItem.getStyle_text1Bold());
    }
    label361:
    paramViewGroup.d.setVisibility(0);
    FunctionPublic.setTextStyle(paramViewGroup.d, localSelfListViewItem2Vo.getData_text2(), this.pageItem.getStyle_text2Size(), this.pageItem.getStyle_text2Color(), this.pageItem.getStyle_text2Bold());
    return paramView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/SelfListView4002Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */