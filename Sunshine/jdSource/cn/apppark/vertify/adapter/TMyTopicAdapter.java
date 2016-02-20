package cn.apppark.vertify.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import cn.apppark.mcd.vo.tieba.TMyTopicVo;
import java.util.ArrayList;
import vj;

public class TMyTopicAdapter
  extends BaseAdapter
{
  private Context context;
  private ArrayList<TMyTopicVo> itemList;
  private LayoutInflater mInflater;
  
  public TMyTopicAdapter(Context paramContext, ArrayList<TMyTopicVo> paramArrayList)
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
      paramView = this.mInflater.inflate(2130903230, paramViewGroup, false);
      paramViewGroup = new vj();
      paramViewGroup.a = ((TextView)paramView.findViewById(2131362939));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131362940));
      paramViewGroup.b = ((TextView)paramView.findViewById(2131362942));
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      TMyTopicVo localTMyTopicVo = (TMyTopicVo)this.itemList.get(paramInt);
      if (localTMyTopicVo != null)
      {
        paramViewGroup.a.setText(localTMyTopicVo.getTitle());
        paramViewGroup.c.setText(localTMyTopicVo.getTiebaName());
        paramViewGroup.b.setText(localTMyTopicVo.getCommentNum());
      }
      return paramView;
      paramViewGroup = (vj)paramView.getTag();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/TMyTopicAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */