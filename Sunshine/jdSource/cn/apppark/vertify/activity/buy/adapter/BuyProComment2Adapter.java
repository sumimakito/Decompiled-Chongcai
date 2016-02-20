package cn.apppark.vertify.activity.buy.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import cn.apppark.mcd.util.DateUtil;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.buy.BuyProCommentVo;
import gs;
import java.util.ArrayList;

public class BuyProComment2Adapter
  extends BaseAdapter
{
  private Context context;
  private boolean isComment;
  private ArrayList<BuyProCommentVo> itemList;
  private LayoutInflater mInflater;
  
  public BuyProComment2Adapter(Context paramContext, ArrayList<BuyProCommentVo> paramArrayList, boolean paramBoolean)
  {
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.itemList = paramArrayList;
    this.context = paramContext;
    this.isComment = paramBoolean;
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
    BuyProCommentVo localBuyProCommentVo;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903069, null);
      paramViewGroup = new gs();
      paramViewGroup.a = ((ImageView)paramView.findViewById(2131362023));
      paramViewGroup.b = ((ImageView)paramView.findViewById(2131362024));
      paramViewGroup.c = ((ImageView)paramView.findViewById(2131362025));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131362026));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131362027));
      paramViewGroup.f = ((TextView)paramView.findViewById(2131362028));
      paramViewGroup.g = ((TextView)paramView.findViewById(2131362029));
      paramViewGroup.h = ((TextView)paramView.findViewById(2131362031));
      paramViewGroup.i = ((TextView)paramView.findViewById(2131362030));
      paramView.setTag(paramViewGroup);
      localBuyProCommentVo = (BuyProCommentVo)this.itemList.get(paramInt);
      if (localBuyProCommentVo != null)
      {
        if (localBuyProCommentVo.getScore() != 3) {
          break label332;
        }
        paramViewGroup.a.setBackgroundResource(2130837594);
        paramViewGroup.b.setBackgroundResource(2130837546);
        paramViewGroup.c.setBackgroundResource(2130837546);
      }
    }
    for (;;)
    {
      paramViewGroup.d.setText(localBuyProCommentVo.getUserName());
      paramViewGroup.g.setText("购买时间:" + localBuyProCommentVo.getbTime());
      paramViewGroup.e.setText(DateUtil.str2Format(localBuyProCommentVo.getcTime()));
      paramViewGroup.f.setText(localBuyProCommentVo.getContent());
      if (!StringUtil.isNotNull(localBuyProCommentVo.getReplyContent())) {
        break label410;
      }
      paramViewGroup.h.setVisibility(0);
      paramViewGroup.i.setVisibility(0);
      paramViewGroup.h.setText("商家回复:" + localBuyProCommentVo.getReplyContent());
      return paramView;
      paramViewGroup = (gs)paramView.getTag();
      break;
      label332:
      if (localBuyProCommentVo.getScore() == 2)
      {
        paramViewGroup.a.setBackgroundResource(2130837594);
        paramViewGroup.b.setBackgroundResource(2130837594);
        paramViewGroup.c.setBackgroundResource(2130837546);
      }
      else if (localBuyProCommentVo.getScore() == 1)
      {
        paramViewGroup.a.setBackgroundResource(2130837594);
        paramViewGroup.b.setBackgroundResource(2130837594);
        paramViewGroup.c.setBackgroundResource(2130837594);
      }
    }
    label410:
    paramViewGroup.h.setVisibility(8);
    paramViewGroup.i.setVisibility(8);
    return paramView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */