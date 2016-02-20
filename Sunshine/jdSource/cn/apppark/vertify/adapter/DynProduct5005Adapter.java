package cn.apppark.vertify.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.dyn.DynProductReturnVo;
import cn.apppark.mcd.vo.dyn.DynProductVo;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.free.dyn.DynProductNine5005;
import cn.apppark.vertify.activity.tieba.TBaseParam;
import java.util.ArrayList;
import ua;

public class DynProduct5005Adapter
  extends TempBaseAdapter
{
  LayoutInflater a;
  DynProductNine5005 b;
  private int columns = 2;
  private Context context;
  private DynProductVo pageItem;
  private FreePageVo pageVo;
  private ArrayList<DynProductReturnVo> reItemVoList;
  
  public DynProduct5005Adapter(DynProductNine5005 paramDynProductNine5005, Context paramContext, FreePageVo paramFreePageVo, DynProductVo paramDynProductVo, ArrayList<DynProductReturnVo> paramArrayList)
  {
    this.context = paramContext;
    this.pageVo = paramFreePageVo;
    this.pageItem = paramDynProductVo;
    this.reItemVoList = paramArrayList;
    this.b = paramDynProductNine5005;
    this.a = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }
  
  private void setState(String paramString1, TextView paramTextView, String paramString2, String paramString3)
  {
    int i;
    if ("1".equals(paramString1))
    {
      i = FunctionPublic.convertColor(paramString3);
      paramTextView.setText(TBaseParam.getSpanStrStartPic(this.context, paramString2, 2130837779, i, 26, 15));
      return;
    }
    if ("2".equals(paramString1))
    {
      i = FunctionPublic.convertColor(paramString3);
      paramTextView.setText(TBaseParam.getSpanStrStartPic(this.context, paramString2, 2130837770, i, 26, 15));
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
    int i;
    label450:
    label464:
    int j;
    label467:
    DynProductReturnVo localDynProductReturnVo;
    if (paramView == null)
    {
      paramView = this.a.inflate(2130903107, null);
      paramViewGroup = new ua();
      paramViewGroup.a = ((RelativeLayout)paramView.findViewById(2131362324));
      paramViewGroup.b = ((RemoteImageView)paramView.findViewById(2131362325));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131362326));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131362328));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131362329));
      paramViewGroup.f = ((TextView)paramView.findViewById(2131362330));
      paramViewGroup.e.getPaint().setFlags(16);
      paramViewGroup.g = ((RelativeLayout)paramView.findViewById(2131362331));
      paramViewGroup.h = ((RemoteImageView)paramView.findViewById(2131362332));
      paramViewGroup.i = ((TextView)paramView.findViewById(2131362333));
      paramViewGroup.j = ((TextView)paramView.findViewById(2131362335));
      paramViewGroup.k = ((TextView)paramView.findViewById(2131362336));
      paramViewGroup.l = ((TextView)paramView.findViewById(2131362337));
      paramViewGroup.k.getPaint().setFlags(16);
      FunctionPublic.setTextStyle(paramViewGroup.c, this.pageItem.getStyle_text1Size(), this.pageItem.getStyle_text1Color(), this.pageItem.getStyle_text1Bold());
      FunctionPublic.setTextStyle(paramViewGroup.i, this.pageItem.getStyle_text1Size(), this.pageItem.getStyle_text1Color(), this.pageItem.getStyle_text1Bold());
      paramViewGroup.b.getLayoutParams().height = FunctionPublic.getConvertValue(145);
      paramViewGroup.h.getLayoutParams().height = FunctionPublic.getConvertValue(145);
      FunctionPublic.setBackgroundWithSel(paramViewGroup.a, this.pageItem.getStyle_rowBgType(), this.pageItem.getStyle_rowBgPic(), this.pageItem.getStyle_rowBgColor());
      if (paramViewGroup.a.getBackground() != null) {
        paramViewGroup.a.getBackground().setAlpha(FunctionPublic.str2int(this.pageItem.getStyle_rowBgAlpha()) * 255 / 100);
      }
      FunctionPublic.setBackgroundWithSel(paramViewGroup.g, this.pageItem.getStyle_rowBgType(), this.pageItem.getStyle_rowBgPic(), this.pageItem.getStyle_rowBgColor());
      if (paramViewGroup.g.getBackground() != null) {
        paramViewGroup.g.getBackground().setAlpha(FunctionPublic.str2int(this.pageItem.getStyle_rowBgAlpha()) * 255 / 100);
      }
      paramView.setTag(paramViewGroup);
      if ((paramInt + 1) * this.columns >= this.reItemVoList.size()) {
        break label744;
      }
      i = this.columns;
      if (i != 1) {
        break label763;
      }
      paramViewGroup.g.setVisibility(4);
      j = 0;
      if (j >= this.columns) {
        return paramView;
      }
      if (j < i)
      {
        localDynProductReturnVo = (DynProductReturnVo)this.reItemVoList.get(this.columns * paramInt + j);
        if ((j != 0) || (localDynProductReturnVo == null)) {
          break label785;
        }
        paramViewGroup.b.setImageUrl(localDynProductReturnVo.getPicPath());
        paramViewGroup.b.setDefaultImage(Integer.valueOf(2130837617));
        paramViewGroup.d.setText("￥" + localDynProductReturnVo.getPrice());
        paramViewGroup.e.setText("￥" + localDynProductReturnVo.getOriPrice());
        if (!"0".equals(localDynProductReturnVo.getOriPrice())) {
          break label774;
        }
        paramViewGroup.e.setVisibility(4);
        paramViewGroup.f.setText(this.context.getText(2131230790) + localDynProductReturnVo.getSoldCount() + "/" + localDynProductReturnVo.getCommentCount() + this.context.getText(2131230789));
        paramViewGroup.a.setOnClickListener(new DynProduct5005Adapter.MyOnClick(this, localDynProductReturnVo, 1));
        setState(localDynProductReturnVo.getType(), paramViewGroup.c, localDynProductReturnVo.getTitle(), this.pageItem.getStyle_text1Color());
      }
    }
    label744:
    label763:
    label774:
    label785:
    while ((j != 1) || (localDynProductReturnVo == null)) {
      for (;;)
      {
        j += 1;
        break label467;
        paramViewGroup = (ua)paramView.getTag();
        break;
        i = this.reItemVoList.size() - this.columns * paramInt;
        break label450;
        paramViewGroup.g.setVisibility(0);
        break label464;
        paramViewGroup.e.setVisibility(0);
      }
    }
    paramViewGroup.h.setImageUrl(localDynProductReturnVo.getPicPath());
    paramViewGroup.h.setDefaultImage(Integer.valueOf(2130837617));
    paramViewGroup.j.setText("￥" + localDynProductReturnVo.getPrice());
    paramViewGroup.k.setText("￥" + localDynProductReturnVo.getOriPrice());
    if ("0".equals(localDynProductReturnVo.getOriPrice())) {
      paramViewGroup.k.setVisibility(4);
    }
    for (;;)
    {
      paramViewGroup.l.setText(this.context.getText(2131230790) + localDynProductReturnVo.getSoldCount() + "/" + localDynProductReturnVo.getCommentCount() + this.context.getText(2131230789));
      paramViewGroup.g.setOnClickListener(new DynProduct5005Adapter.MyOnClick(this, localDynProductReturnVo, 1));
      setState(localDynProductReturnVo.getType(), paramViewGroup.i, localDynProductReturnVo.getTitle(), this.pageItem.getStyle_text1Color());
      break;
      paramViewGroup.k.setVisibility(0);
    }
    return paramView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/DynProduct5005Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */