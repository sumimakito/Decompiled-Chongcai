package cn.apppark.mcd.widget;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.PublicUtil;

public class DialogOneBtn
  extends AlertDialog
{
  private static final int DEFAULT_HEGHT = PublicUtil.dip2px(180.0F);
  private int clickNum = 0;
  private long lastClickTime = 0L;
  private Context mContext;
  private LayoutInflater mInflater;
  private TextView mItemMessage;
  private TextView mItemTitle;
  private LinearLayout mView;
  
  protected DialogOneBtn(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mInflater = LayoutInflater.from(this.mContext);
    this.mView = ((LinearLayout)this.mInflater.inflate(2130903089, null));
    this.mItemTitle = ((TextView)this.mView.findViewById(2131362168));
    this.mItemMessage = ((TextView)this.mView.findViewById(2131362172));
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(this.mView);
    this.mView.getLayoutParams().width = ((int)(((Activity)this.mContext).getWindowManager().getDefaultDisplay().getWidth() * 4.7D / 5.0D));
    this.mView.getLayoutParams().height = DEFAULT_HEGHT;
  }
  
  public void setButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    Button localButton = (Button)this.mView.findViewById(2131362183);
    localButton.setText(paramCharSequence);
    localButton.setVisibility(0);
    ButtonColorFilter.setButtonFocusChanged(localButton);
    localButton.setOnClickListener(new DialogOneBtn.1(this, paramOnClickListener));
    super.setButton(paramCharSequence, paramOnClickListener);
  }
  
  public void setMessage(CharSequence paramCharSequence)
  {
    this.mItemMessage.setText(paramCharSequence);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    this.mItemTitle.setText(paramCharSequence);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/DialogOneBtn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */