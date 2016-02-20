package cn.apppark.mcd.widget;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;

public class DialogTwoBtn$Builder
  extends AlertDialog.Builder
{
  private Context mContext;
  private DialogTwoBtn md;
  
  public DialogTwoBtn$Builder(Context paramContext)
  {
    super(paramContext);
    this.md = new DialogTwoBtn(paramContext);
    this.md.setCanceledOnTouchOutside(false);
    this.md.setCancelable(false);
    this.mContext = paramContext;
  }
  
  public DialogTwoBtn create()
  {
    return this.md;
  }
  
  public Builder setMessage(int paramInt)
  {
    this.md.setMessage(this.mContext.getResources().getString(paramInt));
    return this;
  }
  
  public Builder setMessage(CharSequence paramCharSequence)
  {
    this.md.setMessage(paramCharSequence);
    return this;
  }
  
  public Builder setNegativeButton(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.md.setButton3(this.mContext.getResources().getString(paramInt), paramOnClickListener);
    return this;
  }
  
  public Builder setNegativeButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.md.setButton3(paramCharSequence, paramOnClickListener);
    return this;
  }
  
  public Builder setPositiveButton(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.md.setButton(this.mContext.getResources().getString(paramInt), paramOnClickListener);
    return this;
  }
  
  public Builder setPositiveButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.md.setButton(paramCharSequence, paramOnClickListener);
    return this;
  }
  
  public Builder setTitle(int paramInt)
  {
    this.md.setTitle(this.mContext.getResources().getString(paramInt));
    return this;
  }
  
  public Builder setTitle(CharSequence paramCharSequence)
  {
    this.md.setTitle(paramCharSequence);
    return this;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/DialogTwoBtn$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */