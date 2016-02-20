package cn.apppark.vertify.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.apppark.mcd.vo.tieba.SonItemVo;
import cn.apppark.mcd.vo.tieba.TMyCommentVo;
import cn.apppark.vertify.activity.tieba.TBaseParam;
import java.util.ArrayList;
import vh;

public class TMyCommentAdapter
  extends BaseAdapter
{
  private Context context;
  private ArrayList<TMyCommentVo> itemList;
  private LayoutInflater mInflater;
  
  public TMyCommentAdapter(Context paramContext, ArrayList<TMyCommentVo> paramArrayList)
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
      paramView = this.mInflater.inflate(2130903228, paramViewGroup, false);
      paramViewGroup = new vh();
      paramViewGroup.a = ((LinearLayout)paramView.findViewById(2131362931));
      paramViewGroup.b = ((TextView)paramView.findViewById(2131362932));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131362933));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131362935));
      paramView.setTag(paramViewGroup);
    }
    TMyCommentVo localTMyCommentVo;
    for (;;)
    {
      localTMyCommentVo = (TMyCommentVo)this.itemList.get(paramInt);
      if (localTMyCommentVo == null) {
        return paramView;
      }
      paramViewGroup.a.removeAllViews();
      if (localTMyCommentVo.getSonItem() == null) {
        break;
      }
      paramInt = 0;
      while (paramInt < localTMyCommentVo.getSonItem().size())
      {
        View localView = this.mInflater.inflate(2130903229, null);
        ((TextView)localView.findViewById(2131362937)).setText(TBaseParam.getSpanStr(this.context, "回复：" + ((SonItemVo)localTMyCommentVo.getSonItem().get(paramInt)).getContent(), -16777216));
        ((TextView)localView.findViewById(2131362938)).setText(((SonItemVo)localTMyCommentVo.getSonItem().get(paramInt)).getSubTime());
        localView.setOnClickListener(new TMyCommentAdapter.MyOnclickListener(this, localTMyCommentVo, (SonItemVo)localTMyCommentVo.getSonItem().get(paramInt)));
        paramViewGroup.a.addView(localView);
        paramInt += 1;
      }
      paramViewGroup = (vh)paramView.getTag();
    }
    paramViewGroup.b.setText("原帖：" + localTMyCommentVo.getTitle());
    paramViewGroup.d.setText(localTMyCommentVo.getTiebaName() + "  " + localTMyCommentVo.getSubTime());
    paramViewGroup.c.setText(localTMyCommentVo.getCommentNum());
    paramViewGroup.b.setOnClickListener(new TMyCommentAdapter.MyOnclickListener(this, localTMyCommentVo));
    return paramView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/TMyCommentAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */