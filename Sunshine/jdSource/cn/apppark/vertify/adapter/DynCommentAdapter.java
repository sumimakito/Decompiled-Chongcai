package cn.apppark.vertify.adapter;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.dyn.DynCommentReturnVo;
import cn.apppark.mcd.widget.RemoteImageView;
import java.util.ArrayList;
import tv;

public class DynCommentAdapter
  extends TempBaseAdapter
{
  private ArrayList<DynCommentReturnVo> itemList;
  private LayoutInflater mInflater;
  private DynCommentAdapter.MyClickGood myClickGood;
  
  public DynCommentAdapter(Context paramContext, ArrayList<DynCommentReturnVo> paramArrayList)
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
    DynCommentReturnVo localDynCommentReturnVo;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903094, null);
      paramViewGroup = new tv();
      paramViewGroup.a = ((LinearLayout)paramView.findViewById(2131361867));
      paramViewGroup.b = ((RemoteImageView)paramView.findViewById(2131362199));
      paramViewGroup.c = ((TextView)paramView.findViewById(2131362201));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131362202));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131362205));
      paramViewGroup.f = ((TextView)paramView.findViewById(2131362200));
      paramViewGroup.g = ((RelativeLayout)paramView.findViewById(2131362203));
      paramViewGroup.h = ((TextView)paramView.findViewById(2131362204));
      paramView.setTag(paramViewGroup);
      localDynCommentReturnVo = (DynCommentReturnVo)this.itemList.get(paramInt);
      if (localDynCommentReturnVo != null)
      {
        paramViewGroup.b.setDefaultImage(Integer.valueOf(2130837621));
        paramViewGroup.b.setImageUrl(localDynCommentReturnVo.getPicUrl());
        paramViewGroup.c.setText(PublicUtil.getShieldString(localDynCommentReturnVo.getUserName()));
        paramViewGroup.d.setText(localDynCommentReturnVo.getCreateTime());
        paramViewGroup.e.setText(Html.fromHtml(localDynCommentReturnVo.getContent()));
        if (!"1".equals(localDynCommentReturnVo.getStrType())) {
          break label316;
        }
        paramViewGroup.f.setVisibility(0);
        paramViewGroup.f.setBackgroundResource(2130837673);
        label246:
        if (localDynCommentReturnVo.getPraiseCount() <= 0) {
          break label361;
        }
        paramViewGroup.h.setText(localDynCommentReturnVo.getPraiseCount());
        paramViewGroup.h.setVisibility(0);
      }
    }
    for (;;)
    {
      paramViewGroup.g.setOnClickListener(new DynCommentAdapter.1(this, paramInt));
      return paramView;
      paramViewGroup = (tv)paramView.getTag();
      break;
      label316:
      if ("2".equals(localDynCommentReturnVo.getStrType()))
      {
        paramViewGroup.f.setVisibility(0);
        paramViewGroup.f.setBackgroundResource(2130837672);
        break label246;
      }
      paramViewGroup.f.setVisibility(8);
      break label246;
      label361:
      paramViewGroup.h.setVisibility(8);
    }
  }
  
  public void setMyClickGood(DynCommentAdapter.MyClickGood paramMyClickGood)
  {
    this.myClickGood = paramMyClickGood;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/DynCommentAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */