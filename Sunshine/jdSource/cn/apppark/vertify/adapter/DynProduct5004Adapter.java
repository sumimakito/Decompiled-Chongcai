package cn.apppark.vertify.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.dyn.DynProductReturnVo;
import cn.apppark.mcd.vo.dyn.DynProductVo;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.tieba.TBaseParam;
import java.util.ArrayList;
import tz;

public class DynProduct5004Adapter
  extends TempBaseAdapter
{
  private Context context;
  private ArrayList<DynProductReturnVo> itemList;
  private LayoutInflater mInflater;
  private DynProductVo pageItem;
  
  public DynProduct5004Adapter(Context paramContext, DynProductVo paramDynProductVo, ArrayList<DynProductReturnVo> paramArrayList)
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
      paramView = this.mInflater.inflate(2130903106, null);
      paramViewGroup = new tz();
      paramViewGroup.a = ((RelativeLayout)paramView.findViewById(2131362315));
      paramViewGroup.b = ((RemoteImageView)paramView.findViewById(2131362316));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131362317));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131362321));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131362319));
      paramViewGroup.f = ((TextView)paramView.findViewById(2131362320));
      paramViewGroup.g = ((TextView)paramView.findViewById(2131362322));
      paramViewGroup.f.getPaint().setFlags(16);
      FunctionPublic.setBackgroundWithSel(paramViewGroup.a, this.pageItem.getStyle_rowBgType(), this.pageItem.getStyle_rowBgPic(), this.pageItem.getStyle_rowBgColor());
      if (paramViewGroup.a.getBackground() != null) {
        paramViewGroup.a.getBackground().setAlpha(FunctionPublic.str2int(this.pageItem.getStyle_rowBgAlpha()) * 255 / 100);
      }
      FunctionPublic.setTextStyle(paramViewGroup.c, this.pageItem.getStyle_text1Size(), this.pageItem.getStyle_text1Color(), this.pageItem.getStyle_text1Bold());
      paramViewGroup.a.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
      paramView.setTag(paramViewGroup);
      localDynProductReturnVo = (DynProductReturnVo)this.itemList.get(paramInt);
      if (localDynProductReturnVo != null)
      {
        paramViewGroup.b.setDefaultImage(Integer.valueOf(2130837617));
        paramViewGroup.b.setImageUrl(localDynProductReturnVo.getPicPath());
        paramViewGroup.e.setText("￥" + localDynProductReturnVo.getPrice());
        if (!"0".equals(localDynProductReturnVo.getOriPrice())) {
          break label496;
        }
        paramViewGroup.f.setVisibility(4);
      }
    }
    for (;;)
    {
      paramViewGroup.f.setText("￥" + localDynProductReturnVo.getOriPrice());
      paramViewGroup.d.setText(this.context.getText(2131230796) + localDynProductReturnVo.getSoldCount());
      paramViewGroup.g.setText(localDynProductReturnVo.getCommentCount() + this.context.getText(2131230789));
      if (!"1".equals(localDynProductReturnVo.getType())) {
        break label507;
      }
      paramInt = FunctionPublic.convertColor(this.pageItem.getStyle_text1Color());
      paramViewGroup.c.setText(TBaseParam.getSpanStrStartPic(this.context, localDynProductReturnVo.getTitle(), 2130837779, paramInt, 26, 15));
      return paramView;
      paramViewGroup = (tz)paramView.getTag();
      break;
      label496:
      paramViewGroup.f.setVisibility(0);
    }
    label507:
    if ("2".equals(localDynProductReturnVo.getType()))
    {
      paramInt = FunctionPublic.convertColor(this.pageItem.getStyle_text1Color());
      paramViewGroup.c.setText(TBaseParam.getSpanStrStartPic(this.context, localDynProductReturnVo.getTitle(), 2130837770, paramInt, 26, 15));
      return paramView;
    }
    if ("3".equals(localDynProductReturnVo.getType()))
    {
      paramInt = FunctionPublic.convertColor(this.pageItem.getStyle_text1Color());
      paramViewGroup.c.setText(TBaseParam.getSpanStrStartPic(this.context, localDynProductReturnVo.getTitle(), 2130837783, paramInt, 26, 15));
      return paramView;
    }
    paramViewGroup.c.setText(localDynProductReturnVo.getTitle());
    return paramView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/DynProduct5004Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */