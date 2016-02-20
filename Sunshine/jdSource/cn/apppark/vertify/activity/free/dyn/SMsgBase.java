package cn.apppark.vertify.activity.free.dyn;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.dyn.DynMsgGroupVo;
import cn.apppark.mcd.vo.dyn.DynMsgListReturnVo;
import cn.apppark.mcd.vo.dyn.DynMsgListVo;
import cn.apppark.mcd.widget.ElasticScrollView;
import cn.apppark.mcd.widget.PullDownListViewAutoLoad;
import cn.apppark.vertify.activity.ILoadDataEndListener;
import cn.apppark.vertify.activity.ISelfViewDyn;
import cn.apppark.vertify.adapter.SMsgCard5023Adapter;
import cn.apppark.vertify.adapter.SMsgList5021Adapter;
import cn.apppark.vertify.adapter.SMsgNine5022Adapter;
import cn.apppark.vertify.adapter.TempBaseAdapter;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import kv;
import kw;
import kx;
import ky;
import kz;

public class SMsgBase
  extends FrameLayout
  implements ISelfViewDyn
{
  private final int WHAT_GROUP = 4;
  private final int WHAT_INIT = 1;
  private final int WHAT_REF = 2;
  private final int WHAT_SCROLL = 3;
  public ArrayList<DynMsgGroupVo> a;
  private TempBaseAdapter adapter;
  LayoutInflater b;
  private ArrayList<Button> btns = new ArrayList();
  private Context context;
  private ArrayList<TextView> countTvs = new ArrayList();
  private int currentPage = 1;
  private HorizontalScrollView hScrollView;
  private ArrayList<DynMsgListReturnVo> itemList = new ArrayList();
  private DynMsgListVo itemVo;
  private PullDownListViewAutoLoad listView;
  private LinearLayout ll_type;
  private Dialog loadDialog;
  private ILoadDataEndListener loadendListener;
  private kz mHandler;
  private FreePageVo pageVo;
  private ElasticScrollView parentScroll;
  private String searchGroupId;
  private TextView tv_shadeLeft;
  private TextView tv_shadeRight;
  
  public SMsgBase(Context paramContext, FreePageVo paramFreePageVo, DynMsgListVo paramDynMsgListVo, ElasticScrollView paramElasticScrollView)
  {
    super(paramContext);
    this.context = paramContext;
    this.itemVo = paramDynMsgListVo;
    this.pageVo = paramFreePageVo;
    this.loadDialog = HQCHApplication.createLoadingDialog(HQCHApplication.mainActivity, 2131230756);
    this.mHandler = new kz(this, null);
    this.parentScroll = paramElasticScrollView;
  }
  
  private void getData(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("interfaces", this.searchGroupId);
    ((Map)localObject).put("currPage", Integer.valueOf(paramInt1));
    ((Map)localObject).put("pageSize", Integer.valueOf(20));
    localObject = new WebServicePool(paramInt2, this.mHandler, "json", PublicUtil.map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/info.ws", "list");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void getGroupData(int paramInt)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("groupId", this.itemVo.getGroupId());
    localObject = new WebServicePool(paramInt, this.mHandler, "json", PublicUtil.map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/info.ws", "getInfoSortInfo");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initAdapter()
  {
    switch (this.itemVo.getSys_moduleType())
    {
    default: 
      return;
    case 5021: 
      this.adapter = new SMsgList5021Adapter(this.context, this.itemVo, this.itemList);
      return;
    case 5022: 
      this.adapter = new SMsgNine5022Adapter(this.context, this.itemVo, this.itemList);
      return;
    }
    this.adapter = new SMsgCard5023Adapter(this.context, this.itemVo, this.itemList);
  }
  
  private void initLeftType()
  {
    int i = 0;
    if (i < this.a.size())
    {
      View localView = this.b.inflate(2130903179, null);
      Button localButton = (Button)localView.findViewById(2131362707);
      TextView localTextView1 = (TextView)localView.findViewById(2131362708);
      TextView localTextView2 = (TextView)localView.findViewById(2131362709);
      localButton.setText(((DynMsgGroupVo)this.a.get(i)).getName());
      localButton.setTag(Integer.valueOf(i));
      localTextView2.setTag(Integer.valueOf(i));
      this.btns.add(localButton);
      this.countTvs.add(localTextView2);
      FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, (View)this.countTvs.get(i));
      if (i == 0)
      {
        FunctionPublic.setTextColor((TextView)this.btns.get(i), YYGYContants.PERSIONCENTER_TOP_COLOR);
        localTextView2.setVisibility(0);
        localTextView1.setVisibility(8);
      }
      for (;;)
      {
        localButton.setOnClickListener(new SMsgBase.5(this));
        this.ll_type.addView(localView);
        i += 1;
        break;
        ((Button)this.btns.get(i)).setTextColor(getResources().getColor(2130837944));
        ((Button)this.btns.get(i)).setBackgroundResource(2130837947);
        localTextView2.setVisibility(8);
      }
    }
  }
  
  private void initListData(String paramString)
  {
    if ((this.currentPage == 1) && (this.itemList != null))
    {
      this.itemList.clear();
      if (this.adapter != null) {
        this.adapter.notifyDataSetChanged();
      }
    }
    paramString = JsonParserDyn.parseJson2List(paramString, new ky(this).getType());
    if (this.adapter == null)
    {
      if (paramString != null) {
        this.itemList.addAll(paramString);
      }
      initAdapter();
      this.listView.setAdapter(this.adapter);
      if (this.itemList.size() > 0) {
        this.listView.setSelection(0);
      }
    }
    for (;;)
    {
      this.currentPage += 1;
      if ((this.itemList == null) || (this.itemList.size() <= 0)) {
        break;
      }
      this.listView.onFootNodata(((DynMsgListReturnVo)this.itemList.get(0)).getCount(), this.itemList.size());
      return;
      if (paramString != null)
      {
        this.itemList.addAll(paramString);
        this.adapter.notifyDataSetChanged();
      }
    }
    this.listView.onFootNodata(0, 0);
  }
  
  private void initTopType()
  {
    int i;
    int j;
    label52:
    View localView;
    Object localObject;
    if (this.a.size() * PublicUtil.dip2px(65.0F) < YYGYContants.screenWidth)
    {
      i = YYGYContants.screenWidth / this.a.size();
      this.tv_shadeRight.setVisibility(8);
      this.tv_shadeLeft.setVisibility(8);
      j = 0;
      if (j >= this.a.size()) {
        return;
      }
      localView = this.b.inflate(2130903180, null);
      localObject = (Button)localView.findViewById(2131362710);
      TextView localTextView1 = (TextView)localView.findViewById(2131362711);
      TextView localTextView2 = (TextView)localView.findViewById(2131362712);
      ((Button)localObject).setText(((DynMsgGroupVo)this.a.get(j)).getName());
      ((Button)localObject).setTag(Integer.valueOf(j));
      localTextView1.setTag(Integer.valueOf(j));
      this.btns.add(localObject);
      this.countTvs.add(localTextView1);
      FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, (View)this.countTvs.get(j));
      if (j != 0) {
        break label279;
      }
      FunctionPublic.setTextColor((TextView)this.btns.get(j), YYGYContants.PERSIONCENTER_TOP_COLOR);
      ((TextView)this.countTvs.get(j)).setVisibility(0);
      localTextView2.setVisibility(8);
    }
    for (;;)
    {
      ((Button)localObject).setOnClickListener(new SMsgBase.4(this));
      localObject = new LinearLayout.LayoutParams(i, -1);
      this.ll_type.addView(localView, (ViewGroup.LayoutParams)localObject);
      j += 1;
      break label52;
      i = PublicUtil.dip2px(65.0F);
      break;
      label279:
      ((Button)this.btns.get(j)).setTextColor(getResources().getColor(2130837944));
    }
  }
  
  private void initTopType(View paramView)
  {
    this.hScrollView = ((HorizontalScrollView)paramView.findViewById(2131362714));
    this.hScrollView.setOnTouchListener(new kx(this));
    this.tv_shadeLeft = ((TextView)paramView.findViewById(2131362715));
    this.tv_shadeLeft.setVisibility(4);
    this.tv_shadeRight = ((TextView)paramView.findViewById(2131362716));
    this.ll_type = ((LinearLayout)paramView.findViewById(2131362656));
    initTopType();
  }
  
  private void initWidget()
  {
    this.b = ((LayoutInflater)this.context.getSystemService("layout_inflater"));
    View localView;
    if ("1".equals(this.itemVo.getStyle_tabPosition()))
    {
      localView = this.b.inflate(2130903166, null);
      initTopType(localView);
    }
    for (;;)
    {
      addView(localView);
      this.listView = ((PullDownListViewAutoLoad)localView.findViewById(2131362616));
      this.listView.setParentScroll(this.parentScroll);
      this.listView.setOnItemClickListener(new kv(this));
      this.listView.setonFootRefreshListener(new kw(this));
      return;
      localView = this.b.inflate(2130903165, null);
      this.ll_type = ((LinearLayout)localView.findViewById(2131362656));
      initLeftType();
    }
  }
  
  private void initleftType(View paramView)
  {
    this.ll_type = ((LinearLayout)paramView.findViewById(2131362656));
    initLeftType();
  }
  
  private void refData()
  {
    this.currentPage = 1;
    getData(this.currentPage, 2);
  }
  
  public void init() {}
  
  public void initData()
  {
    getGroupData(4);
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


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/SMsgBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */