package cn.apppark.vertify.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.dyn.DynMsgListReturnVo;
import cn.apppark.mcd.vo.dyn.DynMsgListVo;
import cn.apppark.mcd.widget.RemoteImageView;
import java.util.ArrayList;
import tw;

public class DynMsg5002Adapter
  extends TempBaseAdapter
{
  private ArrayList<DynMsgListReturnVo> itemList;
  private LayoutInflater mInflater;
  private DynMsgListVo pageItem;
  
  public DynMsg5002Adapter(Context paramContext, DynMsgListVo paramDynMsgListVo, ArrayList<DynMsgListReturnVo> paramArrayList)
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
      paramView = this.mInflater.inflate(2130903098, null);
      paramViewGroup = new tw();
      paramViewGroup.a = ((LinearLayout)paramView.findViewById(2131362231));
      paramViewGroup.b = ((RemoteImageView)paramView.findViewById(2131362232));
      paramViewGroup.c = ((RemoteImageView)paramView.findViewById(2131362239));
      paramViewGroup.g = ((TextView)paramView.findViewById(2131362237));
      paramViewGroup.h = ((TextView)paramView.findViewById(2131362236));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131362233));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131362234));
      paramViewGroup.f = ((TextView)paramView.findViewById(2131362238));
      paramViewGroup.i = ((ImageView)paramView.findViewById(2131362235));
      FunctionPublic.setBackgroundWithSel(paramViewGroup.a, this.pageItem.getStyle_rowBgType(), this.pageItem.getStyle_rowBgPic(), this.pageItem.getStyle_rowBgColor());
      if (paramViewGroup.a.getBackground() != null) {
        paramViewGroup.a.getBackground().setAlpha(FunctionPublic.str2int(this.pageItem.getStyle_rowBgAlpha()) * 255 / 100);
      }
      paramViewGroup.d.setVisibility(0);
      FunctionPublic.setTextStyle(paramViewGroup.d, this.pageItem.getStyle_text1Size(), this.pageItem.getStyle_text1Color(), this.pageItem.getStyle_text1Bold());
      FunctionPublic.setTextStyle(paramViewGroup.e, this.pageItem.getStyle_text2Size(), this.pageItem.getStyle_text2Color(), this.pageItem.getStyle_text2Bold());
      paramView.setTag(paramViewGroup);
      localDynMsgListReturnVo = (DynMsgListReturnVo)this.itemList.get(paramInt);
      if (localDynMsgListReturnVo != null)
      {
        paramViewGroup.d.setText(localDynMsgListReturnVo.getTitle());
        paramViewGroup.e.setText(localDynMsgListReturnVo.getNote());
        if (!StringUtil.isNotNull(localDynMsgListReturnVo.getPicUrl())) {
          break label632;
        }
        switch (this.pageItem.getStyle_picPosition())
        {
        default: 
          label360:
          paramViewGroup.i.setVisibility(8);
          if ("1".equals(localDynMsgListReturnVo.getType()))
          {
            paramViewGroup.i.setVisibility(0);
            paramViewGroup.i.setImageResource(2130837654);
          }
          break;
        }
      }
    }
    for (;;)
    {
      paramViewGroup.f.setText(localDynMsgListReturnVo.getCreateTime());
      paramViewGroup.h.setText(localDynMsgListReturnVo.getCommentCount());
      paramViewGroup.g.setText(localDynMsgListReturnVo.getBrowseCount());
      return paramView;
      paramViewGroup = (tw)paramView.getTag();
      break;
      paramViewGroup.b.setDefaultImage(Integer.valueOf(2130837617));
      paramViewGroup.b.setImageUrl(localDynMsgListReturnVo.getPicUrl());
      paramViewGroup.b.setVisibility(0);
      paramViewGroup.c.setVisibility(8);
      break label360;
      paramViewGroup.c.setDefaultImage(Integer.valueOf(2130837617));
      paramViewGroup.c.setImageUrl(localDynMsgListReturnVo.getPicUrl());
      paramViewGroup.c.setVisibility(0);
      paramViewGroup.b.setVisibility(8);
      break label360;
      if ((paramInt + 1) % 2 == 0)
      {
        paramViewGroup.c.setDefaultImage(Integer.valueOf(2130837617));
        paramViewGroup.c.setImageUrl(localDynMsgListReturnVo.getPicUrl());
        paramViewGroup.c.setVisibility(0);
        paramViewGroup.b.setVisibility(8);
        break label360;
      }
      paramViewGroup.b.setDefaultImage(Integer.valueOf(2130837617));
      paramViewGroup.b.setImageUrl(localDynMsgListReturnVo.getPicUrl());
      paramViewGroup.b.setVisibility(0);
      paramViewGroup.c.setVisibility(8);
      break label360;
      label632:
      paramViewGroup.b.setVisibility(8);
      paramViewGroup.c.setVisibility(8);
      break label360;
      if ("2".equals(localDynMsgListReturnVo.getType()))
      {
        paramViewGroup.i.setVisibility(0);
        paramViewGroup.i.setImageResource(2130837640);
      }
      else if ("3".equals(localDynMsgListReturnVo.getType()))
      {
        paramViewGroup.i.setVisibility(0);
        paramViewGroup.i.setImageResource(2130837658);
      }
      else
      {
        paramViewGroup.i.setVisibility(8);
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/DynMsg5002Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */