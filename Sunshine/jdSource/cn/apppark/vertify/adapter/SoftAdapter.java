package cn.apppark.vertify.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RatingBar;
import android.widget.TextView;
import cn.apppark.mcd.vo.free.SoftReturnVo;
import cn.apppark.mcd.widget.RemoteImageView;
import java.util.ArrayList;
import va;

public class SoftAdapter
  extends TempBaseAdapter
{
  private Context context;
  private ArrayList<SoftReturnVo> itemList;
  private LayoutInflater mInflater;
  
  public SoftAdapter(Context paramContext, ArrayList<SoftReturnVo> paramArrayList)
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
    SoftReturnVo localSoftReturnVo;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903205, null);
      paramViewGroup = new va();
      paramViewGroup.a = ((RatingBar)paramView.findViewById(2131362827));
      paramViewGroup.b = ((RemoteImageView)paramView.findViewById(2131362824));
      paramViewGroup.c = ((ImageView)paramView.findViewById(2131362825));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131362826));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131362828));
      paramViewGroup.f = ((Button)paramView.findViewById(2131362829));
      paramView.setTag(paramViewGroup);
      localSoftReturnVo = (SoftReturnVo)this.itemList.get(paramInt);
      if (localSoftReturnVo != null)
      {
        paramViewGroup.b.setImageUrl(localSoftReturnVo.getIconUrl());
        paramViewGroup.b.setDefaultImage(Integer.valueOf(2130837617));
        if (!"1".equals(localSoftReturnVo.getFeature())) {
          break label249;
        }
        paramViewGroup.c.setVisibility(0);
        paramViewGroup.c.setBackgroundResource(2130837838);
      }
    }
    for (;;)
    {
      paramViewGroup.d.setText(localSoftReturnVo.getName());
      paramViewGroup.e.setText(localSoftReturnVo.getSummary());
      paramViewGroup.a.setRating(localSoftReturnVo.getScore());
      paramViewGroup.f.setOnClickListener(new SoftAdapter.MyonClickListener(this, localSoftReturnVo.getDownUrl(), null));
      return paramView;
      paramViewGroup = (va)paramView.getTag();
      break;
      label249:
      if ("2".equals(localSoftReturnVo.getFeature()))
      {
        paramViewGroup.c.setVisibility(0);
        paramViewGroup.c.setBackgroundResource(2130837827);
      }
      else if ("3".equals(localSoftReturnVo.getFeature()))
      {
        paramViewGroup.c.setVisibility(0);
        paramViewGroup.c.setBackgroundResource(2130837836);
      }
      else
      {
        paramViewGroup.c.setVisibility(8);
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/SoftAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */