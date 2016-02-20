package cn.apppark.vertify.activity.buy.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.dyn.DynCommentReturnVo;
import cn.apppark.mcd.widget.RemoteImageView;
import go;
import java.util.ArrayList;

public class BuyMsgCommentAdapter
  extends BaseAdapter
{
  private Context context;
  private ArrayList<DynCommentReturnVo> itemList;
  private LayoutInflater mInflater;
  
  public BuyMsgCommentAdapter(Context paramContext, ArrayList<DynCommentReturnVo> paramArrayList)
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
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903051, null);
      paramViewGroup = new go();
      paramViewGroup.a = ((RemoteImageView)paramView.findViewById(2131361868));
      paramViewGroup.b = ((TextView)paramView.findViewById(2131361870));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131361872));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131361871));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131361869));
      paramView.setTag(paramViewGroup);
    }
    DynCommentReturnVo localDynCommentReturnVo;
    for (;;)
    {
      localDynCommentReturnVo = (DynCommentReturnVo)this.itemList.get(paramInt);
      if (localDynCommentReturnVo != null)
      {
        paramViewGroup.a.setDefaultImage(Integer.valueOf(2130837621));
        paramViewGroup.a.setImageUrl(localDynCommentReturnVo.getPicUrl());
        paramViewGroup.b.setText(PublicUtil.getShieldString(localDynCommentReturnVo.getUserName()));
        paramViewGroup.c.setText(localDynCommentReturnVo.getCreateTime());
        paramViewGroup.d.setText(localDynCommentReturnVo.getContent());
        if (!"1".equals(localDynCommentReturnVo.getStrType())) {
          break;
        }
        paramViewGroup.e.setVisibility(0);
        paramViewGroup.e.setBackgroundResource(2130837673);
      }
      return paramView;
      paramViewGroup = (go)paramView.getTag();
    }
    if ("2".equals(localDynCommentReturnVo.getStrType()))
    {
      paramViewGroup.e.setVisibility(0);
      paramViewGroup.e.setBackgroundResource(2130837672);
      return paramView;
    }
    paramViewGroup.e.setVisibility(8);
    return paramView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/adapter/BuyMsgCommentAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */