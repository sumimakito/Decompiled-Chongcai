package cn.apppark.vertify.adapter;

import android.content.Context;
import android.graphics.Color;
import android.text.TextPaint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.dyn.DynProductReturnVo;
import cn.apppark.mcd.vo.dyn.DynProductVo;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.tieba.TBaseParam;
import java.util.ArrayList;
import uk;

public class SProductCard5033Adapter
  extends TempBaseAdapter
{
  int a;
  int b;
  int c;
  private Context context;
  private ArrayList<DynProductReturnVo> itemList;
  private LayoutInflater mInflater;
  private DynProductVo pageItem;
  
  public SProductCard5033Adapter(Context paramContext, DynProductVo paramDynProductVo, ArrayList<DynProductReturnVo> paramArrayList)
  {
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.pageItem = paramDynProductVo;
    this.itemList = paramArrayList;
    this.context = paramContext;
    this.a = PublicUtil.dip2px(15.0F);
    if (YYGYContants.POSITION_TOP.equals(paramDynProductVo.getStyle_tabPosition()))
    {
      this.b = (YYGYContants.screenWidth - this.a * 2);
      this.c = (this.b / 58 * 27);
      return;
    }
    this.b = (YYGYContants.screenWidth - this.a * 4);
    this.c = (this.b / 58 * 27);
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
      paramView = this.mInflater.inflate(2130903169, null);
      paramViewGroup = new uk();
      paramViewGroup.a = ((RelativeLayout)paramView.findViewById(2131362647));
      paramViewGroup.b = ((LinearLayout)paramView.findViewById(2131362649));
      paramViewGroup.c = ((RemoteImageView)paramView.findViewById(2131362648));
      paramViewGroup.g = ((TextView)paramView.findViewById(2131362653));
      paramViewGroup.h = ((TextView)paramView.findViewById(2131362654));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131362650));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131362651));
      paramViewGroup.f = ((TextView)paramView.findViewById(2131362652));
      paramViewGroup.f.getPaint().setFlags(16);
      localObject = new RelativeLayout.LayoutParams(this.b, this.c);
      ((RelativeLayout.LayoutParams)localObject).setMargins(this.a, this.a, this.a, this.a);
      paramViewGroup.c.setLayoutParams((ViewGroup.LayoutParams)localObject);
      paramView.setTag(paramViewGroup);
      localObject = (DynProductReturnVo)this.itemList.get(paramInt);
      if (localObject != null)
      {
        paramViewGroup.c.setDefaultImage(Integer.valueOf(2130837617));
        paramViewGroup.c.setImageUrl(((DynProductReturnVo)localObject).getPicPath());
        paramInt = Color.parseColor("#000000");
        if (!"1".equals(((DynProductReturnVo)localObject).getType())) {
          break label390;
        }
        paramViewGroup.d.setText(TBaseParam.getSpanStrStartPic(this.context, ((DynProductReturnVo)localObject).getTitle(), 2130837779, paramInt, 24, 13));
        label278:
        paramViewGroup.e.setText("¥" + ((DynProductReturnVo)localObject).getPrice());
        paramViewGroup.f.setText("¥" + ((DynProductReturnVo)localObject).getOriPrice());
        if (!"0".equals(((DynProductReturnVo)localObject).getOriPrice())) {
          break label493;
        }
        paramViewGroup.f.setVisibility(4);
      }
    }
    for (;;)
    {
      paramViewGroup.h.setText(((DynProductReturnVo)localObject).getCommentCount());
      paramViewGroup.g.setText(((DynProductReturnVo)localObject).getSoldCount());
      return paramView;
      paramViewGroup = (uk)paramView.getTag();
      break;
      label390:
      if ("2".equals(((DynProductReturnVo)localObject).getType()))
      {
        paramViewGroup.d.setText(TBaseParam.getSpanStrStartPic(this.context, ((DynProductReturnVo)localObject).getTitle(), 2130837770, paramInt, 24, 13));
        break label278;
      }
      if ("3".equals(((DynProductReturnVo)localObject).getType()))
      {
        paramViewGroup.d.setText(TBaseParam.getSpanStrStartPic(this.context, ((DynProductReturnVo)localObject).getTitle(), 2130837783, paramInt, 24, 13));
        break label278;
      }
      paramViewGroup.d.setText(((DynProductReturnVo)localObject).getTitle());
      break label278;
      label493:
      paramViewGroup.f.setVisibility(0);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/SProductCard5033Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */