package cn.apppark.vertify.activity.free.typenine;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.widget.GridView;
import android.widget.ScrollView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.free.SelfGridItem2Vo;
import cn.apppark.mcd.vo.free.SelfGridItemVo;
import cn.apppark.vertify.activity.ISelfView;
import cn.apppark.vertify.adapter.SelfGridView4006Adapter;
import java.util.ArrayList;
import ns;
import nt;

public class SelfGridView4006
  extends GridView
  implements ISelfView
{
  private SelfGridView4006Adapter adapter;
  private Context context;
  private ArrayList<SelfGridItem2Vo> item2List;
  private FreePageVo pageVo;
  private ScrollView parentScroll;
  private SelfGridItemVo vo;
  
  public SelfGridView4006(Context paramContext, FreePageVo paramFreePageVo, SelfGridItemVo paramSelfGridItemVo, ArrayList<SelfGridItem2Vo> paramArrayList, ScrollView paramScrollView)
  {
    super(paramContext);
    this.context = paramContext;
    this.pageVo = paramFreePageVo;
    setFadingEdgeLength(0);
    this.vo = paramSelfGridItemVo;
    this.item2List = paramArrayList;
    this.parentScroll = paramScrollView;
    if ((paramArrayList != null) && (paramArrayList.size() > 0)) {
      init();
    }
  }
  
  public void init()
  {
    FunctionPublic.setBackground(this, this.vo.getStyle_bgType(), this.vo.getStyle_bgPic(), this.vo.getStyle_bgColor(), this.vo.getStyle_bgAlpha());
    setCacheColorHint(0);
    int i = FunctionPublic.getConvertValue(this.vo.getStyle_margin());
    setPadding(i, i, i, i);
    setNumColumns(FunctionPublic.str2int(this.vo.getStyle_columnNum()));
    setHorizontalSpacing(FunctionPublic.getConvertValue(this.vo.getStyle_columnSpace()));
    setVerticalSpacing(FunctionPublic.getConvertValue(this.vo.getStyle_rowSpace()));
    setHorizontalScrollBarEnabled(false);
    setVerticalScrollBarEnabled(false);
    setSelector(new ColorDrawable(0));
    this.adapter = new SelfGridView4006Adapter(this.context, this.vo, this.item2List);
    setOnItemClickListener(new ns(this));
    setOnTouchListener(new nt(this));
  }
  
  public boolean isOnMethod()
  {
    return true;
  }
  
  public void onDestroy() {}
  
  public void onPause() {}
  
  public void onResume()
  {
    setAdapter(this.adapter);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/typenine/SelfGridView4006.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */