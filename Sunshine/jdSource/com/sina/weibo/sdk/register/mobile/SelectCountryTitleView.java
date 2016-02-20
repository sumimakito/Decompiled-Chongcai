package com.sina.weibo.sdk.register.mobile;

import android.content.Context;
import android.widget.AbsListView.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.sina.weibo.sdk.utils.ResourceManager;

public class SelectCountryTitleView
  extends RelativeLayout
{
  private TextView mTitleTv;
  
  public SelectCountryTitleView(Context paramContext)
  {
    super(paramContext);
    initView();
  }
  
  private void initView()
  {
    setLayoutParams(new AbsListView.LayoutParams(-1, ResourceManager.dp2px(getContext(), 24)));
    setBackgroundDrawable(ResourceManager.getDrawable(getContext(), "tableview_sectionheader_background.png"));
    this.mTitleTv = new TextView(getContext());
    this.mTitleTv.setTextSize(14.0F);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(15);
    localLayoutParams.leftMargin = ResourceManager.dp2px(getContext(), 10);
    this.mTitleTv.setLayoutParams(localLayoutParams);
    this.mTitleTv.setGravity(3);
    this.mTitleTv.setTextColor(-7171438);
    this.mTitleTv.setGravity(16);
    addView(this.mTitleTv);
  }
  
  public void setTitle(String paramString)
  {
    this.mTitleTv.setText(paramString);
  }
  
  public void update(String paramString)
  {
    setTitle(paramString);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/register/mobile/SelectCountryTitleView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */