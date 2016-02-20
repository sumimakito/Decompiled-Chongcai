package cn.apppark.vertify.adapter;

import android.content.Context;
import android.graphics.Color;
import android.text.TextPaint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.dyn.DynProductReturnVo;
import cn.apppark.mcd.vo.dyn.DynProductVo;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.tieba.TBaseParam;
import java.util.ArrayList;
import ul;

public class SProductList5031Adapter
  extends TempBaseAdapter
{
  private Context context;
  private ArrayList<DynProductReturnVo> itemList;
  private LayoutInflater mInflater;
  private DynProductVo pageItem;
  
  public SProductList5031Adapter(Context paramContext, DynProductVo paramDynProductVo, ArrayList<DynProductReturnVo> paramArrayList)
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
      paramView = this.mInflater.inflate(2130903167, null);
      paramViewGroup = new ul();
      paramViewGroup.a = ((RelativeLayout)paramView.findViewById(2131362618));
      paramViewGroup.b = ((RemoteImageView)paramView.findViewById(2131362619));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131362620));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131362625));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131362622));
      paramViewGroup.f = ((TextView)paramView.findViewById(2131362623));
      paramViewGroup.g = ((TextView)paramView.findViewById(2131362627));
      paramViewGroup.f.getPaint().setFlags(16);
      paramViewGroup.a.setLayoutParams(new AbsListView.LayoutParams(-1, PublicUtil.dip2px(80.0F)));
      paramView.setTag(paramViewGroup);
      localDynProductReturnVo = (DynProductReturnVo)this.itemList.get(paramInt);
      if (localDynProductReturnVo != null)
      {
        paramViewGroup.b.setDefaultImage(Integer.valueOf(2130837618));
        paramViewGroup.b.setImageUrlCorner(localDynProductReturnVo.getPicPath(), 5);
        paramViewGroup.e.setText("¥" + localDynProductReturnVo.getPrice());
        if (!"0".equals(localDynProductReturnVo.getOriPrice())) {
          break label377;
        }
        paramViewGroup.f.setVisibility(4);
      }
    }
    for (;;)
    {
      paramViewGroup.f.setText("¥" + localDynProductReturnVo.getOriPrice());
      paramViewGroup.d.setText(localDynProductReturnVo.getSoldCount());
      paramViewGroup.g.setText(localDynProductReturnVo.getCommentCount());
      paramInt = Color.parseColor("#000000");
      if (!"1".equals(localDynProductReturnVo.getType())) {
        break label388;
      }
      paramViewGroup.c.setText(TBaseParam.getSpanStrStartPic(this.context, localDynProductReturnVo.getTitle(), 2130837779, paramInt, 24, 13));
      return paramView;
      paramViewGroup = (ul)paramView.getTag();
      break;
      label377:
      paramViewGroup.f.setVisibility(0);
    }
    label388:
    if ("2".equals(localDynProductReturnVo.getType()))
    {
      paramViewGroup.c.setText(TBaseParam.getSpanStrStartPic(this.context, localDynProductReturnVo.getTitle(), 2130837770, paramInt, 24, 13));
      return paramView;
    }
    if ("3".equals(localDynProductReturnVo.getType()))
    {
      paramViewGroup.c.setText(TBaseParam.getSpanStrStartPic(this.context, localDynProductReturnVo.getTitle(), 2130837783, paramInt, 24, 13));
      return paramView;
    }
    paramViewGroup.c.setText(localDynProductReturnVo.getTitle());
    return paramView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/SProductList5031Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */