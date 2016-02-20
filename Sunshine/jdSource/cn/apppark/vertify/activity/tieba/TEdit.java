package cn.apppark.vertify.activity.tieba;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.file.SDFileUtils;
import cn.apppark.mcd.util.imge.ImgUtil;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.tieba.TMainVo;
import cn.apppark.mcd.widget.MyResizeLinearLayout;
import cn.apppark.mcd.widget.TCellLinearLayout;
import cn.apppark.vertify.adapter.ViewPagerAdapter;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.base.YygyResourceDirGenerator;
import cn.apppark.vertify.network.request.HttpUploadFileRequestPool;
import cn.apppark.vertify.network.request.NetWorkRequest;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import sa;
import sb;
import sc;
import sd;

public class TEdit
  extends TBBaseAct
  implements View.OnClickListener
{
  private final int BIGGER = 1;
  private final int MSG_RESIZE = 3;
  private final int REPORT_WHAT = 5;
  private final int SEND_WHAT = 4;
  private final int SMALLER = 2;
  private Button btn_add;
  private Button btn_back;
  private Button btn_camera;
  private Button btn_delEmjo;
  private Button btn_face;
  private Button btn_send;
  private Context context = this;
  private int currentFacePage = 0;
  private EditText et_content;
  private EditText et_title;
  private ViewPager faceViewPager;
  private sd handler;
  private boolean isFaceShow = false;
  private boolean isPicShow = false;
  private TCellLinearLayout ll_content;
  private LinearLayout ll_point;
  private MyResizeLinearLayout ll_root;
  private int operateType;
  private ArrayList<View> pageViews;
  private HorizontalScrollView parentScroll;
  private ArrayList<ImageView> pointViews;
  private RelativeLayout rel_faceChose;
  private RelativeLayout rel_picchoose;
  private TMainVo topicDetailVo;
  private TextView tv_number;
  private TextView tv_title;
  
  private void initContentParam()
  {
    this.loadDialog = createLoadingDialog(2131230756);
    this.handler = new sd(this, null);
    this.ll_content = ((TCellLinearLayout)findViewById(2131362871));
    this.btn_add = ((Button)findViewById(2131362872));
    this.parentScroll = ((HorizontalScrollView)findViewById(2131362870));
    this.tv_number = ((TextView)findViewById(2131362873));
    this.ll_content.setParentScroll(this.parentScroll);
    this.ll_content.setTv_number(this.tv_number);
    this.ll_content.setTextNum(this.tv_number, 0);
    this.ll_content.setBtn_add(this.btn_add);
    this.ll_content.setParentAct(this);
    this.btn_add.setOnClickListener(this);
  }
  
  private void initFace()
  {
    this.faceViewPager.setAdapter(new ViewPagerAdapter(this.pageViews));
    this.faceViewPager.setCurrentItem(0);
    this.faceViewPager.setOnPageChangeListener(new sc(this));
  }
  
  private void initTopMenu()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131362529);
    FunctionPublic.setBackgroundColor(TBaseParam.TOPMENU_BGCOLOR, localRelativeLayout);
    this.btn_back = ((Button)findViewById(2131362887));
    this.btn_send = ((Button)findViewById(2131362890));
    this.btn_send.setVisibility(0);
    this.btn_send.getLayoutParams().width = PublicUtil.dip2px(80.0F);
    this.btn_send.setText("发送");
    this.btn_send.setBackgroundResource(2130837950);
    this.tv_title = ((TextView)findViewById(2131362886));
    if (this.operateType == 1)
    {
      this.tv_title.setText("举报");
      this.btn_send.setText("发送");
      this.et_title.setText("【android举报】");
      if (this.topicDetailVo != null) {
        this.et_content.setText("举报:" + this.topicDetailVo.getTitle());
      }
    }
    for (;;)
    {
      this.btn_back.setOnClickListener(this);
      this.btn_send.setOnClickListener(this);
      return;
      this.tv_title.setText("发帖");
    }
  }
  
  private void initWidget()
  {
    this.ll_root = ((MyResizeLinearLayout)findViewById(2131362860));
    this.ll_root.setOnResizeListener(new sa(this));
    this.btn_face = ((Button)findViewById(2131362864));
    this.btn_camera = ((Button)findViewById(2131362863));
    this.btn_delEmjo = ((Button)findViewById(2131362865));
    this.et_title = ((EditText)findViewById(2131362861));
    this.et_content = ((EditText)findViewById(2131362862));
    this.et_title.setOnClickListener(this);
    this.et_content.setOnClickListener(this);
    this.et_title.setOnFocusChangeListener(new sb(this));
    this.btn_face.setOnClickListener(this);
    this.btn_camera.setOnClickListener(this);
    this.btn_delEmjo.setOnClickListener(this);
    this.ll_point = ((LinearLayout)findViewById(2131362868));
    this.rel_faceChose = ((RelativeLayout)findViewById(2131362866));
    this.rel_picchoose = ((RelativeLayout)findViewById(2131362869));
    this.faceViewPager = ((ViewPager)findViewById(2131362867));
    this.pageViews = TBaseParam.initFaceData(this.context, this.et_content);
    initFace();
    this.pointViews = TBaseParam.initPoint(this.context, this.ll_point, this.pageViews);
    initTopMenu();
  }
  
  private void sendTopic()
  {
    if (!getIsLoginInfo()) {
      return;
    }
    this.loadDialog.show();
    Object localObject = new HashMap();
    ((Map)localObject).put("userId", getInfo().getUserId());
    ((Map)localObject).put("tiebaId", TBaseParam.TB_ID);
    if ((this.operateType == 1) && (this.topicDetailVo != null)) {
      ((Map)localObject).put("topicId", this.topicDetailVo.getTopicId());
    }
    ((Map)localObject).put("title", this.et_title.getText().toString());
    ((Map)localObject).put("content", this.et_content.getText().toString());
    HashMap localHashMap = new HashMap();
    int i = 0;
    while (i < this.ll_content.uniqueIndexSeq.size())
    {
      localHashMap.put(((TPicCellInfo)this.ll_content.uniqueIndexSeq.get(i)).getPicName(), new File(((TPicCellInfo)this.ll_content.uniqueIndexSeq.get(i)).getPicUrl()));
      i += 1;
    }
    if (this.operateType == 1) {}
    for (localObject = new HttpUploadFileRequestPool(5, "http://www.apppark.cn/servlet/sendReport", this.handler, (Map)localObject, localHashMap);; localObject = new HttpUploadFileRequestPool(4, "http://www.apppark.cn/servlet/sendTopic", this.handler, (Map)localObject, localHashMap))
    {
      ((HttpUploadFileRequestPool)localObject).doRequest((NetWorkRequest)localObject);
      return;
    }
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
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131362887: 
      finish();
      return;
    case 2131362890: 
      if (StringUtil.isNull(this.et_title.getText().toString()))
      {
        initToast("请输入帖子标题", 0);
        return;
      }
      if (StringUtil.isNull(this.et_content.getText().toString()))
      {
        initToast("请输入帖子内容", 0);
        return;
      }
      sendTopic();
      return;
    case 2131362864: 
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
    case 2131362863: 
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
    case 2131362861: 
      this.rel_faceChose.setVisibility(8);
      return;
    case 2131362862: 
      this.rel_faceChose.setVisibility(8);
      return;
    case 2131362865: 
      TBaseParam.delEmjo(this.et_content);
      return;
    }
    this.ll_content.addCell();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903216);
    this.operateType = getIntent().getIntExtra("operateType", 0);
    this.topicDetailVo = ((TMainVo)getIntent().getSerializableExtra("detail"));
    initWidget();
    initContentParam();
    SDFileUtils.clearFoldeFile(YYGYContants.mDirGenerator.getFoldPath(YYGYContants.IMAGE_CACHE_UPLOAD));
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    this.ll_content.destroyCell();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/tieba/TEdit.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */