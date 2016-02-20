package cn.apppark.vertify.activity.buy;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.dyn.DynCommentReturnVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView3;
import cn.apppark.vertify.activity.buy.adapter.BuyMsgCommentRepAdapter;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import cw;
import cx;
import cy;
import db;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class BuyMsgCommentRep
  extends BuyBaseAct
{
  private static final int DEL_WHAT = 4;
  private static final int GET_WHAT = 1;
  private static final String METHOD = "replyDetail";
  private static final String METHOD_DELCOMMENT = "deleteComment";
  private static final String METHOD_REPLAY = "replyInfoComment";
  private static final String METHOD_SUB = "saveNewComment";
  private static final int REF_DATA = 3;
  private static final int REP_WHAT = 2;
  private static final int SUB_WHAT = 2;
  private BuyMsgCommentRepAdapter adapter;
  private Button btn_back;
  private Button btn_close;
  private Button btn_subcomment;
  private Context context = this;
  private int currentPage = 1;
  private int delPosition;
  private Dialog dialog;
  private EditText et_comment;
  private FrameLayout fra_keyboard;
  private db handler;
  private ClientPersionInfo info;
  private ArrayList<DynCommentReturnVo> itemList = new ArrayList();
  private PullDownListView3 listView;
  private LoadDataProgress load;
  private String pid;
  private String repLayHead = null;
  private String replyUserId;
  private String replyUserName;
  private ArrayList<DynCommentReturnVo> tempItemList;
  private String tempNewsId;
  private String tempPid;
  
  private void checkResult(PullDownListView3 paramPullDownListView3, ArrayList<DynCommentReturnVo> paramArrayList)
  {
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      paramPullDownListView3.onFootNodata(((DynCommentReturnVo)paramArrayList.get(0)).getCount(), paramArrayList.size());
      return;
    }
    paramPullDownListView3.onFootNodata(0, 0);
  }
  
  private void delComment(int paramInt, String paramString1, String paramString2)
  {
    paramString1 = new HashMap();
    paramString1.put("userId", this.info.getUserId());
    paramString1.put("pid", paramString2);
    paramString1 = new WebServicePool(paramInt, this.handler, "json", map2Json(paramString1), "http://ws.ckj.hqch.com", "http://www.apppark.cn/info.ws", "deleteComment");
    paramString1.doRequest(paramString1);
  }
  
  private void getData(int paramInt1, int paramInt2, String paramString)
  {
    paramString = new HashMap();
    paramString.put("userId", this.info.getUserId());
    paramString.put("pid", this.pid);
    paramString = new WebServicePool(paramInt2, this.handler, "json", map2Json(paramString), "http://ws.ckj.hqch.com", "http://www.apppark.cn/info.ws", "replyDetail");
    paramString.doRequest(paramString);
  }
  
  private boolean hiddenKeyboard(EditText paramEditText)
  {
    return ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(paramEditText.getWindowToken(), 0);
  }
  
  private void initWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.btn_subcomment = ((Button)findViewById(2131361877));
    this.btn_close = ((Button)findViewById(2131361876));
    this.fra_keyboard = ((FrameLayout)findViewById(2131361873));
    this.et_comment = ((EditText)findViewById(2131361875));
    ButtonColorFilter.setButtonFocusChanged(this.btn_subcomment);
    this.btn_back = ((Button)findViewById(2131361865));
    this.btn_back.setOnClickListener(new BuyMsgCommentRep.1(this));
    this.btn_close.setVisibility(8);
    this.btn_close.getBackground().setAlpha(50);
    this.btn_close.setOnClickListener(new BuyMsgCommentRep.2(this));
    this.listView = ((PullDownListView3)findViewById(2131361874));
    this.listView.setonRefreshListener(new cw(this), true);
    this.listView.setonFootRefreshListener(new cx(this));
    this.listView.setOnItemClickListener(new cy(this));
    this.fra_keyboard.setOnClickListener(new BuyMsgCommentRep.6(this));
    this.btn_subcomment.setOnClickListener(new BuyMsgCommentRep.7(this));
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
      ((Map)localObject3).put("interfaces", this.tempNewsId);
      ((Map)localObject3).put("userId", localObject1);
      ((Map)localObject3).put("userName", localObject1);
      ((Map)localObject3).put("userPicUrl", this.info.getUserHeadFace());
      ((Map)localObject3).put("content", localObject2);
      ((Map)localObject3).put("pid", this.tempPid);
      ((Map)localObject3).put("replyUserId", this.replyUserId);
      ((Map)localObject3).put("replyUserName", this.replyUserName);
      localObject1 = new WebServicePool(paramInt, this.handler, "json", map2Json((Map)localObject3), "http://ws.ckj.hqch.com", "http://www.apppark.cn/info.ws", "replyInfoComment");
      ((WebServicePool)localObject1).doRequest((NetWorkRequest)localObject1);
      return;
    }
  }
  
  private void saveComment()
  {
    if (!"".equals(this.et_comment.getText().toString().trim()))
    {
      if (this.dialog == null) {
        this.dialog = HQCHApplication.createLoadingDialog(this.context, 2131230756);
      }
      if (this.repLayHead != null)
      {
        this.dialog.show();
        replayData(2);
      }
      return;
    }
    HQCHApplication.instance.initToast("请输入您的评论", 0);
  }
  
  private void showKeyboard(EditText paramEditText)
  {
    ((InputMethodManager)getSystemService("input_method")).showSoftInput(paramEditText, 0);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903052);
    this.info = new ClientPersionInfo(this.context);
    this.pid = getIntent().getStringExtra("id");
    this.load = ((LoadDataProgress)findViewById(2131361809));
    initWidget();
    this.handler = new db(this, null);
    getData(this.currentPage, 1, "replyDetail");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyMsgCommentRep.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */