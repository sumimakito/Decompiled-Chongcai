package cn.apppark.vertify.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.dyn.STogetherItemVo;
import cn.apppark.mcd.vo.dyn.STogetherReturnVo;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.tieba.TBaseParam;
import java.util.ArrayList;
import uo;

public class STogether5042Adapter
  extends TempBaseAdapter
{
  LayoutInflater a;
  int b;
  int c;
  private int columns = 2;
  private Context context;
  int d;
  private STogetherItemVo pageItem;
  private FreePageVo pageVo;
  private ArrayList<STogetherReturnVo> reItemVoList;
  
  public STogether5042Adapter(Context paramContext, FreePageVo paramFreePageVo, STogetherItemVo paramSTogetherItemVo, ArrayList<STogetherReturnVo> paramArrayList)
  {
    this.context = paramContext;
    this.pageVo = paramFreePageVo;
    this.pageItem = paramSTogetherItemVo;
    this.reItemVoList = paramArrayList;
    this.a = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.b = PublicUtil.dip2px(15.0F);
    this.c = ((FunctionPublic.getConvertValue(paramSTogetherItemVo.getSys_w()) - this.b * 3) / 2);
    this.d = this.c;
  }
  
  private void setState(String paramString1, TextView paramTextView, String paramString2, String paramString3)
  {
    int i;
    if ("1".equals(paramString1))
    {
      i = FunctionPublic.convertColor(paramString3);
      paramTextView.setText(TBaseParam.getSpanStrStartPic(this.context, paramString2, 2130837780, i, 26, 15));
      return;
    }
    if ("2".equals(paramString1))
    {
      i = FunctionPublic.convertColor(paramString3);
      paramTextView.setText(TBaseParam.getSpanStrStartPic(this.context, paramString2, 2130837641, i, 26, 15));
      return;
    }
    if ("3".equals(paramString1))
    {
      i = FunctionPublic.convertColor(paramString3);
      paramTextView.setText(TBaseParam.getSpanStrStartPic(this.context, paramString2, 2130837783, i, 26, 15));
      return;
    }
    paramTextView.setText(paramString2);
  }
  
  public int getCount()
  {
    return (this.reItemVoList.size() + 1) / this.columns;
  }
  
  public Object getItem(int paramInt)
  {
    return this.reItemVoList.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject;
    int i;
    label466:
    label480:
    int j;
    if (paramView == null)
    {
      paramView = this.a.inflate(2130903175, null);
      paramViewGroup = new uo();
      paramViewGroup.a = ((RelativeLayout)paramView.findViewById(2131362680));
      paramViewGroup.b = ((RemoteImageView)paramView.findViewById(2131362681));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131362682));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131362683));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131362684));
      paramViewGroup.f = ((RelativeLayout)paramView.findViewById(2131362685));
      paramViewGroup.g = ((RemoteImageView)paramView.findViewById(2131362686));
      paramViewGroup.h = ((TextView)paramView.findViewById(2131362687));
      paramViewGroup.i = ((TextView)paramView.findViewById(2131362688));
      paramViewGroup.j = ((TextView)paramView.findViewById(2131362689));
      FunctionPublic.setTextStyle(paramViewGroup.c, "16", this.pageItem.getTitleFontStyleColor(), "0");
      FunctionPublic.setTextStyle(paramViewGroup.h, "16", this.pageItem.getTitleFontStyleColor(), "0");
      FunctionPublic.setTextStyle(paramViewGroup.d, "12", this.pageItem.getIntroduceFontStyleColor(), "0");
      FunctionPublic.setTextStyle(paramViewGroup.i, "12", this.pageItem.getIntroduceFontStyleColor(), "0");
      FunctionPublic.setTextStyle(paramViewGroup.e, "12", this.pageItem.getIntroduceFontStyleColor(), "0");
      FunctionPublic.setTextStyle(paramViewGroup.j, "12", this.pageItem.getIntroduceFontStyleColor(), "0");
      localObject = new RelativeLayout.LayoutParams(-1, this.d);
      paramViewGroup.b.setLayoutParams((ViewGroup.LayoutParams)localObject);
      localObject = new RelativeLayout.LayoutParams(-1, this.d);
      paramViewGroup.g.setLayoutParams((ViewGroup.LayoutParams)localObject);
      FunctionPublic.setBackgroundWithSel(paramViewGroup.a, this.pageItem.getStyle_rowBgType(), this.pageItem.getStyle_rowBgPic(), this.pageItem.getStyle_rowBgColor());
      if (paramViewGroup.a.getBackground() != null) {
        paramViewGroup.a.getBackground().setAlpha(FunctionPublic.str2int(this.pageItem.getStyle_rowBgAlpha()) * 255 / 100);
      }
      FunctionPublic.setBackgroundWithSel(paramViewGroup.f, this.pageItem.getStyle_rowBgType(), this.pageItem.getStyle_rowBgPic(), this.pageItem.getStyle_rowBgColor());
      if (paramViewGroup.f.getBackground() != null) {
        paramViewGroup.f.getBackground().setAlpha(FunctionPublic.str2int(this.pageItem.getStyle_rowBgAlpha()) * 255 / 100);
      }
      paramView.setTag(paramViewGroup);
      if ((paramInt + 1) * this.columns >= this.reItemVoList.size()) {
        break label659;
      }
      i = this.columns;
      if (i != 1) {
        break label678;
      }
      paramViewGroup.f.setVisibility(4);
      j = 0;
      label483:
      if (j >= this.columns) {
        return paramView;
      }
      if (j < i)
      {
        localObject = (STogetherReturnVo)this.reItemVoList.get(this.columns * paramInt + j);
        if ((j != 0) || (localObject == null)) {
          break label701;
        }
        paramViewGroup.b.setImageUrl(((STogetherReturnVo)localObject).getPicUrl());
        paramViewGroup.b.setDefaultImage(Integer.valueOf(2130837617));
        paramViewGroup.d.setText(((STogetherReturnVo)localObject).getIntroduce());
        if (!StringUtil.isNotNull(((STogetherReturnVo)localObject).getDistance())) {
          break label689;
        }
        paramViewGroup.e.setText(((STogetherReturnVo)localObject).getDistance());
        paramViewGroup.e.setVisibility(0);
        paramViewGroup.a.setOnClickListener(new STogether5042Adapter.MyOnClick(this, (STogetherReturnVo)localObject));
        setState(((STogetherReturnVo)localObject).getType(), paramViewGroup.c, ((STogetherReturnVo)localObject).getTitle(), this.pageItem.getTitleFontStyleColor());
      }
    }
    label659:
    label678:
    label689:
    label701:
    while ((j != 1) || (localObject == null)) {
      for (;;)
      {
        j += 1;
        break label483;
        paramViewGroup = (uo)paramView.getTag();
        break;
        i = this.reItemVoList.size() - this.columns * paramInt;
        break label466;
        paramViewGroup.f.setVisibility(0);
        break label480;
        paramViewGroup.e.setVisibility(8);
      }
    }
    paramViewGroup.g.setImageUrl(((STogetherReturnVo)localObject).getPicUrl());
    paramViewGroup.g.setDefaultImage(Integer.valueOf(2130837617));
    paramViewGroup.i.setText(((STogetherReturnVo)localObject).getIntroduce());
    if (StringUtil.isNotNull(((STogetherReturnVo)localObject).getDistance()))
    {
      paramViewGroup.j.setText(((STogetherReturnVo)localObject).getDistance());
      paramViewGroup.j.setVisibility(0);
    }
    for (;;)
    {
      paramViewGroup.f.setOnClickListener(new STogether5042Adapter.MyOnClick(this, (STogetherReturnVo)localObject));
      setState(((STogetherReturnVo)localObject).getType(), paramViewGroup.h, ((STogetherReturnVo)localObject).getTitle(), this.pageItem.getTitleFontStyleColor());
      break;
      paramViewGroup.j.setVisibility(8);
    }
    return paramView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/STogether5042Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */