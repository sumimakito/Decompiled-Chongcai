package cn.apppark.vertify.activity.share;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.base.ClientBaseVo;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.SendMessageToWX.Req;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import com.tencent.mm.sdk.openapi.WXMediaMessage;
import com.tencent.mm.sdk.openapi.WXWebpageObject;
import java.io.File;
import qa;

public class WeixinFriendCircleShareAct
  extends Activity
{
  private int MAX_TEXT_LENGTH = 140;
  private IWXAPI api;
  private Button btn_return;
  private Button btn_share;
  private String content = "";
  private EditText et_content;
  private ImageView img;
  private String imgpath = "";
  private ProgressBar progress;
  private String targetUrl;
  private TextView tv_wordnum;
  
  private String buildTransaction(String paramString)
  {
    if (paramString == null) {
      return String.valueOf(System.currentTimeMillis());
    }
    return paramString + System.currentTimeMillis();
  }
  
  private void getWeiXin()
  {
    this.api = WXAPIFactory.createWXAPI(this, HQCHApplication.mainActivity.clientBaseVo.getWeixinAppID(), false);
    if (!this.api.registerApp(HQCHApplication.mainActivity.clientBaseVo.getWeixinAppID())) {
      this.api.unregisterApp();
    }
  }
  
  private void initWidget()
  {
    Object localObject = (RelativeLayout)findViewById(2131362752);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, (View)localObject);
    ((TextView)findViewById(2131362769)).setText(2131230769);
    this.btn_share = ((Button)findViewById(2131362770));
    this.btn_return = ((Button)findViewById(2131362768));
    this.et_content = ((EditText)findViewById(2131362771));
    this.tv_wordnum = ((TextView)findViewById(2131362774));
    this.img = ((ImageView)findViewById(2131362775));
    this.progress = ((ProgressBar)findViewById(2131362772));
    this.progress.setVisibility(8);
    this.btn_return.setOnClickListener(new WeixinFriendCircleShareAct.MyBtnClickListener(this, null));
    this.btn_share.setOnClickListener(new WeixinFriendCircleShareAct.MyBtnClickListener(this, null));
    ButtonColorFilter.setButtonFocusChanged(this.btn_return);
    ButtonColorFilter.setButtonFocusChanged(this.btn_share);
    localObject = new qa(this);
    this.et_content.addTextChangedListener((TextWatcher)localObject);
    this.et_content.setText(this.content);
    this.tv_wordnum.setText("还可输入" + (this.MAX_TEXT_LENGTH - this.et_content.getText().toString().trim().length()) + "字");
    if ((this.imgpath != null) && (!"".equals(this.imgpath)))
    {
      localObject = new File(this.imgpath);
      this.img.setImageURI(Uri.fromFile((File)localObject));
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903197);
    try
    {
      Intent localIntent = getIntent();
      paramBundle = null;
      if (localIntent != null) {
        paramBundle = localIntent.getExtras();
      }
      if (paramBundle != null)
      {
        this.content = paramBundle.getString("content").replace("@###", "@apppark");
        this.targetUrl = this.content.substring(this.content.indexOf("http://"), this.content.length());
        this.content = this.content.replace(this.targetUrl, "");
        this.imgpath = paramBundle.getString("imgpath");
        this.MAX_TEXT_LENGTH -= this.targetUrl.length();
      }
    }
    catch (Exception paramBundle)
    {
      for (;;)
      {
        paramBundle.printStackTrace();
      }
    }
    initWidget();
  }
  
  public void sendWeiXinImgText(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean)
  {
    int i = 0;
    getWeiXin();
    if ((paramString1 == null) || (paramString1.length() == 0))
    {
      Toast.makeText(this, "内容不能为空", 0).show();
      return;
    }
    paramString3 = new WXWebpageObject();
    paramString3.webpageUrl = paramString4;
    paramString3 = new WXMediaMessage(paramString3);
    paramString3.title = paramString1;
    paramString3.description = paramString2;
    paramString1 = new SendMessageToWX.Req();
    paramString1.transaction = buildTransaction("webpage");
    paramString1.message = paramString3;
    if (paramBoolean) {
      i = 1;
    }
    paramString1.scene = i;
    this.api.sendReq(paramString1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/share/WeixinFriendCircleShareAct.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */