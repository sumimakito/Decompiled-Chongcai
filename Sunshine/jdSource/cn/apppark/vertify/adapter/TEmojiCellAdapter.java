package cn.apppark.vertify.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import ve;

public class TEmojiCellAdapter
  extends BaseAdapter
{
  private String[] emojStrings;
  private int[] faces;
  private LayoutInflater mInflater;
  
  public TEmojiCellAdapter(Context paramContext, int[] paramArrayOfInt, String[] paramArrayOfString)
  {
    this.faces = paramArrayOfInt;
    this.emojStrings = paramArrayOfString;
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }
  
  public int getCount()
  {
    return this.faces.length;
  }
  
  public int getFaceId(int paramInt)
  {
    return this.faces[paramInt];
  }
  
  public String getFaceStr(int paramInt)
  {
    return this.emojStrings[paramInt];
  }
  
  public Object getItem(int paramInt)
  {
    return Integer.valueOf(this.faces[paramInt]);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    if (paramView == null)
    {
      localView = this.mInflater.inflate(2130903217, null);
      paramView = new ve(this);
      paramView.a = ((ImageView)localView.findViewById(2131362874));
      localView.setTag(paramView);
      paramViewGroup = paramView;
    }
    for (;;)
    {
      paramViewGroup.a.setImageResource(this.faces[paramInt]);
      return localView;
      paramViewGroup = (ve)paramView.getTag();
      localView = paramView;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/TEmojiCellAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */