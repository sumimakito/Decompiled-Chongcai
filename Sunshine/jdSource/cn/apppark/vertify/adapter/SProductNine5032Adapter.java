package cn.apppark.vertify.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.dyn.DynProductReturnVo;
import cn.apppark.mcd.vo.dyn.DynProductVo;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.tieba.TBaseParam;
import java.util.ArrayList;
import um;

public class SProductNine5032Adapter
  extends TempBaseAdapter
{
  LayoutInflater a;
  int b;
  int c;
  private int columns = 2;
  private Context context;
  int d;
  private DynProductVo pageItem;
  private ArrayList<DynProductReturnVo> reItemVoList;
  
  public SProductNine5032Adapter(Context paramContext, DynProductVo paramDynProductVo, ArrayList<DynProductReturnVo> paramArrayList)
  {
    this.context = paramContext;
    this.pageItem = paramDynProductVo;
    this.reItemVoList = paramArrayList;
    this.a = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.b = PublicUtil.dip2px(15.0F);
    if (YYGYContants.POSITION_TOP.equals(this.pageItem.getStyle_tabPosition()))
    {
      this.c = ((YYGYContants.screenWidth - this.b * 3) / 2);
      this.d = this.c;
      return;
    }
    this.c = ((YYGYContants.screenWidth - this.b * 7) / 2);
    this.d = this.c;
  }
  
  private void setState(String paramString1, TextView paramTextView, String paramString2, String paramString3)
  {
    int i;
    if ("1".equals(paramString1))
    {
      i = FunctionPublic.convertColor(paramString3);
      paramTextView.setText(TBaseParam.getSpanStrStartPic(this.context, paramString2, 2130837779, i, 24, 13));
      return;
    }
    if ("2".equals(paramString1))
    {
      i = FunctionPublic.convertColor(paramString3);
      paramTextView.setText(TBaseParam.getSpanStrStartPic(this.context, paramString2, 2130837770, i, 24, 13));
      return;
    }
    if ("3".equals(paramString1))
    {
      i = FunctionPublic.convertColor(paramString3);
      paramTextView.setText(TBaseParam.getSpanStrStartPic(this.context, paramString2, 2130837783, i, 24, 13));
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
    int j = 0;
    Object localObject;
    int i;
    if (paramView == null)
    {
      paramView = this.a.inflate(2130903168, null);
      paramViewGroup = new um();
      paramViewGroup.a = ((RelativeLayout)paramView.findViewById(2131362629));
      paramViewGroup.b = ((RemoteImageView)paramView.findViewById(2131362630));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131362631));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131362635));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131362637));
      paramViewGroup.f = ((TextView)paramView.findViewById(2131362636));
      paramViewGroup.g = ((TextView)paramView.findViewById(2131362633));
      paramViewGroup.h = ((TextView)paramView.findViewById(2131362634));
      paramViewGroup.h.setVisibility(8);
      paramViewGroup.i = ((RelativeLayout)paramView.findViewById(2131362638));
      paramViewGroup.j = ((RemoteImageView)paramView.findViewById(2131362639));
      paramViewGroup.k = ((TextView)paramView.findViewById(2131362640));
      paramViewGroup.l = ((TextView)paramView.findViewById(2131362644));
      paramViewGroup.m = ((TextView)paramView.findViewById(2131362646));
      paramViewGroup.n = ((TextView)paramView.findViewById(2131362645));
      paramViewGroup.o = ((TextView)paramView.findViewById(2131362642));
      paramViewGroup.p = ((TextView)paramView.findViewById(2131362643));
      paramViewGroup.p.setVisibility(8);
      localObject = new RelativeLayout.LayoutParams(this.c, this.d);
      ((RelativeLayout.LayoutParams)localObject).setMargins(this.b, this.b, this.b / 2, this.b);
      paramViewGroup.b.setLayoutParams((ViewGroup.LayoutParams)localObject);
      localObject = new RelativeLayout.LayoutParams(this.c, this.d);
      ((RelativeLayout.LayoutParams)localObject).setMargins(this.b / 2, this.b, this.b, this.b);
      paramViewGroup.j.setLayoutParams((ViewGroup.LayoutParams)localObject);
      paramView.setTag(paramViewGroup);
      if ((paramInt + 1) * this.columns >= this.reItemVoList.size()) {
        break label586;
      }
      i = this.columns;
      label379:
      if (i != 1) {
        break label605;
      }
      paramViewGroup.i.setVisibility(4);
      label393:
      if (j >= this.columns) {
        return paramView;
      }
      if (j < i)
      {
        localObject = (DynProductReturnVo)this.reItemVoList.get(this.columns * paramInt + j);
        if ((j != 0) || (localObject == null)) {
          break label616;
        }
        paramViewGroup.b.setImageUrl(((DynProductReturnVo)localObject).getPicPath());
        paramViewGroup.b.setDefaultImage(Integer.valueOf(2130837617));
        paramViewGroup.c.setText(((DynProductReturnVo)localObject).getTitle());
        paramViewGroup.f.setText(((DynProductReturnVo)localObject).getCommentCount());
        paramViewGroup.e.setText(((DynProductReturnVo)localObject).getSoldCount());
        paramViewGroup.g.setText("¥" + ((DynProductReturnVo)localObject).getPrice());
        paramViewGroup.b.setOnClickListener(new SProductNine5032Adapter.MyOnClick(this, (DynProductReturnVo)localObject));
        setState(((DynProductReturnVo)localObject).getType(), paramViewGroup.c, ((DynProductReturnVo)localObject).getTitle(), "000000");
      }
    }
    for (;;)
    {
      j += 1;
      break label393;
      paramViewGroup = (um)paramView.getTag();
      break;
      label586:
      i = this.reItemVoList.size() - this.columns * paramInt;
      break label379;
      label605:
      paramViewGroup.i.setVisibility(0);
      break label393;
      label616:
      if ((j == 1) && (localObject != null))
      {
        paramViewGroup.j.setImageUrl(((DynProductReturnVo)localObject).getPicPath());
        paramViewGroup.j.setDefaultImage(Integer.valueOf(2130837617));
        paramViewGroup.k.setText(((DynProductReturnVo)localObject).getTitle());
        paramViewGroup.n.setText(((DynProductReturnVo)localObject).getCommentCount());
        paramViewGroup.m.setText(((DynProductReturnVo)localObject).getSoldCount());
        paramViewGroup.o.setText("¥" + ((DynProductReturnVo)localObject).getPrice());
        paramViewGroup.j.setOnClickListener(new SProductNine5032Adapter.MyOnClick(this, (DynProductReturnVo)localObject));
        setState(((DynProductReturnVo)localObject).getType(), paramViewGroup.k, ((DynProductReturnVo)localObject).getTitle(), "000000");
      }
    }
    return paramView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/SProductNine5032Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */