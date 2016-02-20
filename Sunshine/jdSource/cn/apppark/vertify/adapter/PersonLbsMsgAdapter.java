package cn.apppark.vertify.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import cn.apppark.mcd.vo.free.LBSReturnVo;
import java.util.ArrayList;
import ug;

public class PersonLbsMsgAdapter
  extends TempBaseAdapter
{
  private Context context;
  private ArrayList<LBSReturnVo> itemList;
  private LayoutInflater mInflater;
  
  public PersonLbsMsgAdapter(Context paramContext, ArrayList<LBSReturnVo> paramArrayList)
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
      paramView = this.mInflater.inflate(2130903151, null);
      paramViewGroup = new ug();
      paramViewGroup.a = ((TextView)paramView.findViewById(2131362557));
      paramViewGroup.b = ((TextView)paramView.findViewById(2131362558));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131362559));
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      LBSReturnVo localLBSReturnVo = (LBSReturnVo)this.itemList.get(paramInt);
      if (localLBSReturnVo != null)
      {
        paramViewGroup.a.setText(localLBSReturnVo.getTitle());
        paramViewGroup.b.setText(localLBSReturnVo.getTime());
        paramViewGroup.c.setText(localLBSReturnVo.getContent());
      }
      return paramView;
      paramViewGroup = (ug)paramView.getTag();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/PersonLbsMsgAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */