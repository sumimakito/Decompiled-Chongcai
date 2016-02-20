package cn.apppark.vertify.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.tieba.ImgVo;
import cn.apppark.mcd.vo.tieba.TMainVo;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.tieba.TMain;
import java.util.ArrayList;
import vf;

public class TMainAdapter
  extends TempBaseAdapter
{
  private TMain act;
  private Context context;
  private ArrayList<TMainVo> itemList;
  private LayoutInflater mInflater;
  
  public TMainAdapter(Context paramContext, ArrayList<TMainVo> paramArrayList, TMain paramTMain)
  {
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.itemList = paramArrayList;
    this.context = paramContext;
    this.act = paramTMain;
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
    int i;
    Object localObject;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903224, null);
      paramViewGroup = new vf();
      paramViewGroup.a = ((LinearLayout)paramView.findViewById(2131362908));
      paramViewGroup.c = ((RemoteImageView)paramView.findViewById(2131362903));
      paramViewGroup.b = ((LinearLayout)paramView.findViewById(2131362912));
      paramViewGroup.l = ((RemoteImageView)paramView.findViewById(2131362909));
      paramViewGroup.m = ((RemoteImageView)paramView.findViewById(2131362910));
      paramViewGroup.n = ((RemoteImageView)paramView.findViewById(2131362911));
      i = YYGYContants.screenWidth - PublicUtil.dip2px(50.0F);
      localObject = new LinearLayout.LayoutParams(i / 3, i / 3);
      ((LinearLayout.LayoutParams)localObject).setMargins(5, 2, 5, 2);
      paramViewGroup.l.setLayoutParams((ViewGroup.LayoutParams)localObject);
      paramViewGroup.m.setLayoutParams((ViewGroup.LayoutParams)localObject);
      paramViewGroup.n.setLayoutParams((ViewGroup.LayoutParams)localObject);
      paramViewGroup.d = ((TextView)paramView.findViewById(2131362904));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131362905));
      paramViewGroup.f = ((TextView)paramView.findViewById(2131362906));
      paramViewGroup.g = ((TextView)paramView.findViewById(2131362907));
      paramViewGroup.h = ((ImageView)paramView.findViewById(2131362913));
      paramViewGroup.i = ((ImageView)paramView.findViewById(2131362915));
      paramViewGroup.j = ((TextView)paramView.findViewById(2131362916));
      paramViewGroup.k = ((TextView)paramView.findViewById(2131362914));
      paramView.setTag(paramViewGroup);
      localObject = (TMainVo)this.itemList.get(paramInt);
      if (localObject == null) {
        return paramView;
      }
      paramViewGroup.c.setImageUrl(((TMainVo)localObject).getHeadUrl());
      paramViewGroup.c.setDefaultImage(Integer.valueOf(2130837621));
      paramViewGroup.d.setText(((TMainVo)localObject).getUserName());
      paramViewGroup.e.setText(((TMainVo)localObject).getSubTime());
      paramViewGroup.f.setText(((TMainVo)localObject).getTitle());
      paramViewGroup.g.setText(((TMainVo)localObject).getContent());
      paramViewGroup.j.setText(((TMainVo)localObject).getCommentNum());
      paramViewGroup.k.setText(((TMainVo)localObject).getGoodNum());
      if (!"1".equals(((TMainVo)localObject).getIsGood())) {
        break label685;
      }
      paramViewGroup.h.setBackgroundResource(2130837881);
      label436:
      paramViewGroup.l.setVisibility(4);
      paramViewGroup.m.setVisibility(4);
      paramViewGroup.n.setVisibility(4);
      paramViewGroup.l.setDefaultImage(Integer.valueOf(2130837617));
      paramViewGroup.m.setDefaultImage(Integer.valueOf(2130837617));
      paramViewGroup.n.setDefaultImage(Integer.valueOf(2130837617));
      paramViewGroup.h.setOnClickListener(new TMainAdapter.MyonClickListener(this, (TMainVo)localObject, paramInt));
      paramViewGroup.k.setOnClickListener(new TMainAdapter.MyonClickListener(this, (TMainVo)localObject, paramInt));
      paramViewGroup.i.setOnClickListener(new TMainAdapter.MyonClickListener(this, (TMainVo)localObject, paramInt));
      paramViewGroup.j.setOnClickListener(new TMainAdapter.MyonClickListener(this, (TMainVo)localObject, paramInt));
      if ((((TMainVo)localObject).getMiniImgUrl() == null) || (((TMainVo)localObject).getMiniImgUrl().size() <= 0)) {
        break label814;
      }
      paramViewGroup.a.setVisibility(0);
      i = 0;
      label598:
      if (i >= ((TMainVo)localObject).getMiniImgUrl().size()) {
        return paramView;
      }
      if (i != 0) {
        break label698;
      }
      paramViewGroup.l.setImageUrl(((ImgVo)((TMainVo)localObject).getMiniImgUrl().get(i)).getImgUrl());
      paramViewGroup.l.setVisibility(0);
      paramViewGroup.l.setOnClickListener(new TMainAdapter.MyonClickListener(this, (TMainVo)localObject, paramInt));
    }
    for (;;)
    {
      i += 1;
      break label598;
      paramViewGroup = (vf)paramView.getTag();
      break;
      label685:
      paramViewGroup.h.setBackgroundResource(2130837880);
      break label436;
      label698:
      if (i == 1)
      {
        paramViewGroup.m.setImageUrl(((ImgVo)((TMainVo)localObject).getMiniImgUrl().get(i)).getImgUrl());
        paramViewGroup.m.setVisibility(0);
        paramViewGroup.m.setOnClickListener(new TMainAdapter.MyonClickListener(this, (TMainVo)localObject, paramInt));
      }
      else if (i == 2)
      {
        paramViewGroup.n.setImageUrl(((ImgVo)((TMainVo)localObject).getMiniImgUrl().get(i)).getImgUrl());
        paramViewGroup.n.setVisibility(0);
        paramViewGroup.n.setOnClickListener(new TMainAdapter.MyonClickListener(this, (TMainVo)localObject, paramInt));
      }
    }
    label814:
    paramViewGroup.a.setVisibility(8);
    return paramView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/TMainAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */