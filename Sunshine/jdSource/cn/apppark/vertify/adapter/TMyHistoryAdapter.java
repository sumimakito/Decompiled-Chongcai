package cn.apppark.vertify.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.mcd.vo.tieba.TMyHistoryVo;
import java.util.ArrayList;
import vi;

public class TMyHistoryAdapter
  extends BaseAdapter
{
  private Context context;
  private ArrayList<TMyHistoryVo> itemList;
  private LayoutInflater mInflater;
  private TMyHistoryAdapter.onRightItemClickListener mListener = null;
  private int mRightWidth = 0;
  
  public TMyHistoryAdapter(Context paramContext, ArrayList<TMyHistoryVo> paramArrayList)
  {
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.itemList = paramArrayList;
    this.context = paramContext;
  }
  
  public TMyHistoryAdapter(Context paramContext, ArrayList<TMyHistoryVo> paramArrayList, int paramInt)
  {
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.itemList = paramArrayList;
    this.context = paramContext;
    this.mRightWidth = paramInt;
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
    Object localObject;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903218, paramViewGroup, false);
      paramViewGroup = new vi();
      paramViewGroup.d = ((RelativeLayout)paramView.findViewById(2131361810));
      paramViewGroup.e = ((RelativeLayout)paramView.findViewById(2131361819));
      paramViewGroup.a = ((TextView)paramView.findViewById(2131362875));
      paramViewGroup.b = ((TextView)paramView.findViewById(2131362876));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131362878));
      localObject = new LinearLayout.LayoutParams(-1, -1);
      paramViewGroup.d.setLayoutParams((ViewGroup.LayoutParams)localObject);
      localObject = new LinearLayout.LayoutParams(this.mRightWidth, -1);
      paramViewGroup.e.setLayoutParams((ViewGroup.LayoutParams)localObject);
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      localObject = (TMyHistoryVo)this.itemList.get(paramInt);
      if (localObject != null)
      {
        paramViewGroup.e.setOnClickListener(new TMyHistoryAdapter.1(this, paramInt));
        paramViewGroup.a.setText(((TMyHistoryVo)localObject).getTitle());
        paramViewGroup.c.setText(((TMyHistoryVo)localObject).getCommentNum());
        paramViewGroup.b.setText(((TMyHistoryVo)localObject).getTiebaName());
      }
      return paramView;
      paramViewGroup = (vi)paramView.getTag();
    }
  }
  
  public void setOnRightItemClickListener(TMyHistoryAdapter.onRightItemClickListener paramonRightItemClickListener)
  {
    this.mListener = paramonRightItemClickListener;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/TMyHistoryAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */