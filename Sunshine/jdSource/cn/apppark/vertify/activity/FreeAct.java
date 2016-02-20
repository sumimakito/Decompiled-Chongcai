package cn.apppark.vertify.activity;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.Toast;
import av;
import aw;
import ax;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.base.BasePageItemVo;
import cn.apppark.mcd.vo.base.ClientBaseVo;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.widget.ElasticScrollView;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.base.OnActivityGroupResultListener;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import java.io.File;
import java.util.ArrayList;

public class FreeAct
  extends FreeBasePageActivity
  implements ILoadDataEndListener, OnActivityGroupResultListener
{
  private static final int BITS_PER_UNIT = 8;
  public static final int GET_DATA = 2;
  public static final int LOAD_FAIL = -1;
  public static final int LOAD_SUCCESS = 1;
  public static final int REF_DATA = 3;
  Dialog a;
  Button b;
  Button c;
  private RelativeLayout content;
  private Context context = this;
  EditText d;
  private int dynCount = 0;
  private ArrayList<ISelfViewDyn> dynViewList = new ArrayList();
  private FrameLayout fra_root;
  private LinearLayout ll_root;
  private LoadDataProgress load;
  private int loadCacheCount = 0;
  private int loadCacheErrorCount;
  private int loadCacheSuccessCount;
  private int loadErrorCount = 0;
  public ElasticScrollView scroll;
  private ArrayList<ISelfView> viewArrOnMethod = new ArrayList();
  
  private native int getH(int paramInt1, float paramFloat, int paramInt2);
  
  private native int getHByFull(int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  private native boolean getIsNext(int paramInt);
  
  private native int getW(int paramInt1, float paramFloat, int paramInt2);
  
  private native int getX(int paramInt1, float paramFloat, int paramInt2);
  
  private native int getY(int paramInt1, float paramFloat, int paramInt2);
  
  private void initBaseWidget()
  {
    if (this.pageVo != null) {
      initTopMenu();
    }
    if ((this.jsonArray != null) && (this.jsonArray.size() > 0))
    {
      if (getIsNext(this.jsonArray.size())) {
        initWidget();
      }
      new Handler().post(new av(this));
    }
  }
  
  private void initTopMenu()
  {
    LinearLayout localLinearLayout = (LinearLayout)findViewById(2131362397);
    if ("0".equals(this.pageVo.getStyle_tFlag())) {
      localLinearLayout.setVisibility(8);
    }
    Object localObject;
    do
    {
      return;
      localObject = this.pageVo.getStyle_tNavID();
      localObject = new File(HQCHApplication.instance.getResourceDir(), "head_" + (String)localObject + ".json");
      localObject = TopMenuFactory.getInstance(this.context, (File)localObject, this.pageVo);
    } while (localObject == null);
    localLinearLayout.addView((View)localObject);
    this.topHeight = ((View)localObject).getLayoutParams().height;
    this.scroll.setTopMenuHeight(this.topHeight);
  }
  
  private void initWidget()
  {
    int n = this.jsonArray.size();
    Gson localGson = new Gson();
    int k = 0;
    Object localObject2;
    Object localObject1;
    label55:
    int i1;
    int i;
    int i2;
    int i3;
    if (k < n)
    {
      localObject2 = this.jsonArray.get(k);
      localObject1 = (BasePageItemVo)localGson.fromJson((JsonElement)localObject2, BasePageItemVo.class);
      if (localObject1 == null) {
        return;
      }
      i1 = getW(((BasePageItemVo)localObject1).getSys_w(), YYGYContants.scaleUnite, YYGYContants.getKey(this.context, HQCHApplication.mainActivity.getPKGName()));
      i = getH(((BasePageItemVo)localObject1).getSys_h(), YYGYContants.scaleUnite, YYGYContants.getKey(this.context, HQCHApplication.mainActivity.getPKGName()));
      i2 = getX(((BasePageItemVo)localObject1).getSys_x(), YYGYContants.scaleUnite, YYGYContants.getKey(this.context, HQCHApplication.mainActivity.getPKGName()));
      i3 = getY(((BasePageItemVo)localObject1).getSys_y(), YYGYContants.scaleUnite, YYGYContants.getKey(this.context, HQCHApplication.mainActivity.getPKGName()));
      if (i2 == -100000)
      {
        Toast.makeText(this.context, "对不起,您的客户端非官方出品,请到www.apppark.cn安装官方正版", 0).show();
        HQCHApplication.mainActivity.hiddenWall();
        finish();
        return;
      }
      if (i != 0) {
        break label625;
      }
      if (HQCHApplication.mainActivity.clientBaseVo.getnPageId().equals(this.pageVo.getSys_pageID()))
      {
        i = -1;
        label224:
        this.pageVo.setCaculateHeight(i);
      }
    }
    label504:
    label625:
    for (int m = 1;; m = 0)
    {
      localObject2 = FreeViewFactory.getInstance(((BasePageItemVo)localObject1).getSys_moduleType(), this, this.context, this.scroll, (JsonElement)localObject2, this.pageVo);
      if (localObject2 != null)
      {
        if (((ISelfView)localObject2).isOnMethod()) {
          this.viewArrOnMethod.add(localObject2);
        }
        if ((((BasePageItemVo)localObject1).getSys_moduleType() >= 5000) && (((BasePageItemVo)localObject1).getSys_moduleType() <= 6000) && (((BasePageItemVo)localObject1).getSys_moduleType() != 5007) && (((BasePageItemVo)localObject1).getSys_moduleType() != 5008))
        {
          ISelfViewDyn localISelfViewDyn = (ISelfViewDyn)localObject2;
          this.dynViewList.add(localISelfViewDyn);
          localISelfViewDyn.setLoadendListener(this);
          if (localISelfViewDyn.isCache()) {
            this.loadCacheCount += 1;
          }
        }
        int j;
        if (localObject2 != null)
        {
          j = i;
          if (m != 0)
          {
            if (((BasePageItemVo)localObject1).getSys_moduleType() != 5006) {
              break label504;
            }
            j = PublicUtil.dip2px(520.0F);
          }
        }
        for (;;)
        {
          localObject1 = new RelativeLayout.LayoutParams(i1, j);
          ((RelativeLayout.LayoutParams)localObject1).leftMargin = i2;
          ((RelativeLayout.LayoutParams)localObject1).topMargin = i3;
          this.content.addView((View)localObject2, (ViewGroup.LayoutParams)localObject1);
          if (k == 0)
          {
            ((View)localObject2).setFocusable(true);
            ((View)localObject2).setFocusableInTouchMode(true);
            ((View)localObject2).requestFocus();
          }
          k += 1;
          break;
          i = getHByFull(this.mainHeight, this.bottomHeight, this.topHeight, i3);
          break label224;
          j = i;
          if (((BasePageItemVo)localObject1).getStyle_groupInfoShow() == 1) {
            if ((((BasePageItemVo)localObject1).getSys_moduleType() != 5031) && (((BasePageItemVo)localObject1).getSys_moduleType() != 5032))
            {
              j = i;
              if (((BasePageItemVo)localObject1).getSys_moduleType() != 5033) {}
            }
            else
            {
              j = i + YYGYContants.PRODUCT_INFO_HEIGHT;
            }
          }
        }
      }
      this.dynCount = this.dynViewList.size();
      if (this.dynCount > 0) {
        this.scroll.setonRefreshListener(new aw(this));
      }
      while ((this.loadCacheCount == 0) && (this.dynViewList.size() > 0))
      {
        reLoadData();
        return;
        this.scroll.setRefreshable(false);
      }
      break label55;
    }
  }
  
  private void onChildLoadCacheFinish(int paramInt)
  {
    if (paramInt == -1)
    {
      this.loadCacheErrorCount += 1;
      if (this.loadCacheCount <= this.loadCacheSuccessCount + this.loadCacheErrorCount)
      {
        if (this.loadCacheErrorCount != 0) {
          break label80;
        }
        this.load.hiddenAnima();
        onRef();
        this.scroll.autoHeadRefresh();
      }
    }
    for (;;)
    {
      this.loadCacheSuccessCount = 0;
      this.loadCacheErrorCount = 0;
      return;
      this.loadCacheSuccessCount += 1;
      break;
      label80:
      this.load.show(2131230756, true, true, "255");
      onInit();
    }
  }
  
  private void onChildLoadFinish(int paramInt1, int paramInt2)
  {
    this.dynCount -= 1;
    if (paramInt1 == -1) {
      this.loadErrorCount += 1;
    }
    if (this.dynCount <= 0)
    {
      if (paramInt2 != 2) {
        break label103;
      }
      if (this.loadErrorCount <= 0) {
        break label93;
      }
      this.load.showError(2131230757, true, false, "255");
      this.load.setInterfaceRef(new ax(this));
      if (this.dynViewList != null) {
        break label120;
      }
    }
    label93:
    label103:
    label120:
    for (paramInt1 = 0;; paramInt1 = this.dynViewList.size())
    {
      this.dynCount = paramInt1;
      this.loadErrorCount = 0;
      return;
      this.load.hiddenAnima();
      break;
      this.load.hiddenAnima();
      this.scroll.onRefreshComplete();
      break;
    }
  }
  
  private void onInit()
  {
    int i = 0;
    while (i < this.dynViewList.size())
    {
      ((ISelfViewDyn)this.dynViewList.get(i)).initData();
      i += 1;
    }
  }
  
  private void onRef()
  {
    int i = 0;
    while (i < this.dynViewList.size())
    {
      ((ISelfViewDyn)this.dynViewList.get(i)).onRefresh();
      i += 1;
    }
  }
  
  public static int postion(int paramInt)
  {
    return 1 << 7 - paramInt % 8;
  }
  
  private void reLoadData()
  {
    this.load.show(2131230756, true, true, "255");
    onInit();
  }
  
  private void reLoadDataByChildren()
  {
    onRef();
    this.scroll.autoHeadRefresh();
  }
  
  private void showPassword()
  {
    View localView = LayoutInflater.from(HQCHApplication.mainActivity).inflate(2130903147, null);
    this.b = ((Button)localView.findViewById(2131362526));
    this.c = ((Button)localView.findViewById(2131362527));
    this.d = ((EditText)localView.findViewById(2131362528));
    if (YYGYContants.mainPageId.equals(this.pageVo.getSys_pageID())) {
      this.b.setVisibility(8);
    }
    this.b.setOnClickListener(new FreeAct.2(this));
    this.c.setOnClickListener(new FreeAct.3(this));
    this.a = new Dialog(HQCHApplication.mainActivity, 2131099665);
    this.a.setContentView(localView, new RelativeLayout.LayoutParams(YYGYContants.screenWidth, YYGYContants.screenHeight));
    this.a.setCancelable(false);
    this.a.show();
  }
  
  public void onActivityGroupResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    int i = 0;
    while (i < this.dynViewList.size())
    {
      ((ISelfViewDyn)this.dynViewList.get(i)).onActivityResult(paramInt1, paramInt2, paramIntent);
      i += 1;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903118);
    this.scroll = ((ElasticScrollView)findViewById(2131362399));
    this.content = new RelativeLayout(this.context);
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.load.hidden();
    this.ll_root = ((LinearLayout)findViewById(2131362396));
    this.fra_root = ((FrameLayout)findViewById(2131362398));
    this.scroll.addChild(this.content, 1);
    if ((this.pageVo != null) && (StringUtil.isNotNull(this.pageVo.getData_password())))
    {
      showPassword();
      return;
    }
    initBaseWidget();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    int i = 0;
    while (i < this.viewArrOnMethod.size())
    {
      ((ISelfView)this.viewArrOnMethod.get(i)).onDestroy();
      this.content = null;
      i += 1;
    }
    this.viewArrOnMethod = null;
    this.dynViewList = null;
  }
  
  public void onLoadCacheFail(int paramInt)
  {
    onChildLoadCacheFinish(-1);
  }
  
  public void onLoadCacheSuccess(int paramInt)
  {
    onChildLoadCacheFinish(1);
  }
  
  public void onLoadFail(int paramInt)
  {
    onChildLoadFinish(-1, paramInt);
  }
  
  public void onLoadSuccess(int paramInt)
  {
    onChildLoadFinish(1, paramInt);
  }
  
  protected void onPause()
  {
    super.onPause();
    int i = 0;
    while (i < this.viewArrOnMethod.size())
    {
      ((ISelfView)this.viewArrOnMethod.get(i)).onPause();
      i += 1;
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    int i = 0;
    while (i < this.viewArrOnMethod.size())
    {
      ((ISelfView)this.viewArrOnMethod.get(i)).onResume();
      i += 1;
    }
    if (this.pageVo != null) {
      FunctionPublic.setBackground(HQCHApplication.mainActivity.getMainBg(), this.pageVo.getStyle_bgType(), this.pageVo.getStyle_bgPic(), this.pageVo.getStyle_bgColor(), this.pageVo.getStyle_bgAlpha());
    }
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/FreeAct.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */