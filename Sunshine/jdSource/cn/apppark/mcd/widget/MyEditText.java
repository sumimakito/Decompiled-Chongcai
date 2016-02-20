package cn.apppark.mcd.widget;

import aa;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.EditText;

public class MyEditText
  extends EditText
{
  private int keyLisTag = 0;
  private MyEditText.MyEditTextClickListener listener;
  
  public MyEditText(Context paramContext)
  {
    super(paramContext);
    init();
  }
  
  public MyEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }
  
  public MyEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }
  
  private void init()
  {
    setSingleLine(true);
    setImeOptions(3);
    setOnKeyListener(new aa(this));
  }
  
  public MyEditText.MyEditTextClickListener getListener()
  {
    return this.listener;
  }
  
  public void setListener(MyEditText.MyEditTextClickListener paramMyEditTextClickListener)
  {
    this.listener = paramMyEditTextClickListener;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/MyEditText.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */