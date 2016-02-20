package cn.apppark.vertify.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.dyn.STogetherItemVo;
import cn.apppark.mcd.vo.dyn.STogetherReturnVo;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.tieba.TBaseParam;
import java.util.ArrayList;
import un;

public class STogether5041Adapter
  extends TempBaseAdapter
{
  private Context context;
  private ArrayList<STogetherReturnVo> itemList;
  private LayoutInflater mInflater;
  private STogetherItemVo pageItem;
  
  public STogether5041Adapter(Context paramContext, STogetherItemVo paramSTogetherItemVo, ArrayList<STogetherReturnVo> paramArrayList)
  {
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.pageItem = paramSTogetherItemVo;
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
    STogetherReturnVo localSTogetherReturnVo;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903174, null);
      paramViewGroup = new un();
      paramViewGroup.a = ((RelativeLayout)paramView.findViewById(2131362672));
      paramViewGroup.b = ((RemoteImageView)paramView.findViewById(2131362673));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131362675));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131362677));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131362676));
      paramViewGroup.f = ((TextView)paramView.findViewById(2131362678));
      FunctionPublic.setBackgroundWithSel(paramViewGroup.a, this.pageItem.getStyle_rowBgType(), this.pageItem.getStyle_rowBgPic(), this.pageItem.getStyle_rowBgColor());
      if (paramViewGroup.a.getBackground() != null) {
        paramViewGroup.a.getBackground().setAlpha(FunctionPublic.str2int(this.pageItem.getStyle_rowBgAlpha()) * 255 / 100);
      }
      FunctionPublic.setTextStyle(paramViewGroup.c, "16", this.pageItem.getTitleFontStyleColor(), "0");
      FunctionPublic.setTextStyle(paramViewGroup.d, "12", this.pageItem.getIntroduceFontStyleColor(), "0");
      FunctionPublic.setTextStyle(paramViewGroup.e, "12", this.pageItem.getIntroduceFontStyleColor(), "0");
      FunctionPublic.setBackground(paramViewGroup.f, this.pageItem.getStyle_rowLineBgType(), this.pageItem.getStyle_rowLineBgPic(), this.pageItem.getStyle_rowLineColor(), this.pageItem.getStyle_rowLineBgAlpha());
      paramViewGroup.f.setLayoutParams(new LinearLayout.LayoutParams(-1, PublicUtil.dip2px(FunctionPublic.str2int(this.pageItem.getStyle_rowLineHeight()))));
      paramView.setTag(paramViewGroup);
      localSTogetherReturnVo = (STogetherReturnVo)this.itemList.get(paramInt);
      if (localSTogetherReturnVo != null)
      {
        paramViewGroup.b.setDefaultImage(Integer.valueOf(2130837617));
        paramViewGroup.b.setImageUrlCorner(localSTogetherReturnVo.getPicUrl(), 5);
        if (!"1".equals(localSTogetherReturnVo.getType())) {
          break label419;
        }
        paramInt = FunctionPublic.convertColor(this.pageItem.getTitleFontStyleColor());
        paramViewGroup.c.setText(TBaseParam.getSpanStrStartPic(this.context, localSTogetherReturnVo.getTitle(), 2130837780, paramInt, 26, 15));
      }
    }
    for (;;)
    {
      paramViewGroup.d.setText(localSTogetherReturnVo.getIntroduce());
      paramViewGroup.e.setText(localSTogetherReturnVo.getDistance());
      return paramView;
      paramViewGroup = (un)paramView.getTag();
      break;
      label419:
      if ("2".equals(localSTogetherReturnVo.getType()))
      {
        paramInt = FunctionPublic.convertColor(this.pageItem.getTitleFontStyleColor());
        paramViewGroup.c.setText(TBaseParam.getSpanStrStartPic(this.context, localSTogetherReturnVo.getTitle(), 2130837641, paramInt, 26, 15));
      }
      else if ("3".equals(localSTogetherReturnVo.getType()))
      {
        paramInt = FunctionPublic.convertColor(this.pageItem.getTitleFontStyleColor());
        paramViewGroup.c.setText(TBaseParam.getSpanStrStartPic(this.context, localSTogetherReturnVo.getTitle(), 2130837783, paramInt, 26, 15));
      }
      else
      {
        paramViewGroup.c.setText(localSTogetherReturnVo.getTitle());
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/STogether5041Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */