package cn.apppark.vertify.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.dyn.DynMsgListReturnVo;
import cn.apppark.mcd.vo.dyn.DynMsgListVo;
import cn.apppark.mcd.widget.RemoteImageView;
import java.util.ArrayList;
import ty;

public class DynMsg5011Adapter
  extends TempBaseAdapter
{
  private ArrayList<DynMsgListReturnVo> itemList;
  private LayoutInflater mInflater;
  private DynMsgListVo pageItem;
  
  public DynMsg5011Adapter(Context paramContext, DynMsgListVo paramDynMsgListVo, ArrayList<DynMsgListReturnVo> paramArrayList)
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
    RelativeLayout.LayoutParams localLayoutParams;
    label277:
    DynMsgListReturnVo localDynMsgListReturnVo;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903100, null);
      paramViewGroup = new ty();
      paramViewGroup.a = ((RelativeLayout)paramView.findViewById(2131362249));
      paramViewGroup.b = ((LinearLayout)paramView.findViewById(2131362251));
      paramViewGroup.c = ((RemoteImageView)paramView.findViewById(2131362250));
      paramViewGroup.f = ((TextView)paramView.findViewById(2131362255));
      paramViewGroup.g = ((TextView)paramView.findViewById(2131362254));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131362252));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131362256));
      paramViewGroup.h = ((ImageView)paramView.findViewById(2131362253));
      FunctionPublic.setBackgroundWithSel(paramViewGroup.a, this.pageItem.getStyle_rowBgType(), this.pageItem.getStyle_rowBgPic(), this.pageItem.getStyle_rowBgColor());
      if (paramViewGroup.a.getBackground() != null) {
        paramViewGroup.a.getBackground().setAlpha(FunctionPublic.str2int(this.pageItem.getStyle_rowBgAlpha()) * 255 / 100);
      }
      paramViewGroup.d.setVisibility(0);
      FunctionPublic.setTextStyle(paramViewGroup.d, this.pageItem.getStyle_text1Size(), this.pageItem.getStyle_text1Color(), this.pageItem.getStyle_text1Bold());
      if ("0".equals(this.pageItem.getStyle_titlePosition()))
      {
        localLayoutParams = new RelativeLayout.LayoutParams(-1, -2);
        localLayoutParams.addRule(3, 2131362250);
        paramViewGroup.b.setLayoutParams(localLayoutParams);
        paramView.setTag(paramViewGroup);
        localDynMsgListReturnVo = (DynMsgListReturnVo)this.itemList.get(paramInt);
        if (localDynMsgListReturnVo != null)
        {
          paramViewGroup.d.setText(localDynMsgListReturnVo.getTitle());
          if (!StringUtil.isNotNull(localDynMsgListReturnVo.getPicUrl())) {
            break label593;
          }
          if (!"1".equals(this.pageItem.getStyle_picStyle())) {
            break label565;
          }
          localLayoutParams = new RelativeLayout.LayoutParams(-1, FunctionPublic.getConvertValue(this.pageItem.getStyle_picHeight()));
          label353:
          paramViewGroup.c.setLayoutParams(localLayoutParams);
          paramViewGroup.c.setDefaultImage(Integer.valueOf(2130837617));
          paramViewGroup.c.setVisibility(0);
          paramViewGroup.c.setImageUrl(localDynMsgListReturnVo.getPicUrl());
          label394:
          paramViewGroup.h.setVisibility(8);
          if (!"1".equals(localDynMsgListReturnVo.getType())) {
            break label605;
          }
          paramViewGroup.h.setVisibility(0);
          paramViewGroup.h.setImageResource(2130837654);
        }
      }
    }
    for (;;)
    {
      paramViewGroup.e.setText(localDynMsgListReturnVo.getCreateTime());
      paramViewGroup.g.setText(localDynMsgListReturnVo.getCommentCount());
      paramViewGroup.f.setText(localDynMsgListReturnVo.getBrowseCount());
      return paramView;
      FunctionPublic.setBackground(paramViewGroup.b, this.pageItem.getStyle_titleBgType(), this.pageItem.getStyle_titleBgPic(), this.pageItem.getStyle_titleBgColor());
      if ((paramViewGroup.b.getBackground() == null) || ("0".equals(this.pageItem.getStyle_titleBgType()))) {
        break;
      }
      paramViewGroup.b.getBackground().setAlpha(FunctionPublic.str2int(this.pageItem.getStyle_titleBgAlpha()) * 255 / 100);
      break;
      paramViewGroup = (ty)paramView.getTag();
      break label277;
      label565:
      localLayoutParams = new RelativeLayout.LayoutParams(-1, YYGYContants.screenWidth * localDynMsgListReturnVo.getPicHeight() / localDynMsgListReturnVo.getPicWidth());
      break label353;
      label593:
      paramViewGroup.c.setVisibility(8);
      break label394;
      label605:
      if ("2".equals(localDynMsgListReturnVo.getType()))
      {
        paramViewGroup.h.setVisibility(0);
        paramViewGroup.h.setImageResource(2130837640);
      }
      else if ("3".equals(localDynMsgListReturnVo.getType()))
      {
        paramViewGroup.h.setVisibility(0);
        paramViewGroup.h.setImageResource(2130837658);
      }
      else
      {
        paramViewGroup.h.setVisibility(8);
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/DynMsg5011Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */