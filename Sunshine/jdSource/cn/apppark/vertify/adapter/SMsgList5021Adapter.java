package cn.apppark.vertify.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.dyn.DynMsgListReturnVo;
import cn.apppark.mcd.vo.dyn.DynMsgListVo;
import cn.apppark.mcd.widget.RemoteImageView;
import java.util.ArrayList;
import ui;

public class SMsgList5021Adapter
  extends TempBaseAdapter
{
  private ArrayList<DynMsgListReturnVo> itemList;
  private LayoutInflater mInflater;
  private DynMsgListVo pageItem;
  
  public SMsgList5021Adapter(Context paramContext, DynMsgListVo paramDynMsgListVo, ArrayList<DynMsgListReturnVo> paramArrayList)
  {
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.pageItem = paramDynMsgListVo;
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
    DynMsgListReturnVo localDynMsgListReturnVo;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903162, null);
      paramViewGroup = new ui();
      paramViewGroup.a = ((RelativeLayout)paramView.findViewById(2131362583));
      paramViewGroup.b = ((RemoteImageView)paramView.findViewById(2131362584));
      paramViewGroup.f = ((TextView)paramView.findViewById(2131362589));
      paramViewGroup.g = ((TextView)paramView.findViewById(2131362590));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131362587));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131362588));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131362591));
      paramViewGroup.h = ((ImageView)paramView.findViewById(2131362586));
      paramViewGroup.a.setLayoutParams(new AbsListView.LayoutParams(-1, PublicUtil.dip2px(80.0F)));
      paramView.setTag(paramViewGroup);
      localDynMsgListReturnVo = (DynMsgListReturnVo)this.itemList.get(paramInt);
      if (localDynMsgListReturnVo != null)
      {
        paramViewGroup.c.setText(localDynMsgListReturnVo.getTitle());
        paramViewGroup.d.setText(localDynMsgListReturnVo.getNote());
        paramViewGroup.e.setText(localDynMsgListReturnVo.getCreateTime());
        if (!StringUtil.isNotNull(localDynMsgListReturnVo.getPicUrl())) {
          break label338;
        }
        paramViewGroup.b.setVisibility(0);
        paramViewGroup.b.setDefaultImage(Integer.valueOf(2130837617));
        paramViewGroup.b.setImageUrlCorner(localDynMsgListReturnVo.getPicUrl(), 5);
        label250:
        paramViewGroup.h.setVisibility(8);
        if (!"1".equals(localDynMsgListReturnVo.getType())) {
          break label350;
        }
        paramViewGroup.h.setVisibility(0);
        paramViewGroup.h.setImageResource(2130837655);
      }
    }
    for (;;)
    {
      paramViewGroup.e.setText(localDynMsgListReturnVo.getCreateTime());
      paramViewGroup.g.setText(localDynMsgListReturnVo.getCommentCount());
      paramViewGroup.f.setText(localDynMsgListReturnVo.getBrowseCount());
      return paramView;
      paramViewGroup = (ui)paramView.getTag();
      break;
      label338:
      paramViewGroup.b.setVisibility(8);
      break label250;
      label350:
      if ("2".equals(localDynMsgListReturnVo.getType()))
      {
        paramViewGroup.h.setVisibility(0);
        paramViewGroup.h.setImageResource(2130837641);
      }
      else if ("3".equals(localDynMsgListReturnVo.getType()))
      {
        paramViewGroup.h.setVisibility(0);
        paramViewGroup.h.setImageResource(2130837659);
      }
      else
      {
        paramViewGroup.h.setVisibility(8);
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/SMsgList5021Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */