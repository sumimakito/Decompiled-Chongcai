package com.sina.weibo.sdk.register.mobile;

import android.content.Context;
import android.widget.AbsListView.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.sina.weibo.sdk.utils.ResourceManager;

public class SelectCountryItemView
  extends RelativeLayout
{
  private TextView mCountryCode;
  private TextView mCountryName;
  
  public SelectCountryItemView(Context paramContext, String paramString1, String paramString2)
  {
    super(paramContext);
    initView(paramString1, paramString2);
  }
  
  private void initView(String paramString1, String paramString2)
  {
    setLayoutParams(new AbsListView.LayoutParams(-1, ResourceManager.dp2px(getContext(), 40)));
    this.mCountryName = new TextView(getContext());
    this.mCountryName.setTextSize(16.0F);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.leftMargin = ResourceManager.dp2px(getContext(), 15);
    localLayoutParams.addRule(9);
    localLayoutParams.addRule(15);
    this.mCountryName.setGravity(16);
    this.mCountryName.setLayoutParams(localLayoutParams);
    this.mCountryName.setText(paramString1);
    this.mCountryName.setTextColor(-13421773);
    addView(this.mCountryName);
    this.mCountryCode = new TextView(getContext());
    this.mCountryCode.setTextSize(16.0F);
    localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(15);
    localLayoutParams.addRule(11);
    localLayoutParams.rightMargin = ResourceManager.dp2px(getContext(), 40);
    this.mCountryCode.setLayoutParams(localLayoutParams);
    this.mCountryCode.setText(paramString2);
    this.mCountryCode.setTextColor(-11502161);
    this.mCountryCode.setGravity(16);
    addView(this.mCountryCode);
    setContent(paramString1, paramString2);
  }
  
  private void setContent(String paramString1, String paramString2)
  {
    this.mCountryName.setText(paramString1);
    this.mCountryCode.setText(paramString2);
  }
  
  public void updateContent(String paramString1, String paramString2)
  {
    setContent(paramString1, paramString2);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/register/mobile/SelectCountryItemView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */