package com.sina.weibo.sdk.component.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.sina.weibo.sdk.utils.ResourceManager;

public class TitleBar
  extends RelativeLayout
{
  public static final int TITLE_BAR_HEIGHT = 45;
  private ListenerOnTitleBtnClicked mClickListener;
  private TextView mLeftBtn;
  private TextView mTitleText;
  
  public TitleBar(Context paramContext)
  {
    super(paramContext);
    initViews();
  }
  
  public TitleBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initViews();
  }
  
  public TitleBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    initViews();
  }
  
  private void initViews()
  {
    this.mLeftBtn = new TextView(getContext());
    this.mLeftBtn.setClickable(true);
    this.mLeftBtn.setTextSize(2, 17.0F);
    this.mLeftBtn.setTextColor(ResourceManager.createColorStateList(33280, 1728020992));
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(5);
    localLayoutParams.addRule(15);
    localLayoutParams.leftMargin = ResourceManager.dp2px(getContext(), 10);
    localLayoutParams.rightMargin = ResourceManager.dp2px(getContext(), 10);
    this.mLeftBtn.setLayoutParams(localLayoutParams);
    this.mLeftBtn.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (TitleBar.this.mClickListener != null) {
          TitleBar.this.mClickListener.onLeftBtnClicked();
        }
      }
    });
    addView(this.mLeftBtn);
    this.mTitleText = new TextView(getContext());
    this.mTitleText.setTextSize(2, 18.0F);
    this.mTitleText.setTextColor(-11382190);
    this.mTitleText.setEllipsize(TextUtils.TruncateAt.END);
    this.mTitleText.setSingleLine(true);
    this.mTitleText.setGravity(17);
    this.mTitleText.setMaxWidth(ResourceManager.dp2px(getContext(), 160));
    localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(13);
    this.mTitleText.setLayoutParams(localLayoutParams);
    addView(this.mTitleText);
    setLayoutParams(new ViewGroup.LayoutParams(-1, ResourceManager.dp2px(getContext(), 45)));
    setBackgroundDrawable(ResourceManager.getNinePatchDrawable(getContext(), "weibosdk_navigationbar_background.9.png"));
  }
  
  public void setLeftBtnBg(Drawable paramDrawable)
  {
    this.mLeftBtn.setBackgroundDrawable(paramDrawable);
  }
  
  public void setLeftBtnText(String paramString)
  {
    this.mLeftBtn.setText(paramString);
  }
  
  public void setTitleBarClickListener(ListenerOnTitleBtnClicked paramListenerOnTitleBtnClicked)
  {
    this.mClickListener = paramListenerOnTitleBtnClicked;
  }
  
  public void setTitleBarText(String paramString)
  {
    this.mTitleText.setText(paramString);
  }
  
  public static abstract interface ListenerOnTitleBtnClicked
  {
    public abstract void onLeftBtnClicked();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/component/view/TitleBar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */