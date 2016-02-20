package cn.apppark.vertify.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.dyn.STogetherItemVo;
import cn.apppark.mcd.vo.dyn.STogetherReturnVo;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.tieba.TBaseParam;
import java.util.ArrayList;
import up;

public class STogether5043Adapter
  extends TempBaseAdapter
{
  private Context context;
  private ArrayList<STogetherReturnVo> itemList;
  private STogetherItemVo itemVo;
  private LayoutInflater mInflater;
  
  public STogether5043Adapter(Context paramContext, STogetherItemVo paramSTogetherItemVo, ArrayList<STogetherReturnVo> paramArrayList)
  {
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.itemVo = paramSTogetherItemVo;
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
    Object localObject;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903176, null);
      paramViewGroup = new up();
      paramViewGroup.a = ((RelativeLayout)paramView.findViewById(2131362690));
      paramViewGroup.b = ((RemoteImageView)paramView.findViewById(2131362691));
      paramViewGroup.c = ((LinearLayout)paramView.findViewById(2131362692));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131362694));
      paramViewGroup.f = ((TextView)paramView.findViewById(2131362695));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131362696));
      paramViewGroup.g = ((TextView)paramView.findViewById(2131362697));
      FunctionPublic.setBackgroundWithSel(paramViewGroup.a, this.itemVo.getStyle_rowBgType(), this.itemVo.getStyle_rowBgPic(), this.itemVo.getStyle_rowBgColor());
      if (paramViewGroup.a.getBackground() != null) {
        paramViewGroup.a.getBackground().setAlpha(FunctionPublic.str2int(this.itemVo.getStyle_rowBgAlpha()) * 255 / 100);
      }
      FunctionPublic.setTextStyle(paramViewGroup.d, "16", this.itemVo.getTitleFontStyleColor(), "0");
      FunctionPublic.setTextStyle(paramViewGroup.e, "12", this.itemVo.getIntroduceFontStyleColor(), "0");
      FunctionPublic.setTextStyle(paramViewGroup.f, "12", this.itemVo.getIntroduceFontStyleColor(), "0");
      if ("0".equals(this.itemVo.getStyle_titlePosition()))
      {
        localObject = new RelativeLayout.LayoutParams(-1, -2);
        ((RelativeLayout.LayoutParams)localObject).addRule(3, 2131362691);
        paramViewGroup.c.setLayoutParams((ViewGroup.LayoutParams)localObject);
        FunctionPublic.setBackground(paramViewGroup.g, this.itemVo.getStyle_rowLineBgType(), this.itemVo.getStyle_rowLineBgPic(), this.itemVo.getStyle_rowLineColor(), this.itemVo.getStyle_rowLineBgAlpha());
        paramViewGroup.g.setLayoutParams(new LinearLayout.LayoutParams(-1, PublicUtil.dip2px(FunctionPublic.str2int(this.itemVo.getStyle_rowLineHeight()))));
        if ("1".equals(this.itemVo.getStyle_picStyle()))
        {
          localObject = new RelativeLayout.LayoutParams(-1, FunctionPublic.getConvertValue(this.itemVo.getStyle_picHeight()));
          paramViewGroup.b.setLayoutParams((ViewGroup.LayoutParams)localObject);
        }
        paramView.setTag(paramViewGroup);
        label390:
        localObject = (STogetherReturnVo)this.itemList.get(paramInt);
        if (localObject != null)
        {
          if (!StringUtil.isNotNull(((STogetherReturnVo)localObject).getPicUrl())) {
            break label681;
          }
          if ("0".equals(this.itemVo.getStyle_picStyle()))
          {
            RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, FunctionPublic.getConvertValue(this.itemVo.getSys_w() - 30) * ((STogetherReturnVo)localObject).getPicHeight() / ((STogetherReturnVo)localObject).getPicWidth());
            paramViewGroup.b.setLayoutParams(localLayoutParams);
          }
          paramViewGroup.b.setDefaultImage(Integer.valueOf(2130837617));
          paramViewGroup.b.setVisibility(0);
          paramViewGroup.b.setImageUrl(((STogetherReturnVo)localObject).getPicUrl());
          label510:
          if (!"1".equals(((STogetherReturnVo)localObject).getType())) {
            break label693;
          }
          paramInt = FunctionPublic.convertColor(this.itemVo.getTitleFontStyleColor());
          paramViewGroup.d.setText(TBaseParam.getSpanStrStartPic(this.context, ((STogetherReturnVo)localObject).getTitle(), 2130837780, paramInt, 26, 15));
        }
      }
    }
    for (;;)
    {
      paramViewGroup.e.setText(((STogetherReturnVo)localObject).getIntroduce());
      paramViewGroup.f.setText(((STogetherReturnVo)localObject).getDistance());
      return paramView;
      FunctionPublic.setBackground(paramViewGroup.c, this.itemVo.getStyle_titleBgType(), this.itemVo.getStyle_titleBgPic(), this.itemVo.getStyle_titleBgColor());
      if ((paramViewGroup.c.getBackground() == null) || ("0".equals(this.itemVo.getStyle_titleBgType()))) {
        break;
      }
      paramViewGroup.c.getBackground().setAlpha(FunctionPublic.str2int(this.itemVo.getStyle_titleBgAlpha()) * 255 / 100);
      break;
      paramViewGroup = (up)paramView.getTag();
      break label390;
      label681:
      paramViewGroup.b.setVisibility(8);
      break label510;
      label693:
      if ("2".equals(((STogetherReturnVo)localObject).getType()))
      {
        paramInt = FunctionPublic.convertColor(this.itemVo.getTitleFontStyleColor());
        paramViewGroup.d.setText(TBaseParam.getSpanStrStartPic(this.context, ((STogetherReturnVo)localObject).getTitle(), 2130837641, paramInt, 26, 15));
      }
      else if ("3".equals(((STogetherReturnVo)localObject).getType()))
      {
        paramInt = FunctionPublic.convertColor(this.itemVo.getTitleFontStyleColor());
        paramViewGroup.d.setText(TBaseParam.getSpanStrStartPic(this.context, ((STogetherReturnVo)localObject).getTitle(), 2130837783, paramInt, 26, 15));
      }
      else
      {
        paramViewGroup.d.setText(((STogetherReturnVo)localObject).getTitle());
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/STogether5043Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */