package cn.apppark.vertify.activity.persion;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.imge.ImgUtil;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.buy.BuyBaseAct;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import oq;
import or;
import os;
import ot;

public class PersonInfo
  extends BuyBaseAct
  implements View.OnClickListener
{
  private final int GETINFO_WHAT = 1;
  private final String SUB_PIC_METHOD = "updateHeadFace";
  private final int SUB_PIC_WHAT = 4;
  private Bitmap bmp;
  private Button btn_back;
  private Button btn_camera;
  private Button btn_cancel;
  private Button btn_pic;
  private Context context = this;
  private ot handler;
  private RemoteImageView img_head;
  private ImageView img_nikeName;
  private LinearLayout ll_email;
  private LinearLayout ll_head;
  private LinearLayout ll_nikeName;
  private LinearLayout ll_phone;
  private LinearLayout ll_sex;
  private LinearLayout ll_sign;
  private LoadDataProgress load;
  private os myMenu;
  private TextView tv_email;
  private TextView tv_nikeName;
  private TextView tv_phone;
  private TextView tv_sex;
  private TextView tv_sign;
  
  private void getPersionDetail()
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("id", getInfo().getUserId());
    localObject = new WebServicePool(1, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/member.ws", "detail");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initWidget()
  {
    this.load = ((LoadDataProgress)findViewById(2131361809));
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.tv_phone = ((TextView)findViewById(2131361973));
    this.tv_nikeName = ((TextView)findViewById(2131361964));
    this.tv_email = ((TextView)findViewById(2131361969));
    this.tv_sex = ((TextView)findViewById(2131361967));
    this.tv_sign = ((TextView)findViewById(2131361971));
    this.ll_head = ((LinearLayout)findViewById(2131361961));
    this.ll_sex = ((LinearLayout)findViewById(2131361966));
    this.ll_email = ((LinearLayout)findViewById(2131361968));
    this.ll_sign = ((LinearLayout)findViewById(2131361970));
    this.ll_phone = ((LinearLayout)findViewById(2131361972));
    this.ll_nikeName = ((LinearLayout)findViewById(2131361963));
    this.btn_back = ((Button)findViewById(2131361960));
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    this.img_head = ((RemoteImageView)findViewById(2131361962));
    this.img_nikeName = ((ImageView)findViewById(2131361965));
    this.ll_head.setOnClickListener(this);
    this.ll_sex.setOnClickListener(this);
    this.ll_email.setOnClickListener(this);
    this.ll_sign.setOnClickListener(this);
    this.ll_phone.setOnClickListener(this);
    this.ll_phone.setOnClickListener(this);
    this.ll_nikeName.setOnClickListener(this);
    this.btn_back.setOnClickListener(this);
  }
  
  private void onError()
  {
    this.load.showError(2131230757, true, false, "255");
    this.load.setInterfaceRef(new oq(this));
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
  
  private void updateInfoState()
  {
    ClientPersionInfo localClientPersionInfo = new ClientPersionInfo(this.context);
    this.tv_phone.setText(localClientPersionInfo.getPhone());
    this.tv_nikeName.setText(localClientPersionInfo.getUserNikeName());
    this.tv_email.setText(localClientPersionInfo.getUserEmail());
    if ("0".equals(localClientPersionInfo.getUserSex())) {
      this.tv_sex.setText("女");
    }
    for (;;)
    {
      if (localClientPersionInfo.getUserSign() != null) {
        this.tv_sign.setText(localClientPersionInfo.getUserSign());
      }
      this.img_head.setImageUrl(localClientPersionInfo.getUserHeadFace());
      return;
      this.tv_sex.setText("男");
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    }
    for (;;)
    {
      return;
      if (ImgUtil.imageUriFromCamera != null)
      {
        ImgUtil.cropImage(this, ImgUtil.imageUriFromCamera);
        return;
        if ((paramIntent != null) && (paramIntent.getData() != null))
        {
          ImgUtil.cropImage(this, Uri.fromFile(new File(ImgUtil.getPath(this, paramIntent.getData()))));
          return;
          if (ImgUtil.cropImageUri != null) {
            try
            {
              this.bmp = ImgUtil.getBitmapFromUri(ImgUtil.cropImageUri, this);
              if (this.bmp != null)
              {
                this.loadDialog.show();
                new Thread(new or(this)).start();
                return;
              }
            }
            catch (Exception paramIntent)
            {
              paramIntent.printStackTrace();
            }
          }
        }
      }
    }
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
    case 2131361960: 
    case 2131361968: 
    case 2131361963: 
      do
      {
        return;
        setResult(1);
        finish();
        return;
        paramView = new Intent(this, UpdateInfo.class);
        paramView.putExtra("type", 3);
        startActivity(paramView);
        return;
      } while (!"1".equals(getInfo().getNikeNameRight()));
      paramView = new Intent(this, UpdateInfo.class);
      paramView.putExtra("type", 1);
      startActivity(paramView);
      return;
    case 2131361966: 
      paramView = new Intent(this, UpdateInfo.class);
      paramView.putExtra("type", 4);
      startActivity(paramView);
      return;
    case 2131361970: 
      paramView = new Intent(this, UpdateInfo.class);
      paramView.putExtra("type", 5);
      startActivity(paramView);
      return;
    case 2131361961: 
      if (this.myMenu == null) {
        this.myMenu = new os(this, this);
      }
      if (this.myMenu.isShowing())
      {
        this.myMenu.dismiss();
        return;
      }
      this.myMenu.showAtLocation(this.ll_phone, 80, 0, 0);
      return;
    case 2131362188: 
      this.myMenu.dismiss();
      return;
    case 2131362186: 
      ImgUtil.openCameraImage(this);
      this.myMenu.dismiss();
      return;
    }
    ImgUtil.openLocalImage(this);
    this.myMenu.dismiss();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903063);
    this.handler = new ot(this, null);
    initWidget();
    this.loadDialog = createLoadingDialog(2131230756);
    getPersionDetail();
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
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      setResult(1);
      finish();
      return true;
    }
    return false;
  }
  
  protected void onResume()
  {
    updateInfoState();
    super.onResume();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/persion/PersonInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */