package cn.apppark.vertify.activity.persion;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.imge.ImgUtil;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.buy.BuyBaseAct;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import ou;
import ov;
import ow;

public class PersonInfo2
  extends BuyBaseAct
  implements View.OnClickListener
{
  private final int REQUEST_CAMERA = 3;
  private final int REQUEST_LOGIN_OFF = 1;
  private final int REQUEST_SEL_PICFILE = 2;
  private final String SUB_PIC_METHOD = "updateHeadFace";
  private final int SUB_PIC_WHAT = 4;
  private Bitmap bmp;
  private Button btn_back;
  private Button btn_camera;
  private Button btn_cancel;
  private Button btn_login;
  private Button btn_loginOff;
  private Button btn_personinfo;
  private Button btn_pic;
  private Context context = this;
  private int crop = 100;
  private ow handler;
  private RemoteImageView img_head;
  private LinearLayout lin_loginno;
  private LinearLayout ll_email;
  private LinearLayout ll_nikeName;
  private LinearLayout ll_operate;
  private LinearLayout ll_pass;
  private ov myMenu;
  private RelativeLayout rel_loginstate;
  private File tempFile;
  private String tempFilePath = Environment.getExternalStorageDirectory().getPath() + "/temp.jpg";
  private TextView tv_email;
  private TextView tv_phone;
  private TextView tv_username;
  
  private void changeLoginInfo()
  {
    ClientPersionInfo localClientPersionInfo = new ClientPersionInfo(this.context);
    this.tv_phone.setText("已绑定手机号码:" + localClientPersionInfo.getPhone());
    if (localClientPersionInfo.getUserId() == null)
    {
      this.rel_loginstate.setVisibility(8);
      this.lin_loginno.setVisibility(0);
      return;
    }
    this.rel_loginstate.setVisibility(0);
    this.lin_loginno.setVisibility(8);
    if (StringUtil.isNotNull(localClientPersionInfo.getUserNikeName()))
    {
      this.tv_username.setText(localClientPersionInfo.getUserNikeName());
      this.tv_username.setVisibility(0);
    }
    for (;;)
    {
      if (localClientPersionInfo.getUserHeadFace() != null) {
        this.img_head.setImageUrl(localClientPersionInfo.getUserHeadFace());
      }
      this.tv_email.setText(localClientPersionInfo.getUserEmail());
      return;
      this.tv_username.setVisibility(8);
    }
  }
  
  private void getPicFromCamera()
  {
    this.tempFile = new File(this.tempFilePath);
    Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
    localIntent.putExtra("output", Uri.fromFile(this.tempFile));
    localIntent.putExtra("crop", "true");
    localIntent.putExtra("aspectX", 1);
    localIntent.putExtra("aspectY", 1);
    localIntent.putExtra("outputX", this.crop);
    localIntent.putExtra("outputY", this.crop);
    startActivityForResult(localIntent, 3);
  }
  
  private void getPicFromSD()
  {
    this.tempFile = new File(this.tempFilePath);
    Intent localIntent = new Intent("android.intent.action.GET_CONTENT");
    localIntent.setType("image/*");
    localIntent.putExtra("crop", "true");
    localIntent.putExtra("output", Uri.fromFile(this.tempFile));
    localIntent.putExtra("outputFormat", "JPEG");
    localIntent.putExtra("outputX", this.crop);
    localIntent.putExtra("outputY", this.crop);
    startActivityForResult(Intent.createChooser(localIntent, "选择图片"), 2);
  }
  
  private void initWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.rel_loginstate = ((RelativeLayout)findViewById(2131361975));
    this.lin_loginno = ((LinearLayout)findViewById(2131361981));
    this.img_head = ((RemoteImageView)findViewById(2131361977));
    this.tv_username = ((TextView)findViewById(2131361979));
    this.tv_email = ((TextView)findViewById(2131361978));
    this.btn_personinfo = ((Button)findViewById(2131361980));
    this.btn_login = ((Button)findViewById(2131361982));
    this.btn_login.setOnClickListener(this);
    this.rel_loginstate.setOnClickListener(this);
    this.btn_personinfo.setOnClickListener(this);
    this.ll_operate = ((LinearLayout)findViewById(2131361983));
    this.tv_phone = ((TextView)findViewById(2131361988));
    this.ll_nikeName = ((LinearLayout)findViewById(2131361984));
    this.ll_pass = ((LinearLayout)findViewById(2131361985));
    this.ll_email = ((LinearLayout)findViewById(2131361986));
    this.btn_back = ((Button)findViewById(2131361974));
    this.btn_loginOff = ((Button)findViewById(2131361989));
    this.ll_nikeName.setOnClickListener(this);
    this.ll_pass.setOnClickListener(this);
    this.ll_email.setOnClickListener(this);
    this.btn_back.setOnClickListener(this);
    this.btn_loginOff.setOnClickListener(this);
    this.img_head.setOnClickListener(this);
    ButtonColorFilter.setButtonFocusChanged(this.btn_loginOff);
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
  }
  
  private void subPhoto(int paramInt)
  {
    this.loadDialog.show();
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("id", getInfo().getUserId());
    ((Map)localObject).put("headFace", ImgUtil.pic2String(this.bmp));
    localObject = new WebServicePool(paramInt, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/member.ws", "updateHeadFace");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 1) && (paramInt2 == -1)) {
      finish();
    }
    do
    {
      do
      {
        return;
      } while (((paramInt1 != 2) && (paramInt1 != 3)) || (paramInt2 != -1));
      this.tempFile = new File(this.tempFilePath);
      this.bmp = BitmapFactory.decodeFile(this.tempFile.getAbsolutePath());
    } while (this.bmp == null);
    subPhoto(4);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131361974: 
      finish();
      return;
    case 2131361989: 
      createMsgDialog(getResources().getString(2131230723), "确定退出当前账号?", new ou(this));
      return;
    case 2131361984: 
      paramView = new Intent(this, UpdateInfo.class);
      paramView.putExtra("type", 1);
      startActivity(paramView);
      return;
    case 2131361985: 
      paramView = new Intent(this, UpdateInfo.class);
      paramView.putExtra("type", 2);
      startActivity(paramView);
      return;
    case 2131361986: 
      paramView = new Intent(this, UpdateInfo.class);
      paramView.putExtra("type", 3);
      startActivity(paramView);
      return;
    case 2131361982: 
      startActivity(new Intent(this, YYGYContants.getLoginClass()));
      return;
    case 2131361977: 
      if (this.myMenu == null) {
        this.myMenu = new ov(this, this);
      }
      if (this.myMenu.isShowing())
      {
        this.myMenu.dismiss();
        return;
      }
      this.myMenu.showAtLocation(this.ll_email, 80, 0, 0);
      return;
    case 2131362188: 
      this.myMenu.dismiss();
      return;
    case 2131362186: 
      getPicFromCamera();
      this.myMenu.dismiss();
      return;
    }
    getPicFromSD();
    this.myMenu.dismiss();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903064);
    initWidget();
    changeLoginInfo();
    this.loadDialog = createLoadingDialog(2131230756);
    this.handler = new ow(this, null);
  }
  
  protected void onDestroy()
  {
    if ((this.bmp != null) && (!this.bmp.isRecycled()))
    {
      this.bmp.recycle();
      this.bmp = null;
    }
    super.onDestroy();
  }
  
  protected void onResume()
  {
    changeLoginInfo();
    super.onResume();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/persion/PersonInfo2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */