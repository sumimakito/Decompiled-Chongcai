package cn.apppark.vertify.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.dyn.DynProductReturnVo;
import cn.apppark.mcd.vo.dyn.DynProductVo;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.tieba.TBaseParam;
import java.util.ArrayList;
import uc;

public class DynProduct5014Adapter
  extends TempBaseAdapter
{
  private Context context;
  private ArrayList<DynProductReturnVo> itemList;
  private LayoutInflater mInflater;
  private DynProductVo pageItem;
  
  public DynProduct5014Adapter(Context paramContext, DynProductVo paramDynProductVo, ArrayList<DynProductReturnVo> paramArrayList)
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
    RelativeLayout.LayoutParams localLayoutParams;
    label302:
    DynProductReturnVo localDynProductReturnVo;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903109, null);
      paramViewGroup = new uc();
      paramViewGroup.a = ((RelativeLayout)paramView.findViewById(2131362348));
      paramViewGroup.b = ((RemoteImageView)paramView.findViewById(2131362349));
      paramViewGroup.c = ((LinearLayout)paramView.findViewById(2131362350));
      paramViewGroup.d = ((LinearLayout)paramView.findViewById(2131362355));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131362351));
      paramViewGroup.g = ((TextView)paramView.findViewById(2131362354));
      paramViewGroup.f = ((TextView)paramView.findViewById(2131362353));
      paramViewGroup.g.getPaint().setFlags(16);
      paramViewGroup.h = ((TextView)paramView.findViewById(2131362356));
      paramViewGroup.i = ((TextView)paramView.findViewById(2131362357));
      FunctionPublic.setBackgroundWithSel(paramViewGroup.a, this.pageItem.getStyle_rowBgType(), this.pageItem.getStyle_rowBgPic(), this.pageItem.getStyle_rowBgColor());
      if (paramViewGroup.a.getBackground() != null) {
        paramViewGroup.a.getBackground().setAlpha(FunctionPublic.str2int(this.pageItem.getStyle_rowBgAlpha()) * 255 / 100);
      }
      paramViewGroup.e.setVisibility(0);
      FunctionPublic.setTextStyle(paramViewGroup.e, this.pageItem.getStyle_text1Size(), this.pageItem.getStyle_text1Color(), this.pageItem.getStyle_text1Bold());
      if ("0".equals(this.pageItem.getStyle_titlePosition()))
      {
        localLayoutParams = new RelativeLayout.LayoutParams(-1, -2);
        localLayoutParams.addRule(3, 2131362349);
        paramViewGroup.c.setLayoutParams(localLayoutParams);
        paramView.setTag(paramViewGroup);
        localDynProductReturnVo = (DynProductReturnVo)this.itemList.get(paramInt);
        if (localDynProductReturnVo != null)
        {
          paramViewGroup.e.setText(localDynProductReturnVo.getTitle());
          paramViewGroup.f.setText("￥" + localDynProductReturnVo.getPrice());
          if (!"0".equals(localDynProductReturnVo.getOriPrice())) {
            break label682;
          }
          paramViewGroup.g.setVisibility(4);
          label380:
          if (!StringUtil.isNotNull(localDynProductReturnVo.getPicPath())) {
            break label748;
          }
          if (!"1".equals(this.pageItem.getStyle_picStyle())) {
            break label720;
          }
          localLayoutParams = new RelativeLayout.LayoutParams(-1, FunctionPublic.getConvertValue(this.pageItem.getStyle_picHeight()));
          label426:
          paramViewGroup.b.setLayoutParams(localLayoutParams);
          paramViewGroup.b.setDefaultImage(Integer.valueOf(2130837617));
          paramViewGroup.b.setVisibility(0);
          paramViewGroup.b.setImageUrl(localDynProductReturnVo.getPicPath());
          label467:
          if (!"1".equals(localDynProductReturnVo.getType())) {
            break label760;
          }
          paramInt = FunctionPublic.convertColor(this.pageItem.getStyle_text1Color());
          paramViewGroup.e.setText(TBaseParam.getSpanStrStartPic(this.context, localDynProductReturnVo.getTitle(), 2130837779, paramInt, 26, 15));
        }
      }
    }
    for (;;)
    {
      paramViewGroup.h.setText("共售出" + localDynProductReturnVo.getSoldCount());
      paramViewGroup.i.setText(localDynProductReturnVo.getCommentCount() + "人评论");
      return paramView;
      FunctionPublic.setBackground(paramViewGroup.c, this.pageItem.getStyle_titleBgType(), this.pageItem.getStyle_titleBgPic(), this.pageItem.getStyle_titleBgColor());
      if ((paramViewGroup.c.getBackground() != null) && (!"0".equals(this.pageItem.getStyle_titleBgType()))) {
        paramViewGroup.c.getBackground().setAlpha(FunctionPublic.str2int(this.pageItem.getStyle_titleBgAlpha()) * 255 / 100);
      }
      paramViewGroup.d.setVisibility(8);
      break;
      paramViewGroup = (uc)paramView.getTag();
      break label302;
      label682:
      paramViewGroup.g.setVisibility(0);
      paramViewGroup.g.setText("￥" + localDynProductReturnVo.getOriPrice());
      break label380;
      label720:
      localLayoutParams = new RelativeLayout.LayoutParams(-1, YYGYContants.screenWidth * localDynProductReturnVo.getPicHeight() / localDynProductReturnVo.getPicWidth());
      break label426;
      label748:
      paramViewGroup.b.setVisibility(8);
      break label467;
      label760:
      if ("2".equals(localDynProductReturnVo.getType()))
      {
        paramInt = FunctionPublic.convertColor(this.pageItem.getStyle_text1Color());
        paramViewGroup.e.setText(TBaseParam.getSpanStrStartPic(this.context, localDynProductReturnVo.getTitle(), 2130837770, paramInt, 26, 15));
      }
      else if ("3".equals(localDynProductReturnVo.getType()))
      {
        paramInt = FunctionPublic.convertColor(this.pageItem.getStyle_text1Color());
        paramViewGroup.e.setText(TBaseParam.getSpanStrStartPic(this.context, localDynProductReturnVo.getTitle(), 2130837783, paramInt, 26, 15));
      }
      else
      {
        paramViewGroup.e.setText(localDynProductReturnVo.getTitle());
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/DynProduct5014Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */