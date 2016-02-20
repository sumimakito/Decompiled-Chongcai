package cn.apppark.vertify.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.dyn.DynProductReturnVo;
import cn.apppark.mcd.vo.dyn.DynProductVo;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.tieba.TBaseParam;
import java.util.ArrayList;
import ub;

public class DynProduct5013Adapter
  extends TempBaseAdapter
{
  private Context context;
  private ArrayList<DynProductReturnVo> itemList;
  private LayoutInflater mInflater;
  private DynProductVo pageItem;
  
  public DynProduct5013Adapter(Context paramContext, DynProductVo paramDynProductVo, ArrayList<DynProductReturnVo> paramArrayList)
  {
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.pageItem = paramDynProductVo;
    this.itemList = paramArrayList;
    this.context = paramContext;
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
    DynProductReturnVo localDynProductReturnVo;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903108, null);
      paramViewGroup = new ub();
      paramViewGroup.c = ((RelativeLayout)paramView.findViewById(2131362339));
      paramViewGroup.a = ((LinearLayout)paramView.findViewById(2131362338));
      paramViewGroup.b = ((TextView)paramView.findViewById(2131362347));
      paramViewGroup.d = ((RemoteImageView)paramView.findViewById(2131362340));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131362341));
      paramViewGroup.f = ((TextView)paramView.findViewById(2131362345));
      paramViewGroup.g = ((TextView)paramView.findViewById(2131362343));
      paramViewGroup.h = ((TextView)paramView.findViewById(2131362344));
      paramViewGroup.i = ((TextView)paramView.findViewById(2131362346));
      paramViewGroup.h.getPaint().setFlags(16);
      FunctionPublic.setBackgroundWithSel(paramViewGroup.c, this.pageItem.getStyle_rowBgType(), this.pageItem.getStyle_rowBgPic(), this.pageItem.getStyle_rowBgColor());
      if (paramViewGroup.c.getBackground() != null) {
        paramViewGroup.c.getBackground().setAlpha(FunctionPublic.str2int(this.pageItem.getStyle_rowBgAlpha()) * 255 / 100);
      }
      FunctionPublic.setTextStyle(paramViewGroup.e, this.pageItem.getStyle_text1Size(), this.pageItem.getStyle_text1Color(), this.pageItem.getStyle_text1Bold());
      FunctionPublic.setBackground(paramViewGroup.b, this.pageItem.getStyle_rowLineBgType(), this.pageItem.getStyle_rowLineBgPic(), this.pageItem.getStyle_rowLineColor());
      paramViewGroup.b.setLayoutParams(new LinearLayout.LayoutParams(-1, FunctionPublic.getConvertValue(this.pageItem.getStyle_rowLineHeight())));
      paramViewGroup.c.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
      paramView.setTag(paramViewGroup);
      localDynProductReturnVo = (DynProductReturnVo)this.itemList.get(paramInt);
      if (localDynProductReturnVo != null)
      {
        paramViewGroup.d.setDefaultImage(Integer.valueOf(2130837617));
        paramViewGroup.d.setImageUrl(localDynProductReturnVo.getPicPath());
        paramViewGroup.g.setText("￥" + localDynProductReturnVo.getPrice());
        if (!"0".equals(localDynProductReturnVo.getOriPrice())) {
          break label561;
        }
        paramViewGroup.h.setVisibility(4);
      }
    }
    for (;;)
    {
      paramViewGroup.h.setText("￥" + localDynProductReturnVo.getOriPrice());
      paramViewGroup.f.setText("购买:" + localDynProductReturnVo.getSoldCount());
      paramViewGroup.i.setText(localDynProductReturnVo.getCommentCount() + "人评论");
      if (!"1".equals(localDynProductReturnVo.getType())) {
        break label572;
      }
      paramInt = FunctionPublic.convertColor(this.pageItem.getStyle_text1Color());
      paramViewGroup.e.setText(TBaseParam.getSpanStrStartPic(this.context, localDynProductReturnVo.getTitle(), 2130837779, paramInt, 26, 15));
      return paramView;
      paramViewGroup = (ub)paramView.getTag();
      break;
      label561:
      paramViewGroup.h.setVisibility(0);
    }
    label572:
    if ("2".equals(localDynProductReturnVo.getType()))
    {
      paramInt = FunctionPublic.convertColor(this.pageItem.getStyle_text1Color());
      paramViewGroup.e.setText(TBaseParam.getSpanStrStartPic(this.context, localDynProductReturnVo.getTitle(), 2130837770, paramInt, 26, 15));
      return paramView;
    }
    if ("3".equals(localDynProductReturnVo.getType()))
    {
      paramInt = FunctionPublic.convertColor(this.pageItem.getStyle_text1Color());
      paramViewGroup.e.setText(TBaseParam.getSpanStrStartPic(this.context, localDynProductReturnVo.getTitle(), 2130837783, paramInt, 26, 15));
      return paramView;
    }
    paramViewGroup.e.setText(localDynProductReturnVo.getTitle());
    return paramView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/DynProduct5013Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */