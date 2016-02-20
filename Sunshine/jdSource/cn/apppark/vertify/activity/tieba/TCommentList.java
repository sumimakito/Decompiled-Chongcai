package cn.apppark.vertify.activity.tieba;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.tieba.ImgVo;
import cn.apppark.mcd.vo.tieba.TCommentVo;
import cn.apppark.mcd.vo.tieba.TReplayVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.MyResizeLinearLayout;
import cn.apppark.mcd.widget.PullDownListView4;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.adapter.TReplayAdapter;
import cn.apppark.vertify.adapter.ViewPagerAdapter;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import rq;
import rr;
import rs;
import rt;
import rw;

public class TCommentList
  extends TBBaseAct
  implements View.OnClickListener
{
  private final int DEL_SONCOMMENT_WHAT = 4;
  private final int GET_COMMENTDETAIL = 3;
  private final int GET_WHAT = 1;
  private final int SEND_WHAT = 2;
  private TReplayAdapter adapter;
  private Button btn_back;
  private Button btn_delEmjo;
  private Button btn_face;
  private Button btn_sendComment;
  private Button btn_topicDetail;
  private String commentId;
  private TCommentVo commentVo;
  private Context context = this;
  private int currentFacePage = 0;
  private int currentPage = 1;
  private int delSonPosition;
  private EditText et_content;
  private ViewPager faceViewPager;
  private rw handler;
  private RemoteImageView img_head;
  private ImageView img_isFloor;
  private boolean isFaceShow = false;
  private ArrayList<TReplayVo> itemList = new ArrayList();
  private PullDownListView4 listView;
  private LinearLayout ll_content;
  private LinearLayout ll_point;
  private MyResizeLinearLayout ll_root;
  private LoadDataProgress load;
  private ArrayList<View> pageViews;
  private ArrayList<ImageView> pointViews;
  private RelativeLayout rel_faceChose;
  private RelativeLayout rel_menu;
  private int replayType = 0;
  private String replyId;
  private String replyTitle = "";
  private String topicId;
  private String topicUserId;
  private TextView tv_content;
  private TextView tv_time;
  private TextView tv_title;
  private TextView tv_userName;
  
  private void checkResult()
  {
    if (this.itemList.size() == 0) {
      HQCHApplication.instance.initToast("暂无回复", 0);
    }
    if ((this.itemList != null) && (this.itemList.size() > 0))
    {
      this.listView.onFootNodata(((TReplayVo)this.itemList.get(0)).getCount(), this.itemList.size());
      return;
    }
    this.listView.onFootNodata(0, 0);
  }
  
  private void delSonComment(int paramInt, String paramString)
  {
    if (!getIsLoginInfo()) {
      return;
    }
    this.loadDialog.show();
    HashMap localHashMap = new HashMap();
    localHashMap.put("replyId", paramString);
    localHashMap.put("userId", getInfo().getUserId());
    localHashMap.put("tiebaId", TBaseParam.TB_ID);
    paramString = new WebServicePool(paramInt, this.handler, "json", map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/tieba.ws", "delReply");
    paramString.doRequest(paramString);
  }
  
  private void getCommentDetail(int paramInt)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("topicId", this.topicId);
    ((Map)localObject).put("tiebaId", TBaseParam.TB_ID);
    ((Map)localObject).put("commentId", this.commentId);
    localObject = new WebServicePool(paramInt, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/tieba.ws", "getCommentDetail");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void getData(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("topicId", this.topicId);
    ((Map)localObject).put("tiebaId", TBaseParam.TB_ID);
    ((Map)localObject).put("commentId", this.commentVo.getCommentId());
    ((Map)localObject).put("currPage", Integer.valueOf(paramInt1));
    ((Map)localObject).put("pageSize", Integer.valueOf(20));
    localObject = new WebServicePool(paramInt2, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/tieba.ws", "getSonCommentReply");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void getSonCommentReplyLocation(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("topicId", this.topicId);
    ((Map)localObject).put("commentId", this.commentVo.getCommentId());
    ((Map)localObject).put("replyId", this.replyId);
    ((Map)localObject).put("currPage", Integer.valueOf(paramInt1));
    ((Map)localObject).put("pageSize", Integer.valueOf(10));
    localObject = new WebServicePool(paramInt2, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/tieba.ws", "getSonCommentReply");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initCommentDetail()
  {
    if (this.commentVo != null)
    {
      this.img_head.setImageUrl(this.commentVo.getHeadUrl());
      this.tv_userName.setText(this.commentVo.getUserName());
      this.tv_time.setText(this.commentVo.getSubTime());
      this.tv_content.setText(this.commentVo.getContent());
      this.tv_content.setText(TBaseParam.getSpanStr(this.context, this.commentVo.getContent(), -16777216));
      this.tv_title.setText("第 " + this.commentVo.getFloorNum() + " 楼");
      if (this.commentVo.getImgUrlItem() != null)
      {
        int i = 0;
        while (i < this.commentVo.getImgUrlItem().size())
        {
          RemoteImageView localRemoteImageView = new RemoteImageView(this.context);
          localRemoteImageView.setImageUrl(((ImgVo)this.commentVo.getImgUrlItem().get(i)).getImgUrl());
          localRemoteImageView.setDefaultImage(Integer.valueOf(2130837617));
          localRemoteImageView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
          localRemoteImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
          this.ll_content.addView(localRemoteImageView);
          i += 1;
        }
      }
      if (this.replayType == 3)
      {
        this.btn_topicDetail.setVisibility(0);
        this.btn_topicDetail.setOnClickListener(new TCommentList.4(this));
      }
    }
  }
  
  private void initFace()
  {
    this.faceViewPager.setAdapter(new ViewPagerAdapter(this.pageViews));
    this.faceViewPager.setCurrentItem(0);
    this.faceViewPager.setOnPageChangeListener(new rs(this));
  }
  
  private void initTopMenu()
  {
    this.rel_menu = ((RelativeLayout)findViewById(2131362529));
    FunctionPublic.setBackgroundColor(TBaseParam.TOPMENU_BGCOLOR, this.rel_menu);
    this.btn_back = ((Button)findViewById(2131362887));
    this.tv_title = ((TextView)findViewById(2131362886));
    this.tv_title.setText("评论");
    this.btn_back.setOnClickListener(this);
    this.btn_topicDetail = ((Button)findViewById(2131362890));
    this.btn_topicDetail.setText("查看主题");
  }
  
  private void initWidget()
  {
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.handler = new rw(this, null);
    this.loadDialog = createLoadingDialog(2131230756);
    this.listView = ((PullDownListView4)findViewById(2131362843));
    this.listView.setDividerHeight(0);
    RelativeLayout localRelativeLayout = (RelativeLayout)LayoutInflater.from(this.context).inflate(2130903215, null);
    this.img_head = ((RemoteImageView)localRelativeLayout.findViewById(2131362855));
    this.tv_userName = ((TextView)localRelativeLayout.findViewById(2131362856));
    this.tv_time = ((TextView)localRelativeLayout.findViewById(2131362857));
    this.tv_content = ((TextView)localRelativeLayout.findViewById(2131362859));
    this.ll_content = ((LinearLayout)localRelativeLayout.findViewById(2131362858));
    this.listView.addHeaderView(localRelativeLayout);
    localRelativeLayout.setOnClickListener(this);
    initCommentDetail();
    this.ll_point = ((LinearLayout)findViewById(2131362851));
    this.rel_faceChose = ((RelativeLayout)findViewById(2131362849));
    this.faceViewPager = ((ViewPager)findViewById(2131362850));
    this.et_content = ((EditText)findViewById(2131362846));
    this.btn_face = ((Button)findViewById(2131362845));
    this.btn_delEmjo = ((Button)findViewById(2131362848));
    this.btn_sendComment = ((Button)findViewById(2131362847));
    this.pageViews = TBaseParam.initFaceData(this.context, this.et_content);
    this.pointViews = TBaseParam.initPoint(this.context, this.ll_point, this.pageViews);
    this.listView.setDividerHeight(0);
    this.listView.setonRefreshListener(null, false);
    this.listView.setonFootRefreshListener(new rq(this));
    this.listView.setOnItemClickListener(new rr(this));
    this.et_content.setOnClickListener(this);
    this.btn_face.setOnClickListener(this);
    this.btn_delEmjo.setOnClickListener(this);
    this.btn_sendComment.setOnClickListener(this);
    initFace();
    if (this.commentVo != null) {
      this.commentId = this.commentVo.getCommentId();
    }
    switch (this.replayType)
    {
    default: 
      return;
    case 0: 
      this.et_content.setHint("回复：" + this.commentVo.getUserName());
      return;
    case 1: 
      this.et_content.setHint("回复：" + ((TReplayVo)this.commentVo.getSonItem().get(0)).getUserName());
      this.replyId = ((TReplayVo)this.commentVo.getSonItem().get(0)).getReplyId();
      return;
    case 2: 
      this.et_content.setHint("回复：" + ((TReplayVo)this.commentVo.getSonItem().get(1)).getUserName());
      this.replyId = ((TReplayVo)this.commentVo.getSonItem().get(0)).getReplyId();
      return;
    }
    this.et_content.setHint("回复：");
  }
  
  private void sendReplay(int paramInt)
  {
    if (!getIsLoginInfo()) {
      return;
    }
    Object localObject = new HashMap();
    ((Map)localObject).put("commentId", this.commentId);
    ((Map)localObject).put("replyId", this.replyId);
    if (StringUtil.isNotNull(this.replyTitle)) {
      ((Map)localObject).put("content", this.replyTitle + "  " + this.et_content.getText().toString());
    }
    for (;;)
    {
      ((Map)localObject).put("userId", getInfo().getUserId());
      ((Map)localObject).put("topicId", this.topicId);
      ((Map)localObject).put("tiebaId", TBaseParam.TB_ID);
      localObject = new WebServicePool(paramInt, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/tieba.ws", "sendReply");
      ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
      return;
      ((Map)localObject).put("content", this.et_content.getText().toString());
    }
  }
  
  private void setData(ArrayList<TReplayVo> paramArrayList)
  {
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      this.itemList.addAll(paramArrayList);
      this.currentPage += 1;
    }
    if (this.adapter == null)
    {
      this.adapter = new TReplayAdapter(this.context, this.itemList, this.topicUserId, getInfo().getUserId(), this.replyId);
      this.listView.setAdapter(this.adapter);
      this.adapter.setOnDeleteListener(new rt(this));
      return;
    }
    this.adapter.notifyDataSetChanged();
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131362854: 
      this.et_content.setHint("回复：" + this.commentVo.getUserName());
      this.replyTitle = "";
      return;
    case 2131362845: 
      if (this.rel_faceChose.getVisibility() == 0)
      {
        this.rel_faceChose.setVisibility(8);
        this.isFaceShow = false;
        return;
      }
      PublicUtil.closeKeyBoard(this);
      this.rel_faceChose.setVisibility(0);
      this.isFaceShow = true;
      return;
    case 2131362846: 
      this.rel_faceChose.setVisibility(8);
      return;
    case 2131362847: 
      if (StringUtil.isNotNull(this.et_content.getText().toString().trim()))
      {
        this.loadDialog.show();
        sendReplay(2);
        PublicUtil.closeKeyBoard(this);
        this.rel_faceChose.setVisibility(8);
        return;
      }
      initToast("请输入评论", 0);
      return;
    }
    finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903213);
    this.topicUserId = getIntent().getStringExtra("topicUserId");
    this.topicId = getIntent().getStringExtra("topicId");
    this.replayType = getIntent().getIntExtra("replayType", 0);
    initTopMenu();
    if (this.replayType == 3)
    {
      this.commentId = getIntent().getStringExtra("commentId");
      this.replyId = getIntent().getStringExtra("replyId");
      initWidget();
      getCommentDetail(3);
      return;
    }
    this.commentVo = ((TCommentVo)getIntent().getSerializableExtra("detail"));
    initWidget();
    getData(this.currentPage, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/tieba/TCommentList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */