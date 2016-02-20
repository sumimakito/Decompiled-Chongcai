package cn.apppark.vertify.activity.soft;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.file.PrivateFileReadSave;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.vo.free.SoftReturnVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView;
import cn.apppark.mcd.widget.PullDownListView2;
import cn.apppark.mcd.widget.UserGallery;
import cn.apppark.vertify.adapter.SoftAdapter;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import qe;
import qg;
import qh;
import qi;
import qj;
import qk;
import ql;
import qm;
import qn;
import qo;
import qp;
import qq;
import qr;
import qs;
import qt;

public class Soft
  extends Activity
{
  private static final int down_cache_what = 6;
  private static final int down_ref_what = 5;
  private static final int down_what = 4;
  private static final String method_down = "downTop";
  private static final String method_must = "need";
  private static final String method_recom = "recommend";
  private static final int must_cache_what = 9;
  private static final int must_ref_what = 8;
  private static final int must_what = 7;
  private static final int recom_cache_what = 3;
  private static final int recom_ref_what = 2;
  private static final int recom_what = 1;
  private SoftAdapter adapter_down;
  private SoftAdapter adapter_must;
  private SoftAdapter adapter_recom;
  private ArrayList<ImageView> arrImageView;
  private Button btn_back;
  private Button btn_down;
  private Button btn_must;
  private Button btn_recom;
  private Context context = this;
  private int currentPage_down = 1;
  private int currentPage_must = 1;
  private int currentPage_recom = 1;
  private ArrayList<SoftReturnVo> galleryVoListTemp;
  private ArrayList<SoftReturnVo> galleryVoLista = new ArrayList();
  private qt handler;
  private boolean isDownFinish = true;
  private boolean isMustFinish = true;
  private ArrayList<SoftReturnVo> itemList_down = new ArrayList();
  private ArrayList<SoftReturnVo> itemList_must = new ArrayList();
  private ArrayList<SoftReturnVo> itemList_recom = new ArrayList();
  private PullDownListView listView_down;
  private PullDownListView listView_must;
  private PullDownListView2 listView_recom;
  private LinearLayout ll_menu;
  private LoadDataProgress load;
  private List<View> mListViews = new ArrayList();
  private ArrayList<SoftReturnVo> tempItemList_down;
  private ArrayList<SoftReturnVo> tempItemList_must;
  private ArrayList<SoftReturnVo> tempItemList_recom;
  private ViewPager viewpage_list;
  
  private void checkResult(PullDownListView2 paramPullDownListView2, ArrayList<SoftReturnVo> paramArrayList)
  {
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      paramPullDownListView2.onFootNodata(((SoftReturnVo)paramArrayList.get(0)).getCount(), paramArrayList.size());
      return;
    }
    paramPullDownListView2.onFootNodata(0, 0);
  }
  
  private void checkResult(PullDownListView paramPullDownListView, ArrayList<SoftReturnVo> paramArrayList)
  {
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      paramPullDownListView.onFootNodata(((SoftReturnVo)paramArrayList.get(0)).getCount(), paramArrayList.size());
      return;
    }
    paramPullDownListView.onFootNodata(0, 0);
  }
  
  private void getData(int paramInt1, int paramInt2, String paramString1, boolean paramBoolean, String paramString2)
  {
    if (paramBoolean)
    {
      paramString1 = PrivateFileReadSave.read(paramString2, this);
      paramString2 = Message.obtain();
      paramString2.what = paramInt2;
      Bundle localBundle = new Bundle();
      localBundle.putString("soresult", paramString1);
      paramString2.setData(localBundle);
      this.handler.sendMessage(paramString2);
      return;
    }
    paramString2 = new HashMap();
    paramString2.put("appId", "10185912");
    paramString2.put("type", "2");
    paramString2.put("currPage", Integer.valueOf(paramInt1));
    paramString2.put("pageSize", Integer.valueOf(20));
    paramString1 = new WebServicePool(paramInt2, this.handler, "json", PublicUtil.map2Json(paramString2), "http://ws.ckj.hqch.com", "http://www.apppark.cn/ad.ws", paramString1);
    paramString1.doRequest(paramString1);
  }
  
  private void initGalleryData(String paramString)
  {
    Type localType = new ql(this).getType();
    if (this.galleryVoListTemp != null) {
      this.galleryVoListTemp.clear();
    }
    if (this.galleryVoLista != null) {
      this.galleryVoLista.clear();
    }
    this.galleryVoListTemp = JsonParserDyn.parseItem2Vo(paramString, localType, "subject");
    if (this.galleryVoListTemp != null) {
      this.galleryVoLista.addAll(this.galleryVoListTemp);
    }
    if ((this.galleryVoLista != null) && (this.galleryVoLista.size() > 0))
    {
      paramString = new qe(this.context, this.galleryVoLista);
      this.listView_recom.gallery.setAdapter(paramString);
      this.listView_recom.gallery.setmPager(this.viewpage_list);
      ((ViewGroup.MarginLayoutParams)this.listView_recom.gallery.getLayoutParams()).setMargins(-(YYGYContants.screenWidth / 2), 0, 0, 0);
      this.listView_recom.gallery.setOnItemClickListener(new qm(this));
      this.listView_recom.gallery.setOnItemSelectedListener(new qn(this));
      initPoint(0, this.galleryVoLista);
    }
  }
  
  private void initPoint(int paramInt, ArrayList<SoftReturnVo> paramArrayList)
  {
    this.listView_recom.ll_point.removeAllViews();
    this.arrImageView = new ArrayList();
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(PublicUtil.dip2px(7.0F), PublicUtil.dip2px(7.0F));
    localLayoutParams.setMargins(PublicUtil.dip2px(2.0F), PublicUtil.dip2px(5.0F), PublicUtil.dip2px(2.0F), PublicUtil.dip2px(5.0F));
    int i = 0;
    while (i < paramArrayList.size())
    {
      ImageView localImageView = new ImageView(this);
      localImageView.setBackgroundResource(2130837848);
      if (i == paramInt) {
        localImageView.setBackgroundResource(2130837819);
      }
      this.arrImageView.add(localImageView);
      this.listView_recom.ll_point.addView(localImageView, localLayoutParams);
      i += 1;
    }
  }
  
  private void initWidget()
  {
    this.btn_back = ((Button)findViewById(2131362800));
    this.btn_recom = ((Button)findViewById(2131362803));
    this.btn_down = ((Button)findViewById(2131362804));
    this.btn_must = ((Button)findViewById(2131362805));
    this.ll_menu = ((LinearLayout)findViewById(2131362802));
    this.ll_menu.getLayoutParams().height = ((int)(YYGYContants.scaleUnite * 47.0F));
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    this.btn_back.setOnClickListener(new Soft.1(this));
    Object localObject = getLayoutInflater();
    View localView1 = ((LayoutInflater)localObject).inflate(2130903207, null);
    View localView2 = ((LayoutInflater)localObject).inflate(2130903204, null);
    localObject = ((LayoutInflater)localObject).inflate(2130903206, null);
    this.mListViews.add(localView1);
    this.mListViews.add(localView2);
    this.mListViews.add(localObject);
    this.viewpage_list = ((ViewPager)findViewById(2131362801));
    Soft.AwesomePagerAdapter localAwesomePagerAdapter = new Soft.AwesomePagerAdapter(this, this.mListViews);
    this.viewpage_list.setAdapter(localAwesomePagerAdapter);
    this.listView_recom = ((PullDownListView2)localView1.findViewById(2131362831));
    this.listView_down = ((PullDownListView)localView2.findViewById(2131362823));
    this.listView_must = ((PullDownListView)((View)localObject).findViewById(2131362830));
    this.viewpage_list.setPadding(0, PublicUtil.dip2px(35.0F), 0, 0);
    this.viewpage_list.setOnPageChangeListener(new qo(this));
    this.btn_recom.setOnClickListener(new Soft.3(this));
    this.btn_down.setOnClickListener(new Soft.4(this));
    this.btn_must.setOnClickListener(new Soft.5(this));
    this.listView_recom.setonRefreshListener(new qp(this), true);
    this.listView_recom.setonFootRefreshListener(new qq(this));
    this.listView_down.setonRefreshListener(new qr(this), true);
    this.listView_down.setonFootRefreshListener(new qs(this));
    this.listView_must.setonRefreshListener(new qg(this), true);
    this.listView_must.setonFootRefreshListener(new qh(this));
    this.listView_recom.setOnItemClickListener(new qi(this));
    this.listView_down.setOnItemClickListener(new qj(this));
    this.listView_must.setOnItemClickListener(new qk(this));
  }
  
  private void subCleckData()
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("type", Integer.valueOf(2));
    localObject = new WebServicePool(1000, this.handler, "json", PublicUtil.map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/ad.ws", "index");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  public void changePoint(int paramInt)
  {
    int i = 0;
    if (i < this.arrImageView.size())
    {
      if (i == paramInt)
      {
        ((ImageView)this.arrImageView.get(i)).setBackgroundResource(2130837848);
        this.listView_recom.ll_point.invalidate();
      }
      for (;;)
      {
        i += 1;
        break;
        ((ImageView)this.arrImageView.get(i)).setBackgroundResource(2130837819);
        this.listView_recom.ll_point.invalidate();
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903200);
    this.load = ((LoadDataProgress)findViewById(2131361809));
    initWidget();
    this.handler = new qt(this, null);
    getData(this.currentPage_recom, 3, "recommend", true, "recom");
    subCleckData();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/soft/Soft.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */