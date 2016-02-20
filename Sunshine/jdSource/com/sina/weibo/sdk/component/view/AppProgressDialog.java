package com.sina.weibo.sdk.component.view;

import android.app.Dialog;
import android.content.Context;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.sina.weibo.sdk.utils.ResourceManager;

public class AppProgressDialog
  extends Dialog
{
  private TextView info;
  private ProgressBar myBar;
  
  public AppProgressDialog(Context paramContext)
  {
    super(paramContext);
    setCanceledOnTouchOutside(false);
    LinearLayout localLinearLayout = new LinearLayout(paramContext);
    localLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(ResourceManager.dp2px(paramContext, 100), ResourceManager.dp2px(paramContext, 100)));
    localLinearLayout.setOrientation(0);
    localLinearLayout.setGravity(17);
    localLinearLayout.setBackgroundColor(-1);
    this.myBar = new ProgressBar(paramContext);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    int i = ResourceManager.dp2px(paramContext, 20);
    localLayoutParams.bottomMargin = i;
    localLayoutParams.topMargin = i;
    localLayoutParams.leftMargin = i;
    this.myBar.setLayoutParams(localLayoutParams);
    localLinearLayout.addView(this.myBar);
    this.info = new TextView(paramContext);
    setTitle("提示");
    this.info.setTextSize(2, 17.0F);
    this.info.setText("正在处理...");
    this.info.setTextColor(-11382190);
    this.info.setGravity(16);
    localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.leftMargin = ResourceManager.dp2px(paramContext, 20);
    localLayoutParams.rightMargin = ResourceManager.dp2px(paramContext, 20);
    this.info.setLayoutParams(localLayoutParams);
    localLinearLayout.addView(this.info);
    setContentView(localLinearLayout);
  }
  
  public void setMessage(String paramString)
  {
    this.info.setText(paramString);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/component/view/AppProgressDialog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */