package cn.apppark.vertify.activity.buy.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.apppark.mcd.vo.buy.BuyProCommentVo;
import cn.apppark.mcd.widget.RemoteImageView;
import gt;
import java.util.ArrayList;

public class BuyProCommentAdapter
  extends BaseAdapter
{
  private Context context;
  private boolean isComment;
  private ArrayList<BuyProCommentVo> itemList;
  private LayoutInflater mInflater;
  
  public BuyProCommentAdapter(Context paramContext, ArrayList<BuyProCommentVo> paramArrayList, boolean paramBoolean)
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
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903070, null);
      paramViewGroup = new gt();
      paramViewGroup.a = ((RemoteImageView)paramView.findViewById(2131362032));
      paramViewGroup.b = ((TextView)paramView.findViewById(2131362033));
      paramViewGroup.d = ((LinearLayout)paramView.findViewById(2131362036));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131362035));
      paramViewGroup.e = ((Button)paramView.findViewById(2131362034));
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      BuyProCommentVo localBuyProCommentVo = (BuyProCommentVo)this.itemList.get(paramInt);
      if (localBuyProCommentVo != null)
      {
        paramViewGroup.a.setDefaultImage(Integer.valueOf(2130837620));
        paramViewGroup.a.setImageUrl(localBuyProCommentVo.getPicPath());
        paramViewGroup.b.setText(localBuyProCommentVo.getProductName());
        if (!this.isComment) {
          break label225;
        }
        if (!"1".equals(((BuyProCommentVo)this.itemList.get(paramInt)).getIsReply())) {
          break;
        }
        paramViewGroup.d.setVisibility(0);
        paramViewGroup.c.setVisibility(0);
      }
      return paramView;
      paramViewGroup = (gt)paramView.getTag();
    }
    paramViewGroup.d.setVisibility(8);
    paramViewGroup.c.setVisibility(8);
    return paramView;
    label225:
    paramViewGroup.d.setVisibility(8);
    paramViewGroup.c.setVisibility(8);
    return paramView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/adapter/BuyProCommentAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */