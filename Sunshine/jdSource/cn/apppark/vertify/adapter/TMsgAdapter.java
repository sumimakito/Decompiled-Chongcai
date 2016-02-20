package cn.apppark.vertify.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import cn.apppark.mcd.vo.tieba.TMyMsgVo;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.tieba.TBaseParam;
import java.util.ArrayList;
import vg;

public class TMsgAdapter
  extends TempBaseAdapter
{
  private Context context;
  private ArrayList<TMyMsgVo> itemList;
  private LayoutInflater mInflater;
  
  public TMsgAdapter(Context paramContext, ArrayList<TMyMsgVo> paramArrayList)
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
      paramView = this.mInflater.inflate(2130903226, null);
      paramViewGroup = new vg();
      paramViewGroup.a = ((RemoteImageView)paramView.findViewById(2131362923));
      paramViewGroup.b = ((TextView)paramView.findViewById(2131362924));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131362925));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131362926));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131362927));
      paramViewGroup.f = ((TextView)paramView.findViewById(2131362928));
      paramViewGroup.g = ((TextView)paramView.findViewById(2131362929));
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      TMyMsgVo localTMyMsgVo = (TMyMsgVo)this.itemList.get(paramInt);
      if (localTMyMsgVo != null)
      {
        paramViewGroup.a.setImageUrl(localTMyMsgVo.getHeadUrl());
        paramViewGroup.b.setText(localTMyMsgVo.getUserName());
        paramViewGroup.c.setText(TBaseParam.getSpanStr(this.context, localTMyMsgVo.getContent(), -16777216));
        paramViewGroup.d.setText(TBaseParam.getSpanStr(this.context, localTMyMsgVo.getMyContent(), -16777216));
        paramViewGroup.e.setText(localTMyMsgVo.getTiebaName());
        paramViewGroup.f.setText(localTMyMsgVo.getSubTime());
      }
      return paramView;
      paramViewGroup = (vg)paramView.getTag();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/TMsgAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */