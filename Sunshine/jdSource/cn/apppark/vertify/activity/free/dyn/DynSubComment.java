package cn.apppark.vertify.activity.free.dyn;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.dyn.DynCommentReturnVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView3;
import cn.apppark.vertify.activity.BaseAct;
import cn.apppark.vertify.adapter.DynCommentAdapter;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import kg;
import kh;
import ki;
import kl;

public class DynSubComment
  extends BaseAct
{
  private final int DEL_WHAT = 4;
  private final int GET_WHAT = 1;
  private final int GOOD_WHAT = 5;
  private final String METHOD = "commentList";
  private final String METHOD_CLICKGOOD = "praise";
  private final String METHOD_DELCOMMENT = "deleteComment";
  private final String METHOD_REPLAY = "replyInfoComment";
  private final String METHOD_SUB = "saveNewComment";
  private final int REF_DATA = 3;
  private final int REP_WHAT = 5;
  private final int SUB_WHAT = 2;
  private DynCommentAdapter adapter;
  private Button btn_back;
  private Button btn_close;
  private Button btn_subcomment;
  private Context context = this;
  private int currentPage = 1;
  private int delPosition;
  private Dialog dialog;
  private EditText et_comment;
  private FrameLayout fra_keyboard;
  private kl handler;
  private String id;
  private ClientPersionInfo info;
  private ArrayList<DynCommentReturnVo> itemList = new ArrayList();
  private PullDownListView3 listView;
  private LinearLayout ll_commentView;
  private LinearLayout ll_showCommentView;
  private LoadDataProgress load;
  private String pid;
  private String repLayHead = null;
  private String replyUserId;
  private String replyUserName;
  private ArrayList<DynCommentReturnVo> tempItemList;
  
  private void checkResult(PullDownListView3 paramPullDownListView3, ArrayList<DynCommentReturnVo> paramArrayList)
  {
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      paramPullDownListView3.onFootNodata(((DynCommentReturnVo)paramArrayList.get(0)).getCount(), paramArrayList.size());
      return;
    }
    paramPullDownListView3.onFootNodata(0, 0);
  }
  
  private void clickGood(int paramInt, String paramString1, String paramString2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("userId", this.info.getUserId());
    localHashMap.put("cId", paramString1);
    paramString1 = new WebServicePool(paramInt, this.handler, "json", PublicUtil.map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/praise.ws", "praise");
    paramString1.setPosition(paramString2);
    paramString1.doRequest(paramString1);
  }
  
  private void delComment(int paramInt, String paramString1, String paramString2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("interfaces", paramString1);
    localHashMap.put("userId", this.info.getUserId());
    localHashMap.put("pid", paramString2);
    paramString1 = new WebServicePool(paramInt, this.handler, "json", PublicUtil.map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/info.ws", "deleteComment");
    paramString1.doRequest(paramString1);
  }
  
  private void getData(int paramInt1, int paramInt2, String paramString)
  {
    paramString = new HashMap();
    paramString.put("interfaces", this.id);
    paramString.put("currPage", Integer.valueOf(paramInt1));
    paramString.put("pageSize", Integer.valueOf(20));
    paramString = new WebServicePool(paramInt2, this.handler, "json", PublicUtil.map2Json(paramString), "http://ws.ckj.hqch.com", "http://www.apppark.cn/info.ws", "commentList");
    paramString.doRequest(paramString);
  }
  
  private boolean hiddenKeyboard(EditText paramEditText)
  {
    return ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(paramEditText.getWindowToken(), 0);
  }
  
  private void initWidget()
  {
    this.btn_subcomment = ((Button)findViewById(2131362197));
    this.btn_close = ((Button)findViewById(2131362196));
    this.fra_keyboard = ((FrameLayout)findViewById(2131362192));
    this.et_comment = ((EditText)findViewById(2131362198));
    ButtonColorFilter.setButtonFocusChanged(this.btn_subcomment);
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131362190);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.btn_back = ((Button)findViewById(2131362191));
    this.btn_back.setOnClickListener(new DynSubComment.1(this));
    this.btn_close.setOnClickListener(new DynSubComment.2(this));
    this.ll_showCommentView = ((LinearLayout)findViewById(2131362194));
    this.ll_commentView = ((LinearLayout)findViewById(2131362195));
    this.ll_showCommentView.setOnClickListener(new DynSubComment.3(this));
    this.ll_commentView.setOnClickListener(new DynSubComment.4(this));
    this.listView = ((PullDownListView3)findViewById(2131362193));
    this.listView.setonRefreshListener(new kg(this), true);
    this.listView.setonFootRefreshListener(new kh(this));
    this.listView.setOnItemClickListener(new ki(this));
    this.fra_keyboard.setOnClickListener(new DynSubComment.8(this));
    this.btn_subcomment.setOnClickListener(new DynSubComment.9(this));
  }
  
  private void replayData(int paramInt)
  {
    Object localObject3 = this.et_comment.getText().toString();
    if (this.info.getUserNikeName() != null) {}
    for (Object localObject1 = this.info.getUserNikeName();; localObject1 = this.info.getPhone())
    {
      Object localObject2 = localObject3;
      if (this.repLayHead != null) {
        localObject2 = this.repLayHead + (String)localObject3;
      }
      localObject3 = new HashMap();
      ((Map)localObject3).put("interfaces", this.id);
      ((Map)localObject3).put("userId", this.info.getUserId());
      ((Map)localObject3).put("userName", localObject1);
      ((Map)localObject3).put("userPicUrl", this.info.getUserHeadFace());
      ((Map)localObject3).put("content", localObject2);
      ((Map)localObject3).put("pid", this.pid);
      ((Map)localObject3).put("replyUserId", this.replyUserId);
      ((Map)localObject3).put("replyUserName", this.replyUserName);
      localObject1 = new WebServicePool(paramInt, this.handler, "json", PublicUtil.map2Json((Map)localObject3), "http://ws.ckj.hqch.com", "http://www.apppark.cn/info.ws", "replyInfoComment");
      ((WebServicePool)localObject1).doRequest((NetWorkRequest)localObject1);
      return;
    }
  }
  
  private void saveComment()
  {
    if (StringUtil.isNotNull(this.et_comment.getText().toString()))
    {
      if (this.dialog == null) {
        this.dialog = HQCHApplication.createLoadingDialog(this.context, 2131230756);
      }
      this.dialog.show();
      if (this.repLayHead != null)
      {
        replayData(2);
        return;
      }
      subData(2);
      return;
    }
    initToast("请输入您的评论", 0);
  }
  
  private void showKeyboard(EditText paramEditText)
  {
    ((InputMethodManager)getSystemService("input_method")).showSoftInput(paramEditText, 0);
  }
  
  private void subClickGood(String paramString, int paramInt)
  {
    if (this.info.getUserId() != null)
    {
      if (this.dialog == null) {
        this.dialog = HQCHApplication.createLoadingDialog(this.context, 2131230756);
      }
      this.dialog.show();
      clickGood(5, paramString, paramInt);
      return;
    }
    initToast("请登录后点赞", 0);
    startActivityForResult(new Intent(this, YYGYContants.getLoginClass()), 2);
  }
  
  private void subData(int paramInt)
  {
    Object localObject3 = this.et_comment.getText().toString();
    if (this.info.getUserNikeName() != null) {}
    for (Object localObject1 = this.info.getUserNikeName();; localObject1 = this.info.getPhone())
    {
      Object localObject2 = localObject3;
      if (this.repLayHead != null) {
        localObject2 = this.repLayHead + (String)localObject3;
      }
      localObject3 = new HashMap();
      ((Map)localObject3).put("interfaces", this.id);
      ((Map)localObject3).put("userId", this.info.getUserId());
      ((Map)localObject3).put("userName", localObject1);
      ((Map)localObject3).put("userPicUrl", this.info.getUserHeadFace());
      ((Map)localObject3).put("content", localObject2);
      localObject1 = new WebServicePool(paramInt, this.handler, "json", PublicUtil.map2Json((Map)localObject3), "http://ws.ckj.hqch.com", "http://www.apppark.cn/info.ws", "saveNewComment");
      ((WebServicePool)localObject1).doRequest((NetWorkRequest)localObject1);
      return;
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 1) && (paramInt2 == 1) && (this.info.getUserId() != null))
    {
      if (this.dialog == null) {
        this.dialog = HQCHApplication.createLoadingDialog(this.context, 2131230756);
      }
      this.dialog.show();
      subData(2);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903093);
    this.info = new ClientPersionInfo(this.context);
    this.id = getIntent().getStringExtra("id");
    this.load = ((LoadDataProgress)findViewById(2131361809));
    initWidget();
    this.handler = new kl(this, null);
    getData(this.currentPage, 1, "commentList");
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      setResult(this.itemList.size());
      finish();
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/DynSubComment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */