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
import cn.apppark.mcd.vo.dyn.DynMsgListReturnVo;
import cn.apppark.mcd.vo.dyn.DynMsgListVo;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.tieba.TBaseParam;
import java.util.ArrayList;
import uj;

public class SMsgNine5022Adapter
  extends TempBaseAdapter
{
  LayoutInflater a;
  int b;
  int c;
  private int columns = 2;
  private Context context;
  int d;
  private DynMsgListVo pageItem;
  private ArrayList<DynMsgListReturnVo> reItemVoList;
  
  public SMsgNine5022Adapter(Context paramContext, DynMsgListVo paramDynMsgListVo, ArrayList<DynMsgListReturnVo> paramArrayList)
  {
    this.context = paramContext;
    this.pageItem = paramDynMsgListVo;
    this.reItemVoList = paramArrayList;
    this.a = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.b = PublicUtil.dip2px(15.0F);
    if (YYGYContants.POSITION_TOP.equals(paramDynMsgListVo.getStyle_tabPosition()))
    {
      this.c = ((YYGYContants.screenWidth - this.b * 3) / 2);
      this.d = (this.c / 4 * 3);
      return;
    }
    this.c = ((YYGYContants.screenWidth - this.b * 7) / 2);
    this.d = (this.c / 4 * 3);
  }
  
  private void setState(String paramString1, TextView paramTextView, String paramString2, String paramString3)
  {
    int i;
    if ("1".equals(paramString1))
    {
      i = FunctionPublic.convertColor(paramString3);
      paramTextView.setText(TBaseParam.getSpanStrStartPic(this.context, paramString2, 2130837655, i, 24, 13));
      return;
    }
    if ("2".equals(paramString1))
    {
      i = FunctionPublic.convertColor(paramString3);
      paramTextView.setText(TBaseParam.getSpanStrStartPic(this.context, paramString2, 2130837641, i, 24, 13));
      return;
    }
    if ("3".equals(paramString1))
    {
      i = FunctionPublic.convertColor(paramString3);
      paramTextView.setText(TBaseParam.getSpanStrStartPic(this.context, paramString2, 2130837659, i, 24, 13));
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
      paramView = this.a.inflate(2130903163, null);
      paramViewGroup = new uj();
      paramViewGroup.a = ((RelativeLayout)paramView.findViewById(2131362593));
      paramViewGroup.b = ((RemoteImageView)paramView.findViewById(2131362594));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131362595));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131362596));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131362597));
      paramViewGroup.f = ((TextView)paramView.findViewById(2131362598));
      paramViewGroup.g = ((TextView)paramView.findViewById(2131362599));
      paramViewGroup.h = ((RelativeLayout)paramView.findViewById(2131362600));
      paramViewGroup.i = ((RemoteImageView)paramView.findViewById(2131362601));
      paramViewGroup.j = ((TextView)paramView.findViewById(2131362602));
      paramViewGroup.k = ((TextView)paramView.findViewById(2131362603));
      paramViewGroup.l = ((TextView)paramView.findViewById(2131362604));
      paramViewGroup.m = ((TextView)paramView.findViewById(2131362605));
      paramViewGroup.n = ((TextView)paramView.findViewById(2131362606));
      localObject = new RelativeLayout.LayoutParams(this.c, this.d);
      ((RelativeLayout.LayoutParams)localObject).setMargins(this.b, this.b, this.b / 2, this.b);
      paramViewGroup.b.setLayoutParams((ViewGroup.LayoutParams)localObject);
      localObject = new RelativeLayout.LayoutParams(this.c, this.d);
      ((RelativeLayout.LayoutParams)localObject).setMargins(this.b / 2, this.b, this.b, this.b);
      paramViewGroup.i.setLayoutParams((ViewGroup.LayoutParams)localObject);
      paramView.setTag(paramViewGroup);
      if ((paramInt + 1) * this.columns >= this.reItemVoList.size()) {
        break label526;
      }
      i = this.columns;
      label335:
      if (i != 1) {
        break label545;
      }
      paramViewGroup.h.setVisibility(4);
      label349:
      if (j >= this.columns) {
        return paramView;
      }
      if (j < i)
      {
        localObject = (DynMsgListReturnVo)this.reItemVoList.get(this.columns * paramInt + j);
        if ((j != 0) || (localObject == null)) {
          break label556;
        }
        paramViewGroup.b.setImageUrl(((DynMsgListReturnVo)localObject).getPicUrl());
        paramViewGroup.b.setDefaultImage(Integer.valueOf(2130837617));
        paramViewGroup.c.setText(((DynMsgListReturnVo)localObject).getTitle());
        paramViewGroup.f.setText(((DynMsgListReturnVo)localObject).getCommentCount());
        paramViewGroup.e.setText(((DynMsgListReturnVo)localObject).getBrowseCount());
        paramViewGroup.g.setText(((DynMsgListReturnVo)localObject).getCreateTime());
        paramViewGroup.a.setOnClickListener(new SMsgNine5022Adapter.MyOnClick(this, (DynMsgListReturnVo)localObject));
        setState(((DynMsgListReturnVo)localObject).getType(), paramViewGroup.c, ((DynMsgListReturnVo)localObject).getTitle(), "000000");
      }
    }
    for (;;)
    {
      j += 1;
      break label349;
      paramViewGroup = (uj)paramView.getTag();
      break;
      label526:
      i = this.reItemVoList.size() - this.columns * paramInt;
      break label335;
      label545:
      paramViewGroup.h.setVisibility(0);
      break label349;
      label556:
      if ((j == 1) && (localObject != null))
      {
        paramViewGroup.i.setImageUrl(((DynMsgListReturnVo)localObject).getPicUrl());
        paramViewGroup.i.setDefaultImage(Integer.valueOf(2130837617));
        paramViewGroup.n.setText(((DynMsgListReturnVo)localObject).getCreateTime());
        paramViewGroup.j.setText(((DynMsgListReturnVo)localObject).getTitle());
        paramViewGroup.m.setText(((DynMsgListReturnVo)localObject).getCommentCount());
        paramViewGroup.l.setText(((DynMsgListReturnVo)localObject).getBrowseCount());
        paramViewGroup.h.setOnClickListener(new SMsgNine5022Adapter.MyOnClick(this, (DynMsgListReturnVo)localObject));
        setState(((DynMsgListReturnVo)localObject).getType(), paramViewGroup.j, ((DynMsgListReturnVo)localObject).getTitle(), "000000");
      }
    }
    return paramView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/SMsgNine5022Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */