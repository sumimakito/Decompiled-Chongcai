package cn.apppark.vertify.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
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
import uh;

public class SMsgCard5023Adapter
  extends TempBaseAdapter
{
  int a;
  int b;
  int c;
  private Context context;
  private ArrayList<DynMsgListReturnVo> itemList;
  private LayoutInflater mInflater;
  private DynMsgListVo pageItem;
  
  public SMsgCard5023Adapter(Context paramContext, DynMsgListVo paramDynMsgListVo, ArrayList<DynMsgListReturnVo> paramArrayList)
  {
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.pageItem = paramDynMsgListVo;
    this.itemList = paramArrayList;
    this.context = paramContext;
    this.a = PublicUtil.dip2px(15.0F);
    if (YYGYContants.POSITION_TOP.equals(paramDynMsgListVo.getStyle_tabPosition())) {}
    for (this.b = (YYGYContants.screenWidth - this.a * 2);; this.b = (YYGYContants.screenWidth - this.a * 4))
    {
      this.c = (this.b / 58 * 27);
      return;
    }
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
      paramView = this.mInflater.inflate(2130903164, null);
      paramViewGroup = new uh();
      paramViewGroup.a = ((RelativeLayout)paramView.findViewById(2131362607));
      paramViewGroup.b = ((LinearLayout)paramView.findViewById(2131362609));
      paramViewGroup.c = ((RemoteImageView)paramView.findViewById(2131362608));
      paramViewGroup.f = ((TextView)paramView.findViewById(2131362612));
      paramViewGroup.g = ((TextView)paramView.findViewById(2131362613));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131362610));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131362614));
      paramViewGroup.h = ((ImageView)paramView.findViewById(2131362611));
      localObject = new RelativeLayout.LayoutParams(this.b, this.c);
      ((RelativeLayout.LayoutParams)localObject).setMargins(this.a, this.a, this.a, this.a);
      paramViewGroup.c.setLayoutParams((ViewGroup.LayoutParams)localObject);
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      localObject = (DynMsgListReturnVo)this.itemList.get(paramInt);
      if (localObject != null)
      {
        paramViewGroup.c.setDefaultImage(Integer.valueOf(2130837617));
        paramViewGroup.c.setImageUrl(((DynMsgListReturnVo)localObject).getPicUrl());
        paramViewGroup.e.setText(((DynMsgListReturnVo)localObject).getCreateTime());
        paramViewGroup.h.setVisibility(8);
        setState(((DynMsgListReturnVo)localObject).getType(), paramViewGroup.d, ((DynMsgListReturnVo)localObject).getTitle(), "000000");
        paramViewGroup.e.setText(((DynMsgListReturnVo)localObject).getCreateTime());
        paramViewGroup.g.setText(((DynMsgListReturnVo)localObject).getCommentCount());
        paramViewGroup.f.setText(((DynMsgListReturnVo)localObject).getBrowseCount());
      }
      return paramView;
      paramViewGroup = (uh)paramView.getTag();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/SMsgCard5023Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */