package cn.apppark.vertify.activity.buy.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import cn.apppark.mcd.vo.dyn.DynMsgListReturnVo;
import cn.apppark.mcd.widget.RemoteImageView;
import gn;
import java.util.ArrayList;

public class BuyCollectionMsgAdapter
  extends BaseAdapter
{
  private ArrayList<DynMsgListReturnVo> itemList;
  private LayoutInflater mInflater;
  
  public BuyCollectionMsgAdapter(Context paramContext, ArrayList<DynMsgListReturnVo> paramArrayList)
  {
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.itemList = paramArrayList;
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
      paramView = this.mInflater.inflate(2130903049, null);
      paramViewGroup = new gn();
      paramViewGroup.a = ((TextView)paramView.findViewById(2131361860));
      paramViewGroup.b = ((TextView)paramView.findViewById(2131361861));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131361862));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131361863));
      paramViewGroup.e = ((RemoteImageView)paramView.findViewById(2131361859));
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      DynMsgListReturnVo localDynMsgListReturnVo = (DynMsgListReturnVo)this.itemList.get(paramInt);
      if (localDynMsgListReturnVo != null)
      {
        paramViewGroup.a.setText(localDynMsgListReturnVo.getName());
        paramViewGroup.b.setText(localDynMsgListReturnVo.getNote());
        paramViewGroup.c.setText(localDynMsgListReturnVo.getCommentCount());
        paramViewGroup.d.setText(localDynMsgListReturnVo.getCollectCount());
        paramViewGroup.e.setImageUrl(localDynMsgListReturnVo.getPicPath());
      }
      return paramView;
      paramViewGroup = (gn)paramView.getTag();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */