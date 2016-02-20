package cn.apppark.vertify.activity.tieba;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.jsonparse.JsonParserUtil;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.free.FunctionTiebaVo;
import cn.apppark.mcd.vo.tieba.TMainVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView4;
import cn.apppark.mcd.widget.RightSlidMenu;
import cn.apppark.vertify.adapter.TMainAdapter;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import se;
import sf;
import sg;
import sh;
import si;
import sj;
import sk;

public class TMain
  extends TBBaseAct
  implements View.OnClickListener
{
  public final int CLICKGOOD_WHAT = 2;
  private final int GET_WHAT = 1;
  private final int MSG_MAIN_WHAT = 4;
  private final int MSG_WHAT = 3;
  private TMainAdapter adapter;
  private Button btn_back;
  private Button btn_edit;
  private Button btn_more;
  private Button btn_ref;
  private Context context = this;
  private String currentMsgTime = "2016-02-20 10:31:004";
  private int currentPage = 1;
  private sk handler;
  private ImageView img_icon;
  private ImageView img_topbg;
  private boolean isGetMsg = true;
  private boolean isMsgFinish = true;
  private ArrayList<TMainVo> itemList = new ArrayList();
  private ArrayList<TMainVo> itemList_top = new ArrayList();
  private String json;
  private PullDownListView4 listView;
  private LinearLayout ll_msg;
  private LinearLayout ll_rightMenu;
  private LinearLayout ll_toparticle;
  private LoadDataProgress load;
  private RightSlidMenu menu;
  private Animation operatingAnim;
  private RelativeLayout rel_menu;
  private RelativeLayout rel_ref;
  private FunctionTiebaVo tbInfo;
  private TextView tv_myCollection;
  private TextView tv_myHistory;
  private TextView tv_myMsg;
  private TextView tv_myTopic;
  private TextView tv_name;
  private TextView tv_num;
  private TextView tv_title;
  private TextView tv_topicNum;
  
  private boolean checkLogin(Class<? extends TBBaseAct> paramClass)
  {
    if (getInfo().getUserId() == null)
    {
      paramClass = new Intent(HQCHApplication.getInstance(), YYGYContants.getLoginClass());
      HQCHApplication.mainActivity.startActivity(paramClass);
      return false;
    }
    paramClass = new Intent(this.context, paramClass);
    HQCHApplication.mainActivity.startActivity(paramClass);
    return true;
  }
  
  private void checkResult()
  {
    this.btn_ref.setClickable(true);
    if (this.itemList.size() == 0) {
      HQCHApplication.instance.initToast("暂无帖子", 0);
    }
    if ((this.itemList != null) && (this.itemList.size() > 0)) {
      this.listView.onFootNodata(((TMainVo)this.itemList.get(0)).getCount() - this.itemList_top.size(), this.itemList.size());
    }
    for (;;)
    {
      if ((this.itemList != null) && (this.itemList.size() > 0)) {
        this.tv_topicNum.setText(((TMainVo)this.itemList.get(0)).getCount());
      }
      return;
      this.listView.onFootNodata(0, 0);
    }
  }
  
  private void getData(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("userId", getInfo().getUserId());
    ((Map)localObject).put("tiebaId", TBaseParam.TB_ID);
    ((Map)localObject).put("currPage", Integer.valueOf(paramInt1));
    ((Map)localObject).put("pageSize", Integer.valueOf(20));
    localObject = new WebServicePool(paramInt2, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/tieba.ws", "main");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void getMsg(int paramInt)
  {
    if (getInfo().getUserId() != null)
    {
      Object localObject = new HashMap();
      ((Map)localObject).put("userId", getInfo().getUserId());
      if (getInfo().getLastMsgTime(getInfo().getUserId()) != null) {
        this.currentMsgTime = getInfo().getLastMsgTime(getInfo().getUserId());
      }
      ((Map)localObject).put("lastReadTime", this.currentMsgTime);
      localObject = new WebServicePool(paramInt, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/tieba.ws", "getNewMessageCount");
      ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
    }
  }
  
  private void getMsgThread()
  {
    new Thread(new se(this)).start();
  }
  
  private void initTBInfo()
  {
    this.json = getIntent().getStringExtra("json");
    if (this.json != null) {
      this.tbInfo = ((FunctionTiebaVo)JsonParserUtil.parseJson2Vo(this.json, FunctionTiebaVo.class));
    }
    if (this.tbInfo != null)
    {
      TBaseParam.TB_ID = this.tbInfo.getTiebaId();
      TBaseParam.TOPMENU_BGCOLOR = this.tbInfo.getStyle_navBgColor();
      return;
    }
    finish();
  }
  
  private void initTopMenu()
  {
    this.rel_menu = ((RelativeLayout)findViewById(2131362885));
    FunctionPublic.setBackgroundColor(TBaseParam.TOPMENU_BGCOLOR, this.rel_menu);
    this.btn_back = ((Button)findViewById(2131362887));
    this.btn_edit = ((Button)findViewById(2131362888));
    this.btn_more = ((Button)findViewById(2131362890));
    this.tv_num = ((TextView)findViewById(2131362891));
    this.tv_title = ((TextView)findViewById(2131362886));
    this.tv_title.setText("贴吧");
    this.btn_back.setOnClickListener(this);
    this.btn_edit.setOnClickListener(this);
    this.btn_more.setOnClickListener(this);
  }
  
  private void initTopMsg(ArrayList<TMainVo> paramArrayList)
  {
    this.ll_toparticle.removeAllViews();
    LayoutInflater localLayoutInflater = LayoutInflater.from(this.context);
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      int i = 0;
      while (i < paramArrayList.size())
      {
        TMainVo localTMainVo = (TMainVo)paramArrayList.get(i);
        RelativeLayout localRelativeLayout = (RelativeLayout)localLayoutInflater.inflate(2130903221, null);
        this.ll_toparticle.addView(localRelativeLayout);
        ((TextView)localRelativeLayout.findViewById(2131362883)).setText(((TMainVo)paramArrayList.get(i)).getTitle());
        if (i == paramArrayList.size() - 1) {
          ((ImageView)localRelativeLayout.findViewById(2131362884)).setVisibility(8);
        }
        localRelativeLayout.setOnClickListener(new TMain.6(this, localTMainVo));
        i += 1;
      }
    }
  }
  
  private void initWidget()
  {
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.handler = new sk(this, null);
    this.listView = ((PullDownListView4)findViewById(2131362892));
    this.listView.setDividerHeight(0);
    this.listView.setonRefreshListener(new sf(this), false);
    this.listView.setonFootRefreshListener(new sg(this));
    this.listView.setOnItemClickListener(new sh(this));
    RelativeLayout localRelativeLayout = (RelativeLayout)LayoutInflater.from(this.context).inflate(2130903223, null);
    this.img_icon = ((ImageView)localRelativeLayout.findViewById(2131362901));
    this.img_topbg = ((ImageView)localRelativeLayout.findViewById(2131362897));
    this.tv_name = ((TextView)localRelativeLayout.findViewById(2131362899));
    this.tv_topicNum = ((TextView)localRelativeLayout.findViewById(2131362900));
    this.tv_name.setText(this.tbInfo.getData_text());
    this.tv_title.setText(this.tbInfo.getData_text());
    FunctionPublic.setBackground(this.tbInfo.getData_pic(), this.img_icon);
    FunctionPublic.setBackground(this.tbInfo.getStyle_pic(), this.img_topbg);
    this.listView.addHeaderView(localRelativeLayout);
    this.ll_toparticle = ((LinearLayout)localRelativeLayout.findViewById(2131362902));
    this.btn_ref = ((Button)findViewById(2131362894));
    this.rel_ref = ((RelativeLayout)findViewById(2131362893));
    this.btn_ref.setClickable(false);
    this.menu = ((RightSlidMenu)findViewById(2131362881));
    this.menu.setChangeListener(new si(this));
    this.tv_myTopic = ((TextView)findViewById(2131362918));
    this.tv_myCollection = ((TextView)findViewById(2131362919));
    this.ll_rightMenu = ((LinearLayout)findViewById(2131362917));
    this.ll_rightMenu.setOnClickListener(this);
    this.tv_myMsg = ((TextView)findViewById(2131362922));
    this.ll_msg = ((LinearLayout)findViewById(2131362921));
    this.tv_myHistory = ((TextView)findViewById(2131362920));
    this.btn_ref.setOnClickListener(this);
    this.tv_myTopic.setOnClickListener(this);
    this.tv_myCollection.setOnClickListener(this);
    this.ll_msg.setOnClickListener(this);
    this.tv_myHistory.setOnClickListener(this);
  }
  
  private void refData()
  {
    this.currentPage = 1;
    getData(this.currentPage, 1);
  }
  
  private void sendClickGood(int paramInt1, String paramString, int paramInt2, int paramInt3)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("type", Integer.valueOf(paramInt3));
    localHashMap.put("userId", getInfo().getUserId());
    localHashMap.put("topicId", paramString);
    localHashMap.put("tiebaId", TBaseParam.TB_ID);
    paramString = new WebServicePool(paramInt1, this.handler, "json", map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/tieba.ws", "clickGood");
    paramString.doRequest(paramString);
  }
  
  private void setData(ArrayList<TMainVo> paramArrayList)
  {
    if (this.currentPage == 1) {
      this.itemList.clear();
    }
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      this.itemList.addAll(paramArrayList);
      this.currentPage += 1;
    }
    if (this.adapter == null)
    {
      this.adapter = new TMainAdapter(this.context, this.itemList, this);
      this.listView.setAdapter(this.adapter);
      return;
    }
    this.adapter.notifyDataSetChanged();
  }
  
  private void setMainMsgCount(String paramString)
  {
    try
    {
      Object localObject = new JSONObject(paramString);
      paramString = ((JSONObject)localObject).getString("retFlag");
      localObject = ((JSONObject)localObject).getString("count");
      if ("1".equals(paramString))
      {
        this.tv_myMsg.setText((CharSequence)localObject);
        if ((StringUtil.isNotNull((String)localObject)) && (!"0".equals(localObject)))
        {
          this.tv_num.setVisibility(0);
          this.tv_num.setText((CharSequence)localObject);
          return;
        }
        this.tv_num.setVisibility(8);
        return;
      }
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  private void setMsgCount(String paramString)
  {
    try
    {
      Object localObject = new JSONObject(paramString);
      paramString = ((JSONObject)localObject).getString("retFlag");
      localObject = ((JSONObject)localObject).getString("count");
      if ("1".equals(paramString))
      {
        getInfo().updateLastMsgTime(getInfo().getUserId(), this.currentMsgTime);
        this.tv_myMsg.setText((CharSequence)localObject);
        if ((StringUtil.isNotNull((String)localObject)) && (!"0".equals(localObject)))
        {
          this.tv_num.setVisibility(0);
          this.tv_num.setText((CharSequence)localObject);
          return;
        }
        this.tv_num.setVisibility(8);
        return;
      }
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  private void showError()
  {
    this.load.showError(2131230757, true, false, "255");
    this.load.setInterfaceRef(new sj(this));
  }
  
  public void clickGood(int paramInt1, String paramString, int paramInt2)
  {
    if (getInfo().getUserId() != null)
    {
      if ("1".equals(((TMainVo)this.itemList.get(paramInt2)).getIsGood()))
      {
        ((TMainVo)this.itemList.get(paramInt2)).setGoodNum(((TMainVo)this.itemList.get(paramInt2)).getGoodNum() - 1);
        ((TMainVo)this.itemList.get(paramInt2)).setIsGood("0");
      }
      for (int i = 0;; i = 1)
      {
        sendClickGood(paramInt1, paramString, paramInt2, i);
        this.adapter.notifyDataSetChanged();
        if (((TMainVo)this.itemList.get(paramInt2)).getGoodNum() <= 0) {
          ((TMainVo)this.itemList.get(paramInt2)).setGoodNum(0);
        }
        return;
        ((TMainVo)this.itemList.get(paramInt2)).setGoodNum(((TMainVo)this.itemList.get(paramInt2)).getGoodNum() + 1);
        ((TMainVo)this.itemList.get(paramInt2)).setIsGood("1");
      }
    }
    startActivity(new Intent(this, YYGYContants.getLoginClass()));
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == 1)
    {
      if (this.operatingAnim != null) {
        this.btn_ref.startAnimation(this.operatingAnim);
      }
      this.currentPage = 1;
      getData(this.currentPage, 1);
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
    case 2131362887: 
    case 2131362888: 
      do
      {
        return;
        finish();
        return;
      } while (!getIsLoginInfo());
      startActivityForResult(new Intent(this, TEdit.class), 1);
      return;
    case 2131362890: 
      this.menu.closeOpenMenu();
      return;
    case 2131362894: 
      if (this.operatingAnim != null) {
        this.btn_ref.startAnimation(this.operatingAnim);
      }
      refData();
      return;
    case 2131362918: 
      checkLogin(TMytopicAndComment.class);
    }
    for (;;)
    {
      this.menu.closeOpenMenu();
      return;
      checkLogin(TMyCollection.class);
      continue;
      if (checkLogin(TMsg.class))
      {
        this.currentMsgTime = PublicUtil.getFormatTime();
        getInfo().updateLastMsgTime(getInfo().getUserId(), this.currentMsgTime);
        this.tv_num.setVisibility(8);
      }
      this.menu.closeOpenMenu();
      return;
      checkLogin(TMyHistory.class);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903220);
    initTBInfo();
    initTopMenu();
    initWidget();
    getData(this.currentPage, 1);
    getMsg(4);
    new Thread(new se(this)).start();
    this.operatingAnim = AnimationUtils.loadAnimation(this, 2130968587);
    this.operatingAnim.setInterpolator(new LinearInterpolator());
  }
  
  protected void onDestroy()
  {
    this.isGetMsg = false;
    super.onDestroy();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (this.menu.isMenuShow) {
        this.menu.closeOpenMenu();
      }
    }
    else {
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public void topicComment(int paramInt)
  {
    Intent localIntent = new Intent(this.context, TTopicDetail.class);
    localIntent.putExtra("topicid", ((TMainVo)this.itemList.get(paramInt)).getTopicId());
    startActivityForResult(localIntent, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/tieba/TMain.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */