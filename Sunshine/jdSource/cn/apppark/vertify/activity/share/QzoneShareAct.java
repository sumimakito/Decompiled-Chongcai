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
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.base.ClientBaseVo;
import com.tencent.tauth.Tencent;
import java.io.File;
import java.util.ArrayList;
import pt;
import pu;

public class QzoneShareAct
  extends Activity
{
  private int MAX_TEXT_LENGTH = 140;
  public Tencent a;
  private Button btn_return;
  private Button btn_share;
  private String content = "";
  private EditText et_content;
  private ImageView img;
  private String imgpath = "";
  private ProgressBar progress;
  private int shareType = 1;
  private String targetUrl;
  private TextView tv_wordnum;
  
  private void doShareToQzone(Bundle paramBundle)
  {
    new Thread(new pu(this, this, paramBundle)).start();
  }
  
  private void initWidget()
  {
    Object localObject = (RelativeLayout)findViewById(2131362752);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, (View)localObject);
    this.a = Tencent.createInstance(HQCHApplication.mainActivity.clientBaseVo.getQzoneAppID(), this);
    this.btn_share = ((Button)findViewById(2131362755));
    this.btn_return = ((Button)findViewById(2131362753));
    this.et_content = ((EditText)findViewById(2131362756));
    this.tv_wordnum = ((TextView)findViewById(2131362759));
    this.img = ((ImageView)findViewById(2131362760));
    this.progress = ((ProgressBar)findViewById(2131362757));
    this.progress.setVisibility(8);
    this.btn_return.setOnClickListener(new QzoneShareAct.MyBtnClickListener(this, null));
    this.btn_share.setOnClickListener(new QzoneShareAct.MyBtnClickListener(this, null));
    ButtonColorFilter.setButtonFocusChanged(this.btn_return);
    ButtonColorFilter.setButtonFocusChanged(this.btn_share);
    localObject = new pt(this);
    this.et_content.addTextChangedListener((TextWatcher)localObject);
    this.et_content.setText(this.content);
    this.tv_wordnum.setText("还可输入" + (this.MAX_TEXT_LENGTH - this.et_content.getText().toString().trim().length()) + "字");
    if ((this.imgpath != null) && (!"".equals(this.imgpath)))
    {
      localObject = new File(this.imgpath);
      this.img.setImageURI(Uri.fromFile((File)localObject));
    }
  }
  
  private void sharToQzone(String paramString1, String paramString2, String paramString3)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("req_type", this.shareType);
    localBundle.putString("title", paramString1);
    localBundle.putString("summary", paramString2);
    localBundle.putString("targetUrl", paramString3);
    localBundle.putStringArrayList("imageUrl", new ArrayList());
    doShareToQzone(localBundle);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903195);
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
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/share/QzoneShareAct.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */