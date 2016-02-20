package cn.apppark.mcd.widget;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.mcd.util.PublicUtil;
import java.lang.reflect.Field;

public class DialogProgress
  extends ProgressDialog
{
  private static final int DEFAULT_HEIGHT = PublicUtil.dip2px(150.0F);
  private LinearLayout dialogButtons;
  protected Context mContext;
  private LayoutInflater mInflater;
  private int mMax;
  private int mStyle = 0;
  private RelativeLayout mStyleHorizotal;
  private RelativeLayout mStyleSmall;
  private String mTitle;
  private LinearLayout mTitlePanel;
  private RelativeLayout mView;
  
  public DialogProgress(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mInflater = LayoutInflater.from(this.mContext);
    this.mView = ((RelativeLayout)this.mInflater.inflate(2130903087, null));
    this.mStyleSmall = ((RelativeLayout)this.mView.findViewById(2131362170));
    this.mStyleHorizotal = ((RelativeLayout)this.mView.findViewById(2131362173));
    this.mTitlePanel = ((LinearLayout)this.mView.findViewById(2131362167));
    this.dialogButtons = ((LinearLayout)this.mView.findViewById(2131362182));
  }
  
  public static ProgressDialog show(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    return show(paramContext, paramCharSequence1, paramCharSequence2, false);
  }
  
  public static ProgressDialog show(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, boolean paramBoolean)
  {
    return show(paramContext, paramCharSequence1, paramCharSequence2, paramBoolean, false, null);
  }
  
  public static ProgressDialog show(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, boolean paramBoolean1, boolean paramBoolean2)
  {
    return show(paramContext, paramCharSequence1, paramCharSequence2, paramBoolean1, paramBoolean2, null);
  }
  
  public static ProgressDialog show(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, boolean paramBoolean1, boolean paramBoolean2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    paramContext = new DialogProgress(paramContext);
    paramContext.setTitle(paramCharSequence1);
    paramContext.setMessage(paramCharSequence2);
    paramContext.setIndeterminate(paramBoolean1);
    paramContext.setCancelable(paramBoolean2);
    paramContext.setOnCancelListener(paramOnCancelListener);
    paramContext.setCanceledOnTouchOutside(false);
    paramContext.show();
    return paramContext;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(this.mView);
    this.mView.getLayoutParams().height = DEFAULT_HEIGHT;
    this.mView.getLayoutParams().width = ((int)(((Activity)this.mContext).getWindowManager().getDefaultDisplay().getWidth() * 4.5D / 5.0D));
    if (this.mTitle == null)
    {
      this.mTitlePanel.getLayoutParams().height = 10;
      this.mView.getLayoutParams().height = (DEFAULT_HEIGHT - 35);
    }
    if (this.mStyle == 1)
    {
      this.mView.getLayoutParams().width = ((int)(((Activity)this.mContext).getWindowManager().getDefaultDisplay().getWidth() * 4.7D / 5.0D));
      this.mStyleHorizotal.setVisibility(0);
      this.mStyleSmall.setVisibility(8);
      Object localObject2 = (ProgressBar)findViewById(2131362174);
      ((ProgressBar)localObject2).setMax(this.mMax);
      ((ProgressBar)localObject2).getLayoutParams().height = 8;
      Object localObject1 = (TextView)findViewById(2131362175);
      paramBundle = (TextView)findViewById(2131362176);
      try
      {
        Field localField = getClass().getSuperclass().getDeclaredField("mProgress");
        localField.setAccessible(true);
        localField.set(this, localObject2);
        localObject2 = getClass().getSuperclass().getDeclaredField("mProgressPercent");
        ((Field)localObject2).setAccessible(true);
        ((Field)localObject2).set(this, localObject1);
        localObject1 = getClass().getSuperclass().getDeclaredField("mProgressNumber");
        ((Field)localObject1).setAccessible(true);
        ((Field)localObject1).set(this, paramBundle);
        return;
      }
      catch (Exception paramBundle)
      {
        paramBundle.printStackTrace();
        return;
      }
    }
    this.mStyleHorizotal.setVisibility(8);
    this.mStyleSmall.setVisibility(0);
  }
  
  public void setMax(int paramInt)
  {
    super.setMax(paramInt);
    this.mMax = paramInt;
  }
  
  public void setMessage(CharSequence paramCharSequence)
  {
    ((TextView)this.mView.findViewById(2131362172)).setText(paramCharSequence);
  }
  
  public void setProgressStyle(int paramInt)
  {
    super.setProgressStyle(paramInt);
    this.mStyle = paramInt;
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    if (paramCharSequence != null) {
      this.mTitle = paramCharSequence.toString();
    }
    ((TextView)this.mView.findViewById(2131362168)).setText(paramCharSequence);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/DialogProgress.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */