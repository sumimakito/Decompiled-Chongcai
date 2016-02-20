package cn.apppark.vertify.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.imge.CacheUtil;
import cn.apppark.mcd.vo.free.SelfMutiListViewItem2Vo;
import cn.apppark.mcd.vo.free.SelfMutiListViewItem2VoParent;
import cn.apppark.mcd.vo.free.SelfMutiListViewItemVo;
import java.util.ArrayList;
import java.util.List;
import ux;
import uy;

public class SelfMutiListViewAdapter
  extends BaseExpandableListAdapter
{
  private Context context;
  private SelfMutiListViewItemVo mutiListViewItemVo;
  private ArrayList<SelfMutiListViewItem2VoParent> parentItem1 = new ArrayList();
  
  public SelfMutiListViewAdapter(Context paramContext, SelfMutiListViewItemVo paramSelfMutiListViewItemVo, ArrayList<SelfMutiListViewItem2VoParent> paramArrayList)
  {
    this.mutiListViewItemVo = paramSelfMutiListViewItemVo;
    this.context = paramContext;
    this.parentItem1 = paramArrayList;
  }
  
  public Object getChild(int paramInt1, int paramInt2)
  {
    return ((SelfMutiListViewItem2VoParent)this.parentItem1.get(paramInt1)).getChildItemList().get(paramInt2);
  }
  
  public long getChildId(int paramInt1, int paramInt2)
  {
    return paramInt2;
  }
  
  public View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    SelfMutiListViewItem2Vo localSelfMutiListViewItem2Vo = (SelfMutiListViewItem2Vo)((SelfMutiListViewItem2VoParent)this.parentItem1.get(paramInt1)).getChildItemList().get(paramInt2);
    if (paramView == null)
    {
      paramView = LayoutInflater.from(this.context).inflate(2130903190, null);
      paramViewGroup = new ux(this);
      paramViewGroup.a = ((ImageView)paramView.findViewById(2131362734));
      paramViewGroup.b = ((ImageView)paramView.findViewById(2131362737));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131362735));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131362736));
      paramViewGroup.e = ((RelativeLayout)paramView.findViewById(2131362732));
      paramView.setTag(paramViewGroup);
      if (localSelfMutiListViewItem2Vo != null)
      {
        paramViewGroup.e.getLayoutParams().height = FunctionPublic.getConvertValue(this.mutiListViewItemVo.getStyle_rowHeight());
        FunctionPublic.setBackground(this.mutiListViewItemVo.getStyle_rowBgPic(), paramViewGroup.e);
        if ((localSelfMutiListViewItem2Vo.getData_leftPic() != null) && (!"".equals(localSelfMutiListViewItem2Vo.getData_leftPic()))) {
          break label398;
        }
        paramViewGroup.a.setVisibility(8);
        label209:
        if ((localSelfMutiListViewItem2Vo.getData_rightPic() != null) && (!"".equals(localSelfMutiListViewItem2Vo.getData_rightPic()))) {
          break label486;
        }
        paramViewGroup.b.setVisibility(8);
        label240:
        FunctionPublic.setTextStyle(paramViewGroup.c, "", this.mutiListViewItemVo.getStyle_text1Size(), this.mutiListViewItemVo.getStyle_text1Color(), "");
        if ((localSelfMutiListViewItem2Vo.getData_text1() != null) && (!"".equals(localSelfMutiListViewItem2Vo.getData_text1()))) {
          break label521;
        }
        paramViewGroup.c.setVisibility(8);
        label297:
        FunctionPublic.setTextStyle(paramViewGroup.d, "", this.mutiListViewItemVo.getStyle_text2Size(), this.mutiListViewItemVo.getStyle_text2Color(), "");
        if ((localSelfMutiListViewItem2Vo.getData_text2() != null) && (!"".equals(localSelfMutiListViewItem2Vo.getData_text2()))) {
          break label546;
        }
        paramViewGroup.d.setVisibility(8);
      }
    }
    for (;;)
    {
      paramViewGroup.c.setPadding(10, 0, 10, 0);
      paramViewGroup.d.setPadding(10, 0, 10, 0);
      return paramView;
      paramViewGroup = (ux)paramView.getTag();
      break;
      label398:
      paramViewGroup.a.getLayoutParams().height = FunctionPublic.getConvertValue(this.mutiListViewItemVo.getStyle_rowHeight());
      paramViewGroup.a.getLayoutParams().width = FunctionPublic.getConvertValue(this.mutiListViewItemVo.getStyle_rowHeight());
      paramViewGroup.a.setScaleType(ImageView.ScaleType.FIT_CENTER);
      paramViewGroup.a.setVisibility(0);
      Drawable localDrawable = HQCHApplication.cacheUtil.getCachedDrawable(localSelfMutiListViewItem2Vo.getData_leftPic());
      paramViewGroup.a.setImageDrawable(localDrawable);
      break label209;
      label486:
      paramViewGroup.b.setVisibility(0);
      localDrawable = HQCHApplication.cacheUtil.getCachedDrawable(localSelfMutiListViewItem2Vo.getData_rightPic());
      paramViewGroup.b.setImageDrawable(localDrawable);
      break label240;
      label521:
      paramViewGroup.c.setVisibility(0);
      paramViewGroup.c.setText(localSelfMutiListViewItem2Vo.getData_text1());
      break label297;
      label546:
      paramViewGroup.d.setVisibility(0);
      paramViewGroup.d.setText(localSelfMutiListViewItem2Vo.getData_text2());
    }
  }
  
  public int getChildrenCount(int paramInt)
  {
    return ((SelfMutiListViewItem2VoParent)this.parentItem1.get(paramInt)).getChildItemList().size();
  }
  
  public Object getGroup(int paramInt)
  {
    return this.parentItem1.get(paramInt);
  }
  
  public int getGroupCount()
  {
    return this.parentItem1.size();
  }
  
  public long getGroupId(int paramInt)
  {
    return paramInt;
  }
  
  public View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    SelfMutiListViewItem2Vo localSelfMutiListViewItem2Vo = (SelfMutiListViewItem2Vo)this.parentItem1.get(paramInt);
    if (paramView == null)
    {
      paramView = LayoutInflater.from(this.context).inflate(2130903190, null);
      paramViewGroup = new uy(this);
      paramViewGroup.a = ((ImageView)paramView.findViewById(2131362734));
      paramViewGroup.b = ((TextView)paramView.findViewById(2131362735));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131362736));
      paramViewGroup.d = ((RelativeLayout)paramView.findViewById(2131362732));
      paramView.setTag(paramViewGroup);
      if (localSelfMutiListViewItem2Vo != null)
      {
        paramViewGroup.d.getLayoutParams().height = FunctionPublic.getConvertValue(this.mutiListViewItemVo.getStyle_rowHeight());
        FunctionPublic.setBackground(this.mutiListViewItemVo.getStyle_rowBgPic(), paramViewGroup.d);
        if ((localSelfMutiListViewItem2Vo.getData_leftPic() != null) && (!"".equals(localSelfMutiListViewItem2Vo.getData_leftPic()))) {
          break label331;
        }
        paramViewGroup.a.setVisibility(8);
        label175:
        FunctionPublic.setTextStyle(paramViewGroup.b, "", this.mutiListViewItemVo.getStyle_text1Size(), this.mutiListViewItemVo.getStyle_text1Color(), "");
        if ((localSelfMutiListViewItem2Vo.getData_text1() != null) && (!"".equals(localSelfMutiListViewItem2Vo.getData_text1()))) {
          break label419;
        }
        paramViewGroup.b.setVisibility(8);
        label232:
        FunctionPublic.setTextStyle(paramViewGroup.c, "", this.mutiListViewItemVo.getStyle_text2Size(), this.mutiListViewItemVo.getStyle_text2Color(), "");
        if ((localSelfMutiListViewItem2Vo.getData_text2() != null) && (!"".equals(localSelfMutiListViewItem2Vo.getData_text2()))) {
          break label444;
        }
        paramViewGroup.c.setVisibility(8);
      }
    }
    for (;;)
    {
      paramViewGroup.b.setPadding(10, 0, 10, 0);
      paramViewGroup.c.setPadding(10, 0, 10, 0);
      return paramView;
      paramViewGroup = (uy)paramView.getTag();
      break;
      label331:
      paramViewGroup.a.getLayoutParams().height = FunctionPublic.getConvertValue(this.mutiListViewItemVo.getStyle_rowHeight());
      paramViewGroup.a.getLayoutParams().width = FunctionPublic.getConvertValue(this.mutiListViewItemVo.getStyle_rowHeight());
      paramViewGroup.a.setScaleType(ImageView.ScaleType.FIT_CENTER);
      paramViewGroup.a.setVisibility(0);
      Drawable localDrawable = HQCHApplication.cacheUtil.getCachedDrawable(localSelfMutiListViewItem2Vo.getData_leftPic());
      paramViewGroup.a.setImageDrawable(localDrawable);
      break label175;
      label419:
      paramViewGroup.b.setVisibility(0);
      paramViewGroup.b.setText(localSelfMutiListViewItem2Vo.getData_text1());
      break label232;
      label444:
      paramViewGroup.c.setVisibility(0);
      paramViewGroup.c.setText(localSelfMutiListViewItem2Vo.getData_text2());
    }
  }
  
  public boolean hasStableIds()
  {
    return true;
  }
  
  public boolean isChildSelectable(int paramInt1, int paramInt2)
  {
    return true;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/SelfMutiListViewAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */