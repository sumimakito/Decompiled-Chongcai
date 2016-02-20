package cn.apppark.vertify.activity.free.typenine;

import android.content.Context;
import android.widget.GridView;
import android.widget.ScrollView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.free.SelfGridItem2Vo;
import cn.apppark.mcd.vo.free.SelfGridItemVo;
import cn.apppark.vertify.activity.ISelfView;
import cn.apppark.vertify.adapter.SelfGridView4008Adapter;
import java.util.ArrayList;
import nw;
import nx;

public class SelfGridView4008
  extends GridView
  implements ISelfView
{
  private SelfGridView4008Adapter adapter;
  private Context context;
  private ArrayList<SelfGridItem2Vo> item2List;
  private FreePageVo pageVo;
  private ScrollView parentScroll;
  private SelfGridItemVo vo;
  
  public SelfGridView4008(Context paramContext, FreePageVo paramFreePageVo, SelfGridItemVo paramSelfGridItemVo, ArrayList<SelfGridItem2Vo> paramArrayList, ScrollView paramScrollView)
  {
    super(paramContext);
    this.context = paramContext;
    this.pageVo = paramFreePageVo;
    this.vo = paramSelfGridItemVo;
    setFadingEdgeLength(0);
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
    this.adapter = new SelfGridView4008Adapter(this.context, this.vo, this.item2List);
    setOnItemClickListener(new nw(this));
    setOnTouchListener(new nx(this));
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


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/typenine/SelfGridView4008.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */