package cn.apppark.vertify.activity.free.dyn;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.dyn.DynProductReturnVo;
import cn.apppark.mcd.vo.dyn.DynProductVo;
import cn.apppark.mcd.widget.ElasticScrollView;
import cn.apppark.mcd.widget.MyEditText;
import cn.apppark.mcd.widget.PullDownListViewAutoLoad;
import cn.apppark.vertify.activity.ILoadDataEndListener;
import cn.apppark.vertify.activity.ISelfViewDyn;
import cn.apppark.vertify.adapter.DynProduct5004Adapter;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import cn.apppark.vertify.network.request.WebServiceRequest;
import il;
import im;
import in;
import io;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class DynPorductList5004
  extends LinearLayout
  implements View.OnClickListener, ISelfViewDyn
{
  private final int GET_WHAT = 1;
  private final int REF_DATA = 2;
  private int TYPE_DEFAULT = 0;
  private int TYPE_HOT = 3;
  private int TYPE_PRICE_DOWN = 2;
  private int TYPE_PRICE_UP = 1;
  private int TYPE_SELL = 4;
  private DynProduct5004Adapter adapter;
  private Button btn_all;
  private Button btn_hot;
  private Button btn_price;
  private Button btn_search;
  private Button btn_sell;
  private Context context;
  private int currentPage = 1;
  private MyEditText et_keyWord;
  private io handler;
  private ImageView img_line;
  private ArrayList<DynProductReturnVo> itemList = new ArrayList();
  private ArrayList<DynProductReturnVo> itemListTemp;
  private DynProductVo itemVo;
  private String keyWord = "";
  private PullDownListViewAutoLoad listView;
  private LinearLayout ll_searchType;
  private Dialog loadDialog;
  private ILoadDataEndListener loadendListener;
  private FreePageVo pageVo;
  private ElasticScrollView parentScroll;
  private int searchType;
  
  public DynPorductList5004(Context paramContext, FreePageVo paramFreePageVo, DynProductVo paramDynProductVo, ElasticScrollView paramElasticScrollView)
  {
    super(paramContext);
    this.context = paramContext;
    this.itemVo = paramDynProductVo;
    this.pageVo = paramFreePageVo;
    this.loadDialog = HQCHApplication.createLoadingDialog(HQCHApplication.mainActivity, 2131230756);
    this.handler = new io(this, null);
    this.parentScroll = paramElasticScrollView;
    this.searchType = this.TYPE_DEFAULT;
    initWidget();
  }
  
  private void changeBarState()
  {
    this.btn_all.setTextColor(-7829368);
    this.btn_hot.setTextColor(-7829368);
    this.btn_sell.setTextColor(-7829368);
    this.btn_price.setTextColor(-7829368);
  }
  
  private void getData(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("sortId", this.itemVo.getInterfaces());
    ((Map)localObject).put("orderBy", Integer.valueOf(this.searchType));
    ((Map)localObject).put("keyword", this.keyWord);
    ((Map)localObject).put("currPage", Integer.valueOf(paramInt1));
    ((Map)localObject).put("pageSize", Integer.valueOf(10));
    localObject = new WebServicePool(paramInt2, this.handler, "json", PublicUtil.map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/cms.ws", "products_sd");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initWidget()
  {
    FunctionPublic.setBackground(this, this.itemVo.getStyle_bgType(), this.itemVo.getStyle_bgPic(), this.itemVo.getStyle_bgColor());
    if ((getBackground() != null) && (!"0".equals(this.itemVo.getStyle_bgType()))) {
      getBackground().setAlpha(FunctionPublic.str2int(this.itemVo.getStyle_bgAlpha()) * 255 / 100);
    }
    View localView = ((LayoutInflater)this.context.getSystemService("layout_inflater")).inflate(2130903103, null);
    this.ll_searchType = ((LinearLayout)localView.findViewById(2131362293));
    this.img_line = ((ImageView)localView.findViewById(2131362298));
    if ("0".equals(this.itemVo.getStyle_showSearchBar()))
    {
      this.ll_searchType.setVisibility(8);
      this.img_line.setVisibility(8);
    }
    this.btn_search = ((Button)localView.findViewById(2131362292));
    this.btn_all = ((Button)localView.findViewById(2131362294));
    this.btn_hot = ((Button)localView.findViewById(2131362295));
    this.btn_sell = ((Button)localView.findViewById(2131362296));
    this.btn_price = ((Button)localView.findViewById(2131362297));
    this.et_keyWord = ((MyEditText)localView.findViewById(2131362291));
    this.et_keyWord.setListener(new il(this));
    this.btn_search.setOnClickListener(this);
    this.btn_all.setOnClickListener(this);
    this.btn_hot.setOnClickListener(this);
    this.btn_sell.setOnClickListener(this);
    this.btn_price.setOnClickListener(this);
    this.listView = ((PullDownListViewAutoLoad)localView.findViewById(2131362299));
    FunctionPublic.setDevider(this.listView, this.itemVo.getStyle_rowLineBgType(), this.itemVo.getStyle_rowLineBgPic(), this.itemVo.getStyle_rowLineColor(), this.itemVo.getStyle_rowLineHeight());
    addView(localView);
    this.listView.setParentScroll(this.parentScroll);
    this.listView.setOnItemClickListener(new im(this));
    this.listView.setonFootRefreshListener(new in(this));
    if ("0".equals(this.itemVo.getStyle_enableScroll())) {
      this.listView.setScroll(false);
    }
  }
  
  private void refData()
  {
    this.currentPage = 1;
    getData(this.currentPage, 2);
  }
  
  public boolean checkResult(String paramString1, String paramString2, String paramString3)
  {
    if (WebServiceRequest.WEB_ERROR.equals(paramString1)) {
      HQCHApplication.instance.initToast(paramString2, 0);
    }
    for (;;)
    {
      return false;
      Object localObject;
      try
      {
        localObject = new JSONObject(paramString1);
        paramString1 = ((JSONObject)localObject).getString("retFlag");
        localObject = ((JSONObject)localObject).getString("retMsg");
        if (!"1".equals(paramString1)) {
          break label85;
        }
        HQCHApplication.instance.initToast(paramString3, 0);
        return true;
      }
      catch (JSONException paramString1)
      {
        HQCHApplication.instance.initToast(paramString2, 0);
        paramString1.printStackTrace();
      }
      continue;
      label85:
      HQCHApplication.instance.initToast((String)localObject, 1);
    }
  }
  
  public void init() {}
  
  public void initData()
  {
    this.currentPage = 1;
    getData(this.currentPage, 1);
  }
  
  public boolean isCache()
  {
    return false;
  }
  
  public boolean isOnMethod()
  {
    return true;
  }
  
  public void loadFail(int paramInt)
  {
    if (this.loadendListener != null) {
      this.loadendListener.onLoadFail(paramInt);
    }
  }
  
  public void loadSuccess(int paramInt)
  {
    if (this.loadendListener != null) {
      this.loadendListener.onLoadSuccess(paramInt);
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {}
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131362293: 
    default: 
      return;
    case 2131362292: 
      this.keyWord = this.et_keyWord.getText().toString().trim();
      this.loadDialog.show();
      initData();
      return;
    case 2131362294: 
      this.searchType = this.TYPE_DEFAULT;
      this.loadDialog.show();
      initData();
      changeBarState();
      this.btn_all.setTextColor(-16777216);
      return;
    case 2131362295: 
      this.searchType = this.TYPE_HOT;
      this.loadDialog.show();
      initData();
      changeBarState();
      this.btn_hot.setTextColor(-16777216);
      return;
    case 2131362296: 
      this.searchType = this.TYPE_SELL;
      this.loadDialog.show();
      initData();
      changeBarState();
      this.btn_sell.setTextColor(-16777216);
      return;
    }
    if (this.searchType == this.TYPE_PRICE_UP)
    {
      this.searchType = this.TYPE_PRICE_DOWN;
      this.loadDialog.show();
      initData();
      this.btn_price.setText("价格 ↓");
    }
    for (;;)
    {
      changeBarState();
      this.btn_price.setTextColor(-16777216);
      return;
      this.btn_price.setText("价格 ↑");
      this.searchType = this.TYPE_PRICE_UP;
      this.loadDialog.show();
      initData();
    }
  }
  
  public void onDestroy() {}
  
  public void onPause() {}
  
  public void onRefresh()
  {
    this.currentPage = 1;
    getData(this.currentPage, 2);
  }
  
  public void onResume() {}
  
  public void setLoadendListener(ILoadDataEndListener paramILoadDataEndListener)
  {
    this.loadendListener = paramILoadDataEndListener;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/DynPorductList5004.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */