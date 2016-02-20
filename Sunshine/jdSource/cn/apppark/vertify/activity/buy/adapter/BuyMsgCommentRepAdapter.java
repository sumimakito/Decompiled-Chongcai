package cn.apppark.vertify.activity.buy.adapter;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.dyn.DynCommentReturnVo;
import cn.apppark.mcd.widget.RemoteImageView;
import gp;
import java.util.ArrayList;

public class BuyMsgCommentRepAdapter
  extends BaseAdapter
{
  private Context context;
  private ArrayList<DynCommentReturnVo> itemList;
  private LayoutInflater mInflater;
  
  public BuyMsgCommentRepAdapter(Context paramContext, ArrayList<DynCommentReturnVo> paramArrayList)
  {
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
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
    DynCommentReturnVo localDynCommentReturnVo;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903053, null);
      paramViewGroup = new gp();
      paramViewGroup.a = ((LinearLayout)paramView.findViewById(2131361878));
      paramViewGroup.b = ((RemoteImageView)paramView.findViewById(2131361879));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131361880));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131361882));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131361881));
      paramViewGroup.f = ((TextView)paramView.findViewById(2131361883));
      paramView.setTag(paramViewGroup);
      localDynCommentReturnVo = (DynCommentReturnVo)this.itemList.get(paramInt);
      if (localDynCommentReturnVo != null)
      {
        if (paramInt != 0) {
          break label251;
        }
        paramViewGroup.a.setBackgroundResource(2130837931);
        paramViewGroup.f.setVisibility(0);
        paramViewGroup.f.setText(localDynCommentReturnVo.getNote());
        paramViewGroup.f.setOnClickListener(new BuyMsgCommentRepAdapter.1(this));
      }
    }
    for (;;)
    {
      paramViewGroup.b.setDefaultImage(Integer.valueOf(2130837621));
      paramViewGroup.b.setImageUrl(localDynCommentReturnVo.getPicUrl());
      paramViewGroup.c.setText(PublicUtil.getShieldString(localDynCommentReturnVo.getUserName()));
      paramViewGroup.d.setText(localDynCommentReturnVo.getCreateTime());
      paramViewGroup.e.setText(Html.fromHtml(localDynCommentReturnVo.getContent()));
      return paramView;
      paramViewGroup = (gp)paramView.getTag();
      break;
      label251:
      paramViewGroup.a.setBackgroundResource(2130837940);
      paramViewGroup.f.setVisibility(8);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */