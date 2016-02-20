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
import cn.apppark.mcd.vo.tieba.TMyCollectionVo;
import java.util.ArrayList;
import vb;

public class TCollectionAdapter
  extends BaseAdapter
{
  private Context context;
  private ArrayList<TMyCollectionVo> itemList;
  private LayoutInflater mInflater;
  private TCollectionAdapter.onRightItemClickListener mListener = null;
  private int mRightWidth = 0;
  
  public TCollectionAdapter(Context paramContext, ArrayList<TMyCollectionVo> paramArrayList)
  {
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.itemList = paramArrayList;
    this.context = paramContext;
  }
  
  public TCollectionAdapter(Context paramContext, ArrayList<TMyCollectionVo> paramArrayList, int paramInt)
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
      paramView = this.mInflater.inflate(2130903211, paramViewGroup, false);
      paramViewGroup = new vb();
      paramViewGroup.d = ((RelativeLayout)paramView.findViewById(2131361810));
      paramViewGroup.e = ((RelativeLayout)paramView.findViewById(2131361819));
      paramViewGroup.a = ((TextView)paramView.findViewById(2131362838));
      paramViewGroup.b = ((TextView)paramView.findViewById(2131362841));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131362839));
      localObject = new LinearLayout.LayoutParams(-1, -1);
      paramViewGroup.d.setLayoutParams((ViewGroup.LayoutParams)localObject);
      localObject = new LinearLayout.LayoutParams(this.mRightWidth, -1);
      paramViewGroup.e.setLayoutParams((ViewGroup.LayoutParams)localObject);
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      localObject = (TMyCollectionVo)this.itemList.get(paramInt);
      if (localObject != null)
      {
        paramViewGroup.e.setOnClickListener(new TCollectionAdapter.1(this, paramInt));
        paramViewGroup.a.setText(((TMyCollectionVo)localObject).getTitle());
        paramViewGroup.b.setText(((TMyCollectionVo)localObject).getCommentNum());
        paramViewGroup.c.setText(((TMyCollectionVo)localObject).getTiebaName());
      }
      return paramView;
      paramViewGroup = (vb)paramView.getTag();
    }
  }
  
  public void setOnRightItemClickListener(TCollectionAdapter.onRightItemClickListener paramonRightItemClickListener)
  {
    this.mListener = paramonRightItemClickListener;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/TCollectionAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */