package cn.apppark.vertify.activity.free.dyn;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.dyn.DynProductVo;
import cn.apppark.mcd.widget.ElasticScrollView;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.BaseAct;
import cn.apppark.vertify.activity.ILoadDataEndListener;
import ls;
import lt;

public class STogetherDetail
  extends BaseAct
  implements ILoadDataEndListener
{
  private Button btn_back;
  private LoadDataProgress load;
  private RelativeLayout rel_top;
  private SProductBase sProductBase;
  public ElasticScrollView scroll;
  
  private void onRef()
  {
    this.sProductBase.onRefresh();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903178);
    paramBundle = (DynProductVo)getIntent().getSerializableExtra("detail");
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.scroll = ((ElasticScrollView)findViewById(2131362706));
    this.rel_top = ((RelativeLayout)findViewById(2131362703));
    this.btn_back = ((Button)findViewById(2131362704));
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, this.rel_top);
    this.btn_back.setOnClickListener(new STogetherDetail.1(this));
    RelativeLayout localRelativeLayout = new RelativeLayout(this.context);
    this.scroll.addChild(localRelativeLayout, 1);
    this.scroll.setonRefreshListener(new ls(this));
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(YYGYContants.screenWidth, YYGYContants.MainContentHeight + YYGYContants.PRODUCT_INFO_HEIGHT - PublicUtil.dip2px(44.0F));
    this.scroll.setTopMenuHeight(PublicUtil.dip2px(44.0F));
    this.sProductBase = new SProductBase(this.context, paramBundle, true);
    localRelativeLayout.addView(this.sProductBase, localLayoutParams);
    this.sProductBase.setParentScroll(this.scroll);
    this.sProductBase.setLoadendListener(this);
    this.sProductBase.initData();
  }
  
  public void onLoadCacheFail(int paramInt) {}
  
  public void onLoadCacheSuccess(int paramInt) {}
  
  public void onLoadFail(int paramInt)
  {
    this.load.showError(2131230757, true, false, "255");
    this.load.setInterfaceRef(new lt(this));
  }
  
  public void onLoadSuccess(int paramInt)
  {
    this.load.hidden();
    this.scroll.onRefreshComplete();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/STogetherDetail.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */