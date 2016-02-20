package cn.apppark.vertify.activity.tieba;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.file.SDFileUtils;
import cn.apppark.mcd.util.file.TbHistoryObject2File;
import cn.apppark.mcd.util.imge.ImgUtil;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.tieba.ImgVo;
import cn.apppark.mcd.vo.tieba.TCommentVo;
import cn.apppark.mcd.vo.tieba.TMainVo;
import cn.apppark.mcd.vo.tieba.TMyHistoryVo;
import cn.apppark.mcd.widget.DialogTwoBtn.Builder;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.MyResizeLinearLayout;
import cn.apppark.mcd.widget.PullDownListView4;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.mcd.widget.TCellLinearLayout;
import cn.apppark.vertify.activity.free.dyn.PicGallery;
import cn.apppark.vertify.adapter.TCommnetAdapter;
import cn.apppark.vertify.adapter.ViewPagerAdapter;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.base.YygyResourceDirGenerator;
import cn.apppark.vertify.network.request.HttpUploadFileRequestPool;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.io.File;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import tj;
import tk;
import tl;
import tm;
import tn;
import to;
import tp;
import tq;
import tr;
import tu;

public class TTopicDetail
  extends TBBaseAct
  implements View.OnClickListener
{
  private final int BIGGER = 1;
  private final int CLICKGOOD_WHAT = 6;
  private final int COLLECTION_WHAT = 7;
  private final int DEL_COMMENT_WHAT = 8;
  private final int DEL_SONCOMMENT_WHAT = 10;
  private final int DEL_TOPIC_WHAT = 9;
  private final int GET_COMMENT_WHAT = 4;
  private final int GET_TOPIC_WHAT = 5;
  private final int MSG_RESIZE = 2;
  private final int SEND_WHAT = 3;
  ArrayList<String> a = new ArrayList();
  private TCommnetAdapter adapter;
  LinearLayout b;
  private Button btn_add;
  private Button btn_back;
  private Button btn_camera;
  private Button btn_comment;
  private Button btn_delEmjo;
  private Button btn_face;
  private Button btn_floor;
  private Button btn_good;
  private Button btn_isCollection;
  private Button btn_more;
  private Button btn_numCancel;
  private Button btn_numSure;
  private Button btn_order;
  private Button btn_sendComment;
  private String commentId;
  private int currentFacePage = 0;
  private int currentPage = 1;
  private int delPosition;
  private int delSonPosition;
  private EditText et_content;
  private EditText et_pageNumber;
  private ViewPager faceViewPager;
  private tr handler;
  private ImageView img_delete;
  private RemoteImageView img_head;
  private ImageView img_isFloor;
  private boolean isFaceShow = false;
  private boolean isPicShow = false;
  private ArrayList<TCommentVo> itemList = new ArrayList();
  private int jumpType;
  private PullDownListView4 listView;
  private LinearLayout ll_bottom;
  private LinearLayout ll_collection;
  private LinearLayout ll_comment;
  private TCellLinearLayout ll_content;
  private LinearLayout ll_desc;
  private LinearLayout ll_error;
  private LinearLayout ll_good;
  private LinearLayout ll_jump;
  private LinearLayout ll_point;
  private MyResizeLinearLayout ll_root;
  private LinearLayout ll_topContent;
  private LoadDataProgress load;
  private Dialog numberDialog;
  private int order = 1;
  private ArrayList<View> pageViews;
  private HorizontalScrollView parentScroll;
  private ArrayList<ImageView> pointViews;
  private tu popMenu;
  private RelativeLayout rel_faceChose;
  private RelativeLayout rel_menu;
  private RelativeLayout rel_picchoose;
  private TMainVo topicDetailVo;
  private String topicId;
  private TextView tv_commentNum;
  private TextView tv_content;
  private TextView tv_goodNum;
  private TextView tv_number;
  private TextView tv_order;
  private TextView tv_time;
  private TextView tv_title;
  private TextView tv_userName;
  private int viewType = 0;
  
  private void changeBgState()
  {
    changeCollectionState();
    if (this.btn_order != null)
    {
      if (this.order != 1) {
        break label54;
      }
      this.btn_order.setBackgroundResource(2130837892);
      this.tv_order.setText("顺序查看");
    }
    while (this.viewType == 0)
    {
      this.btn_floor.setBackgroundResource(2130837882);
      return;
      label54:
      this.btn_order.setBackgroundResource(2130837893);
      this.tv_order.setText("倒序查看");
    }
    this.btn_floor.setBackgroundResource(2130837874);
  }
  
  private void changeCollectionState()
  {
    if (this.btn_isCollection != null)
    {
      if ("1".equals(this.topicDetailVo.getIsCollect())) {
        this.btn_isCollection.setBackgroundResource(2130837889);
      }
    }
    else {
      return;
    }
    this.btn_isCollection.setBackgroundResource(2130837888);
  }
  
  private void checkResult()
  {
    if (this.itemList.size() == 0) {
      HQCHApplication.instance.initToast("暂无评论", 0);
    }
    if ((this.itemList != null) && (this.itemList.size() > 0))
    {
      this.listView.onFootNodata(((TCommentVo)this.itemList.get(0)).getTotalCount(), this.itemList.size());
      return;
    }
    this.listView.onFootNodata(0, 0);
  }
  
  private void clickGood(int paramInt1, int paramInt2)
  {
    if (!getIsLoginInfo()) {
      return;
    }
    this.loadDialog.show();
    Object localObject = new HashMap();
    ((Map)localObject).put("type", Integer.valueOf(paramInt2));
    ((Map)localObject).put("userId", getInfo().getUserId());
    ((Map)localObject).put("topicId", this.topicDetailVo.getTopicId());
    ((Map)localObject).put("tiebaId", TBaseParam.TB_ID);
    localObject = new WebServicePool(paramInt1, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/tieba.ws", "clickGood");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void delComment(int paramInt, String paramString)
  {
    if (!getIsLoginInfo()) {
      return;
    }
    this.loadDialog.show();
    HashMap localHashMap = new HashMap();
    localHashMap.put("commentId", paramString);
    localHashMap.put("userId", getInfo().getUserId());
    localHashMap.put("tiebaId", TBaseParam.TB_ID);
    paramString = new WebServicePool(paramInt, this.handler, "json", map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/tieba.ws", "delComment");
    paramString.doRequest(paramString);
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
  
  private void delTopic(int paramInt)
  {
    if (!getIsLoginInfo()) {
      return;
    }
    this.loadDialog.show();
    Object localObject = new HashMap();
    ((Map)localObject).put("topicId", this.topicId);
    ((Map)localObject).put("userId", getInfo().getUserId());
    ((Map)localObject).put("tiebaId", TBaseParam.TB_ID);
    localObject = new WebServicePool(paramInt, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/tieba.ws", "delTopic");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void getCommentData(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("type", Integer.valueOf(this.viewType));
    ((Map)localObject).put("topicId", this.topicDetailVo.getTopicId());
    ((Map)localObject).put("tiebaId", TBaseParam.TB_ID);
    ((Map)localObject).put("order", Integer.valueOf(this.order));
    ((Map)localObject).put("currPage", Integer.valueOf(paramInt1));
    ((Map)localObject).put("pageSize", Integer.valueOf(this.pageSize));
    localObject = new WebServicePool(paramInt2, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/tieba.ws", "topicComment");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void getCommentDataLocation(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("topicId", this.topicDetailVo.getTopicId());
    ((Map)localObject).put("tiebaId", TBaseParam.TB_ID);
    ((Map)localObject).put("commentId", this.commentId);
    ((Map)localObject).put("currPage", Integer.valueOf(paramInt1));
    ((Map)localObject).put("pageSize", Integer.valueOf(this.pageSize));
    localObject = new WebServicePool(paramInt2, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/tieba.ws", "topicCommentLocation");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void getTopicData(int paramInt)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("topicId", this.topicId);
    ((Map)localObject).put("tiebaId", TBaseParam.TB_ID);
    ((Map)localObject).put("userId", getInfo().getUserId());
    localObject = new WebServicePool(paramInt, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/tieba.ws", "topicDetail");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initDetail()
  {
    if (this.topicDetailVo != null)
    {
      this.img_head.setImageUrl(this.topicDetailVo.getHeadUrl());
      this.tv_userName.setText(this.topicDetailVo.getUserName());
      this.tv_time.setText(this.topicDetailVo.getSubTime());
      this.tv_title.setText(this.topicDetailVo.getTitle());
      this.tv_content.setText(TBaseParam.getSpanStr(this.context, this.topicDetailVo.getContent(), -7829368));
      this.tv_goodNum.setText(this.topicDetailVo.getGoodNum());
      this.tv_commentNum.setText(this.topicDetailVo.getCommentNum());
      this.img_isFloor.setVisibility(0);
      if ((this.topicDetailVo.getUserid() == null) || (!this.topicDetailVo.getUserid().equals(getInfo().getUserId()))) {
        break label222;
      }
      this.img_delete.setVisibility(0);
      if (!"1".equals(this.topicDetailVo.getIsGood())) {
        break label234;
      }
      this.btn_good.setBackgroundResource(2130837881);
    }
    for (;;)
    {
      saveHistory();
      initTopicImg();
      return;
      label222:
      this.img_delete.setVisibility(8);
      break;
      label234:
      this.btn_good.setBackgroundResource(2130837880);
    }
  }
  
  private void initFace()
  {
    this.faceViewPager.setAdapter(new ViewPagerAdapter(this.pageViews));
    this.faceViewPager.setCurrentItem(0);
    this.faceViewPager.setOnPageChangeListener(new tl(this));
  }
  
  private void initFaceWidget()
  {
    this.b = ((LinearLayout)findViewById(2131362991));
    this.et_content = ((EditText)findViewById(2131362994));
    this.et_content.setOnClickListener(this);
    this.btn_face = ((Button)findViewById(2131362993));
    this.btn_camera = ((Button)findViewById(2131362992));
    this.btn_delEmjo = ((Button)findViewById(2131362996));
    this.btn_sendComment = ((Button)findViewById(2131362995));
    this.btn_face.setOnClickListener(this);
    this.btn_camera.setOnClickListener(this);
    this.btn_delEmjo.setOnClickListener(this);
    this.btn_sendComment.setOnClickListener(this);
    this.ll_point = ((LinearLayout)findViewById(2131362999));
    this.rel_faceChose = ((RelativeLayout)findViewById(2131362997));
    this.rel_picchoose = ((RelativeLayout)findViewById(2131363000));
    this.faceViewPager = ((ViewPager)findViewById(2131362998));
    this.pageViews = TBaseParam.initFaceData(this.context, this.et_content);
    initFace();
    this.pointViews = TBaseParam.initPoint(this.context, this.ll_point, this.pageViews);
    this.ll_content = ((TCellLinearLayout)findViewById(2131362871));
    this.btn_add = ((Button)findViewById(2131362872));
    this.parentScroll = ((HorizontalScrollView)findViewById(2131362870));
    this.tv_number = ((TextView)findViewById(2131362873));
    this.ll_content.setParentScroll(this.parentScroll);
    this.ll_content.setTv_number(this.tv_number);
    this.ll_content.setBtn_add(this.btn_add);
    this.ll_content.setParentAct(this);
    this.btn_add.setOnClickListener(this);
  }
  
  private void initTopMenu()
  {
    this.rel_menu = ((RelativeLayout)findViewById(2131362529));
    FunctionPublic.setBackgroundColor(TBaseParam.TOPMENU_BGCOLOR, this.rel_menu);
    this.btn_back = ((Button)findViewById(2131362887));
    this.btn_more = ((Button)findViewById(2131362890));
    this.btn_floor = ((Button)findViewById(2131362888));
    ((TextView)findViewById(2131362886)).setText("主题帖");
    this.btn_more.setVisibility(0);
    this.btn_floor.setVisibility(0);
    this.btn_more.setBackgroundResource(2130837890);
    this.btn_floor.setBackgroundResource(2130837882);
    this.btn_back.setOnClickListener(this);
    this.btn_floor.setOnClickListener(this);
    this.btn_more.setOnClickListener(this);
  }
  
  private void initTopicImg()
  {
    int k = 0;
    if (this.topicDetailVo.getImgUrlItem() != null)
    {
      int i = 0;
      int j;
      for (;;)
      {
        j = k;
        if (i >= this.topicDetailVo.getImgUrlItem().size()) {
          break;
        }
        this.a.add(((ImgVo)this.topicDetailVo.getImgUrlItem().get(i)).getImgUrl());
        i += 1;
      }
      while (j < this.topicDetailVo.getImgUrlItem().size())
      {
        RemoteImageView localRemoteImageView = new RemoteImageView(this.context);
        localRemoteImageView.setImageUrl(((ImgVo)this.topicDetailVo.getImgUrlItem().get(j)).getImgUrl());
        localRemoteImageView.setDefaultImage(Integer.valueOf(2130837620));
        localRemoteImageView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        localRemoteImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        localRemoteImageView.setTag(Integer.valueOf(j));
        localRemoteImageView.setOnClickListener(new TTopicDetail.3(this));
        this.ll_topContent.addView(localRemoteImageView);
        j += 1;
      }
    }
  }
  
  private void initWidget()
  {
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.handler = new tr(this, null);
    this.loadDialog = createLoadingDialog(2131230756);
    this.listView = ((PullDownListView4)findViewById(2131362983));
    this.listView.setHeaderDividersEnabled(false);
    this.listView.setFooterDividersEnabled(false);
    this.listView.setonRefreshListener(null, false);
    this.listView.setonFootRefreshListener(new tj(this));
    this.listView.setOnItemClickListener(new tk(this));
    RelativeLayout localRelativeLayout = (RelativeLayout)LayoutInflater.from(this.context).inflate(2130903238, null);
    this.img_head = ((RemoteImageView)localRelativeLayout.findViewById(2131363001));
    this.img_isFloor = ((ImageView)localRelativeLayout.findViewById(2131363004));
    this.img_delete = ((ImageView)localRelativeLayout.findViewById(2131363005));
    this.img_delete.setOnClickListener(this);
    this.tv_userName = ((TextView)localRelativeLayout.findViewById(2131363002));
    this.tv_time = ((TextView)localRelativeLayout.findViewById(2131363003));
    this.tv_content = ((TextView)localRelativeLayout.findViewById(2131363008));
    this.tv_title = ((TextView)localRelativeLayout.findViewById(2131363007));
    this.ll_topContent = ((LinearLayout)localRelativeLayout.findViewById(2131363006));
    this.listView.addHeaderView(localRelativeLayout);
    this.tv_content.setOnClickListener(this);
    this.tv_goodNum = ((TextView)findViewById(2131362987));
    this.tv_commentNum = ((TextView)findViewById(2131362990));
    this.btn_good = ((Button)findViewById(2131362986));
    this.btn_comment = ((Button)findViewById(2131362989));
    this.ll_bottom = ((LinearLayout)findViewById(2131362984));
    this.ll_good = ((LinearLayout)findViewById(2131362985));
    this.ll_comment = ((LinearLayout)findViewById(2131362988));
    this.ll_good.setOnClickListener(this);
    this.ll_comment.setOnClickListener(this);
    initTopMenu();
    initFaceWidget();
  }
  
  private void junp2Gallery(int paramInt, String paramString)
  {
    int i = 0;
    while (i < this.itemList.size())
    {
      int j = paramInt;
      if (((TCommentVo)this.itemList.get(i)).getImgUrlItem() != null)
      {
        j = paramInt;
        if (((TCommentVo)this.itemList.get(i)).getImgUrlItem().size() > 0)
        {
          if (paramString == null)
          {
            k = 0;
            for (;;)
            {
              j = paramInt;
              if (k >= ((TCommentVo)this.itemList.get(i)).getImgUrlItem().size()) {
                break;
              }
              this.a.add(((ImgVo)((TCommentVo)this.itemList.get(i)).getImgUrlItem().get(k)).getImgUrl());
              k += 1;
            }
          }
          int k = 0;
          for (;;)
          {
            j = paramInt;
            if (k >= ((TCommentVo)this.itemList.get(i)).getImgUrlItem().size()) {
              break;
            }
            String str = ((ImgVo)((TCommentVo)this.itemList.get(i)).getImgUrlItem().get(k)).getImgUrl();
            this.a.add(str);
            if (paramString.equals(str)) {
              paramInt = this.a.size() - 1;
            }
            k += 1;
          }
        }
      }
      i += 1;
      paramInt = j;
    }
    paramString = new Intent(this.context, PicGallery.class);
    paramString.putStringArrayListExtra("urls", this.a);
    paramString.putExtra("position", paramInt);
    this.context.startActivity(paramString);
  }
  
  private void saveHistory()
  {
    TMyHistoryVo localTMyHistoryVo = new TMyHistoryVo();
    localTMyHistoryVo.setTitle(this.topicDetailVo.getTitle());
    localTMyHistoryVo.setTopicId(this.topicDetailVo.getTopicId());
    localTMyHistoryVo.setTiebaName(this.topicDetailVo.getUserName());
    localTMyHistoryVo.setSubTime(this.topicDetailVo.getSubTime());
    localTMyHistoryVo.setCommentNum(this.topicDetailVo.getCommentNum());
    TbHistoryObject2File.saveHistory(this.context, localTMyHistoryVo, getInfo().getUserId());
  }
  
  private void sendCollection(int paramInt1, int paramInt2)
  {
    if (!getIsLoginInfo()) {
      return;
    }
    this.loadDialog.show();
    Object localObject = new HashMap();
    ((Map)localObject).put("type", Integer.valueOf(paramInt2));
    ((Map)localObject).put("userId", getInfo().getUserId());
    ((Map)localObject).put("topicId", this.topicDetailVo.getTopicId());
    ((Map)localObject).put("tiebaId", TBaseParam.TB_ID);
    localObject = new WebServicePool(paramInt1, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/tieba.ws", "collection");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void sendTopicComment()
  {
    if (!getIsLoginInfo()) {
      return;
    }
    this.loadDialog.show();
    Object localObject = new HashMap();
    ((Map)localObject).put("userId", getInfo().getUserId());
    ((Map)localObject).put("tiebaId", TBaseParam.TB_ID);
    ((Map)localObject).put("topicId ", this.topicDetailVo.getTopicId());
    ((Map)localObject).put("content", this.et_content.getText().toString());
    HashMap localHashMap = new HashMap();
    int i = 0;
    while (i < this.ll_content.uniqueIndexSeq.size())
    {
      localHashMap.put(((TPicCellInfo)this.ll_content.uniqueIndexSeq.get(i)).getPicName(), new File(((TPicCellInfo)this.ll_content.uniqueIndexSeq.get(i)).getPicUrl()));
      i += 1;
    }
    localObject = new HttpUploadFileRequestPool(3, "http://www.apppark.cn/servlet/sendComment", this.handler, (Map)localObject, localHashMap);
    ((HttpUploadFileRequestPool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void setData(ArrayList<TCommentVo> paramArrayList)
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
      this.adapter = new TCommnetAdapter(this.context, this.itemList, this.topicDetailVo.getTopicId(), this.topicDetailVo.getUserid());
      this.listView.setAdapter(this.adapter);
      this.adapter.setOnDeleteListener(new tm(this));
      this.adapter.setOnPicClickListener(new tn(this));
      return;
    }
    this.adapter.notifyDataSetChanged();
  }
  
  protected Dialog getNumDialog()
  {
    Object localObject = LayoutInflater.from(this.context).inflate(2130903232, null);
    LinearLayout localLinearLayout = (LinearLayout)((View)localObject).findViewById(2131362950);
    this.et_pageNumber = ((EditText)((View)localObject).findViewById(2131362951));
    this.btn_numSure = ((Button)((View)localObject).findViewById(2131362952));
    this.btn_numCancel = ((Button)((View)localObject).findViewById(2131362953));
    this.btn_numSure.setOnClickListener(this);
    this.btn_numCancel.setOnClickListener(this);
    localObject = new Dialog(this.context, 2131099665);
    ((Dialog)localObject).setContentView(localLinearLayout, new LinearLayout.LayoutParams(PublicUtil.dip2px(250.0F), PublicUtil.dip2px(150.0F)));
    return (Dialog)localObject;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    String str;
    if (paramInt2 == -1)
    {
      str = null;
      if (paramInt1 != 0) {
        break label123;
      }
      str = PublicUtil.getPicPath(this, paramIntent.getData());
    }
    try
    {
      for (;;)
      {
        str = ImgUtil.saveMyBitmap(ImgUtil.compressBywidth(str, 640, 100), YYGYContants.mDirGenerator.getFoldPath(YYGYContants.IMAGE_CACHE_UPLOAD), PublicUtil.getMD5Str(new StringBuilder().append(System.currentTimeMillis()).toString()) + ".jpg", ".jpg");
        this.ll_content.addCellToView(str, this.handler);
        FunctionPublic.setBackgroundPicFromSD(str, this.ll_content.tempTPicCellInfo.getImg());
        super.onActivityResult(paramInt1, paramInt2, paramIntent);
        return;
        label123:
        if (paramInt1 == 2) {
          str = this.ll_content.photoUri.getEncodedPath();
        }
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  public void onClick(View paramView)
  {
    int i = 1;
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131362985: 
      if ("0".equals(this.topicDetailVo.getIsGood()))
      {
        clickGood(6, 1);
        return;
      }
      clickGood(6, 0);
      return;
    case 2131362988: 
    case 2131363008: 
      this.ll_bottom.setVisibility(8);
      this.b.setVisibility(0);
      this.et_content.requestFocus();
      PublicUtil.openKeyBoardView(this, this.et_content);
      return;
    case 2131362995: 
      if (StringUtil.isNotNull(this.et_content.getText().toString().trim()))
      {
        PublicUtil.closeKeyBoard(this);
        sendTopicComment();
        return;
      }
      initToast("请输入评论", 0);
      return;
    case 2131362994: 
      this.rel_faceChose.setVisibility(8);
      this.rel_picchoose.setVisibility(8);
      return;
    case 2131362887: 
      finish();
      return;
    case 2131362890: 
      if (this.popMenu == null) {
        this.popMenu = new tu(this, this.context);
      }
      if (this.popMenu.isShowing())
      {
        this.popMenu.dismiss();
        return;
      }
      changeCollectionState();
      this.popMenu.showAsDropDown(this.rel_menu);
      changeBgState();
      return;
    case 2131362888: 
      if (this.viewType == 0) {}
      for (i = 1;; i = 0)
      {
        this.viewType = i;
        this.load.show(2131230756);
        this.currentPage = 1;
        getCommentData(this.currentPage, 4);
        changeBgState();
        return;
      }
    case 2131362958: 
      this.popMenu.dismiss();
      if ("0".equals(this.topicDetailVo.getIsCollect())) {
        sendCollection(7, 1);
      }
      for (;;)
      {
        changeBgState();
        return;
        sendCollection(7, 0);
      }
    case 2131362960: 
      this.popMenu.dismiss();
      if (this.numberDialog == null) {
        this.numberDialog = getNumDialog();
      }
      this.numberDialog.show();
      return;
    case 2131362962: 
      this.load.show(2131230756);
      this.popMenu.dismiss();
      this.currentPage = 1;
      if (this.order == 1) {
        i = 2;
      }
      this.order = i;
      getCommentData(this.currentPage, 4);
      changeBgState();
      return;
    case 2131362965: 
      paramView = new Intent(this.context, TEdit.class);
      paramView.putExtra("operateType", 1);
      paramView.putExtra("detail", this.topicDetailVo);
      startActivity(paramView);
      this.popMenu.dismiss();
      return;
    case 2131362993: 
      if (this.rel_faceChose.getVisibility() == 0)
      {
        this.rel_faceChose.setVisibility(8);
        this.isFaceShow = false;
        return;
      }
      PublicUtil.closeKeyBoard(this);
      this.rel_faceChose.setVisibility(0);
      this.rel_picchoose.setVisibility(8);
      this.isFaceShow = true;
      this.isPicShow = false;
      return;
    case 2131362992: 
      if (this.rel_picchoose.getVisibility() == 0)
      {
        this.rel_picchoose.setVisibility(8);
        this.isPicShow = false;
        return;
      }
      PublicUtil.closeKeyBoard(this);
      this.rel_picchoose.setVisibility(0);
      this.rel_faceChose.setVisibility(8);
      this.isFaceShow = false;
      this.isPicShow = true;
      return;
    case 2131362872: 
      this.ll_content.addCell();
      return;
    case 2131362952: 
      i = FunctionPublic.str2int(this.et_pageNumber.getText().toString());
      if (i <= ((TCommentVo)this.itemList.get(0)).getTotalCount() / this.pageSize)
      {
        this.load.show(2131230756);
        this.itemList.clear();
        this.currentPage = i;
        getCommentData(this.currentPage, 4);
      }
      for (;;)
      {
        if (this.numberDialog != null) {
          this.numberDialog.dismiss();
        }
        PublicUtil.closeKeyBoardView(this, this.et_pageNumber);
        return;
        initToast("页码超出范围", 0);
      }
    case 2131362953: 
      if (this.numberDialog != null) {
        this.numberDialog.dismiss();
      }
      PublicUtil.closeKeyBoardView(this, this.et_pageNumber);
      return;
    }
    new DialogTwoBtn.Builder(this.context).setTitle(2131230723).setCancelable(false).setMessage("确定删除帖子，删除后不可恢复？").setPositiveButton(2131230728, new tp(this)).setNegativeButton(2131230729, new to(this)).show();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903237);
    this.topicId = getIntent().getStringExtra("topicid");
    this.jumpType = getIntent().getIntExtra("jumpType", 0);
    this.commentId = getIntent().getStringExtra("commentId");
    SDFileUtils.clearFoldeFile(YYGYContants.mDirGenerator.getFoldPath(YYGYContants.IMAGE_CACHE_UPLOAD));
    initWidget();
    getTopicData(5);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    this.ll_content.destroyCell();
    if (this.numberDialog != null)
    {
      this.numberDialog.dismiss();
      this.numberDialog = null;
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (this.ll_bottom.getVisibility() == 8)
      {
        this.ll_bottom.setVisibility(0);
        this.b.setVisibility(8);
        this.rel_picchoose.setVisibility(8);
        this.rel_faceChose.setVisibility(8);
        this.isFaceShow = false;
        this.isPicShow = false;
      }
    }
    else {
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public ArrayList<TCommentVo> parseToList(String paramString)
  {
    try
    {
      Object localObject = new tq(this).getType();
      Gson localGson = new Gson();
      JsonObject localJsonObject = (JsonObject)new JsonParser().parse(paramString);
      paramString = localJsonObject.get("count");
      localObject = (ArrayList)localGson.fromJson((JsonArray)localJsonObject.get("item"), (Type)localObject);
      if (localObject != null) {}
      return (ArrayList<TCommentVo>)localObject;
    }
    catch (Exception paramString)
    {
      try
      {
        if (((ArrayList)localObject).size() > 0) {
          ((TCommentVo)((ArrayList)localObject).get(0)).setTotalCount(paramString.getAsInt());
        }
        return (ArrayList<TCommentVo>)localObject;
      }
      catch (Exception paramString) {}
      paramString = paramString;
      return null;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/tieba/TTopicDetail.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */