package cn.apppark.vertify.activity.bottommenu;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import bk;
import bl;
import bm;
import bn;
import bo;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.MyAlphaAnima;
import cn.apppark.mcd.util.file.SDFileUtils;
import cn.apppark.mcd.util.imge.CacheUtil;
import cn.apppark.mcd.util.jsonparse.JsonParserUtil;
import cn.apppark.mcd.vo.navigation.NavigationTabItemVo;
import cn.apppark.mcd.vo.navigation.NavigationTabVo;
import java.io.File;
import java.lang.reflect.Type;
import java.util.ArrayList;

public class NavigationTab2
  extends Activity
{
  private String fPageid;
  private int itemCount = 5;
  private int itemHeight = 0;
  private ArrayList<NavigationTabItemVo> itemList;
  private int itemWidth = 0;
  private ImageView leftBtn;
  private LinearLayout mainLinearLayout;
  private Handler myHandler = new bn(this);
  private NavigationTabVo navItem;
  private String navJson;
  private ImageView rightBtn;
  private RelativeLayout rootLayout;
  private int selectItem = -1;
  private HorizontalScrollView sv;
  
  protected void initTabBar()
  {
    LayoutInflater localLayoutInflater = (LayoutInflater)getSystemService("layout_inflater");
    int i = 0;
    if (i < this.itemList.size())
    {
      Object localObject = (RelativeLayout)localLayoutInflater.inflate(2130903135, null);
      bo localbo = new bo();
      localbo.a = ((RelativeLayout)((RelativeLayout)localObject).findViewById(2131362459));
      localbo.b = ((ImageView)((RelativeLayout)localObject).findViewById(2131362460));
      localbo.c = ((TextView)((RelativeLayout)localObject).findViewById(2131362461));
      if (FunctionPublic.str2int(this.navItem.getStyle_slipFlag()) == 1)
      {
        ((RelativeLayout)localObject).setLayoutParams(new LinearLayout.LayoutParams((YYGYContants.screenWidth - FunctionPublic.str2int(this.navItem.getStyle_slipWidth()) * 2) / this.itemCount, this.itemHeight));
        label136:
        ((RelativeLayout)localObject).setTag(2131230738, localbo);
        this.mainLinearLayout.addView((View)localObject);
        localObject = (NavigationTabItemVo)this.itemList.get(i);
        localbo.a.setTag(2131230739, localObject);
        localbo.a.setOnTouchListener(new bm(this));
        if (localObject != null)
        {
          if ((!"".equals(((NavigationTabItemVo)localObject).getData_text1Content())) && (((NavigationTabItemVo)localObject).getData_text1Content() != null) && (!"0".equals(this.navItem.getStyle_text1Size())) && (!"null".equals(((NavigationTabItemVo)localObject).getData_text1Content()))) {
            break label300;
          }
          localbo.c.setVisibility(8);
          label255:
          if (((NavigationTabItemVo)localObject).getData_pic() != null) {
            break label352;
          }
          localbo.b.setVisibility(8);
        }
      }
      for (;;)
      {
        i += 1;
        break;
        ((RelativeLayout)localObject).setLayoutParams(new LinearLayout.LayoutParams(-1, this.itemHeight, 1.0F));
        break label136;
        label300:
        localbo.c.setVisibility(0);
        FunctionPublic.setTextStyle(localbo.c, ((NavigationTabItemVo)localObject).getData_text1Content(), this.navItem.getStyle_text1Size(), this.navItem.getStyle_text1Color(), "");
        break label255;
        label352:
        localbo.b.setVisibility(0);
        localObject = Drawable.createFromPath(HQCHApplication.getInstance().getResourceDir() + File.separator + ((NavigationTabItemVo)localObject).getData_pic());
        localbo.b.setImageDrawable((Drawable)localObject);
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903134);
    this.rootLayout = ((RelativeLayout)findViewById(2131362452));
    this.fPageid = getIntent().getStringExtra("fPageid");
    this.navJson = getIntent().getStringExtra("navJson");
    this.sv = ((HorizontalScrollView)findViewById(2131362455));
    paramBundle = SDFileUtils.readFileSD(this.navJson);
    Type localType = new bk(this).getType();
    this.navItem = ((NavigationTabVo)JsonParserUtil.parseJson2Vo(paramBundle, NavigationTabVo.class));
    this.itemList = JsonParserUtil.parseJson2List(paramBundle, localType, "item");
    if (this.navItem == null) {
      return;
    }
    this.leftBtn = ((ImageView)findViewById(2131362454));
    this.rightBtn = ((ImageView)findViewById(2131362456));
    if (FunctionPublic.str2int(this.navItem.getStyle_itemCount()) > 0) {
      this.itemWidth = ((YYGYContants.screenWidth - FunctionPublic.str2int(this.navItem.getStyle_slipWidth()) * 2) / FunctionPublic.str2int(this.navItem.getStyle_itemCount()));
    }
    if ("1".equals(this.navItem.getStyle_slipFlag()))
    {
      findViewById(2131362453).setVisibility(0);
      this.mainLinearLayout = ((LinearLayout)findViewById(2131362457));
      findViewById(2131362458).setVisibility(8);
      this.sv.setVerticalFadingEdgeEnabled(false);
      this.sv.setHorizontalScrollBarEnabled(false);
      this.sv.setOnTouchListener(new bl(this));
      this.leftBtn.setImageDrawable(HQCHApplication.cacheUtil.getCachedDrawable(this.navItem.getStyle_slipLeftPic()));
      this.rightBtn.setImageDrawable(HQCHApplication.cacheUtil.getCachedDrawable(this.navItem.getStyle_slipRightLightPic()));
      this.leftBtn.setOnClickListener(new NavigationTab2.3(this));
      this.rightBtn.setOnClickListener(new NavigationTab2.4(this));
      this.rightBtn.setOnTouchListener(new MyAlphaAnima());
      this.leftBtn.setOnTouchListener(new MyAlphaAnima());
      if (FunctionPublic.str2int(this.navItem.getStyle_itemCount()) > 0) {
        this.itemCount = FunctionPublic.str2int(this.navItem.getStyle_itemCount());
      }
      if (FunctionPublic.str2int(this.navItem.getStyle_slipWidth()) > 0)
      {
        this.leftBtn.getLayoutParams().width = FunctionPublic.str2int(this.navItem.getStyle_slipWidth());
        this.rightBtn.getLayoutParams().width = FunctionPublic.str2int(this.navItem.getStyle_slipWidth());
      }
    }
    for (;;)
    {
      this.itemHeight = ((int)(this.navItem.getSys_h() * YYGYContants.scaleUnite));
      this.rootLayout.getLayoutParams().height = this.itemHeight;
      FunctionPublic.setBackground(this.rootLayout, this.navItem.getStyle_bgType(), this.navItem.getStyle_bgPic(), this.navItem.getStyle_bgColor());
      initTabBar();
      return;
      this.mainLinearLayout = ((LinearLayout)findViewById(2131362458));
      this.mainLinearLayout.setVisibility(0);
      findViewById(2131362453).setVisibility(8);
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    this.fPageid = getIntent().getStringExtra("fPageid");
    int i = 0;
    for (;;)
    {
      if (i < this.itemList.size())
      {
        NavigationTabItemVo localNavigationTabItemVo = (NavigationTabItemVo)this.itemList.get(i);
        if (this.fPageid.equals(localNavigationTabItemVo.getnPageId()))
        {
          this.selectItem = i;
          updateTabBar();
        }
      }
      else
      {
        return;
      }
      i += 1;
    }
  }
  
  public void updateTabBar()
  {
    int i = 0;
    if (i < this.itemList.size())
    {
      bo localbo = (bo)((RelativeLayout)this.mainLinearLayout.getChildAt(i)).getTag(2131230738);
      Object localObject = (NavigationTabItemVo)this.itemList.get(i);
      if (localObject != null)
      {
        if ((!"".equals(((NavigationTabItemVo)localObject).getData_text1Content())) && (((NavigationTabItemVo)localObject).getData_text1Content() != null)) {
          break label118;
        }
        localbo.c.setVisibility(8);
        label77:
        if (this.selectItem != i) {
          break label169;
        }
        if (((NavigationTabItemVo)localObject).getData_pressPic() != null)
        {
          localObject = HQCHApplication.cacheUtil.getCachedDrawable(((NavigationTabItemVo)localObject).getData_pressPic());
          localbo.b.setImageDrawable((Drawable)localObject);
        }
      }
      for (;;)
      {
        i += 1;
        break;
        label118:
        localbo.c.setVisibility(0);
        FunctionPublic.setTextStyle(localbo.c, ((NavigationTabItemVo)localObject).getData_text1Content(), this.navItem.getStyle_text1Size(), this.navItem.getStyle_text1Color(), "");
        break label77;
        label169:
        if (localbo.a.getBackground() != null) {
          localbo.a.setBackgroundDrawable(null);
        }
        if (((NavigationTabItemVo)localObject).getData_pic() == null)
        {
          localbo.b.setVisibility(8);
        }
        else
        {
          localbo.b.setVisibility(0);
          localObject = Drawable.createFromPath(HQCHApplication.getInstance().getResourceDir() + File.separator + ((NavigationTabItemVo)localObject).getData_pic());
          localbo.b.setImageDrawable((Drawable)localObject);
        }
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/bottommenu/NavigationTab2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */