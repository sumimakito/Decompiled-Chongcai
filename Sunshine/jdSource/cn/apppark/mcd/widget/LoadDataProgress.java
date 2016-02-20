package cn.apppark.mcd.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.ScaleAnima;

public class LoadDataProgress
  extends LinearLayout
{
  private IReloadDataProgress iLoadDataProgress;
  private ImageView imgFail;
  private LinearLayout lay_progress;
  private ProgressBar pb_progress;
  private TextView tv_progress;
  
  public LoadDataProgress(Context paramContext)
  {
    super(paramContext);
  }
  
  public LoadDataProgress(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903125, this);
    this.tv_progress = ((TextView)findViewById(2131362417));
    this.imgFail = ((ImageView)findViewById(2131362415));
    this.pb_progress = ((ProgressBar)findViewById(2131362416));
    this.lay_progress = ((LinearLayout)findViewById(2131362414));
    this.imgFail.setVisibility(8);
    this.lay_progress.setOnClickListener(new LoadDataProgress.1(this));
    this.tv_progress.setOnTouchListener(new ScaleAnima());
  }
  
  public void hidden()
  {
    if (this.lay_progress != null)
    {
      setVisibility(8);
      this.lay_progress.setVisibility(8);
    }
  }
  
  public void hiddenAnima()
  {
    if (this.lay_progress != null) {
      this.lay_progress.setVisibility(8);
    }
  }
  
  public void setInterfaceRef(IReloadDataProgress paramIReloadDataProgress)
  {
    this.iLoadDataProgress = paramIReloadDataProgress;
  }
  
  public void setTextBack(int paramInt)
  {
    this.tv_progress.setBackgroundResource(paramInt);
  }
  
  public void show(int paramInt)
  {
    setVisibility(0);
    if (this.lay_progress != null) {
      this.lay_progress.setVisibility(0);
    }
    this.lay_progress.getBackground().setAlpha(255);
    if (this.tv_progress != null)
    {
      this.tv_progress.setVisibility(0);
      this.tv_progress.setText(paramInt);
      if (this.pb_progress == null) {
        break label108;
      }
      this.pb_progress.setVisibility(0);
    }
    for (;;)
    {
      this.imgFail.setVisibility(8);
      return;
      if (this.tv_progress == null) {
        break;
      }
      this.tv_progress.setVisibility(8);
      this.tv_progress.setText(paramInt);
      break;
      label108:
      if (this.pb_progress != null) {
        this.pb_progress.setVisibility(8);
      }
    }
  }
  
  public void show(int paramInt, boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    setVisibility(0);
    if (this.lay_progress != null) {
      this.lay_progress.setVisibility(0);
    }
    if ((!"".equals(paramString)) && (paramString != null))
    {
      this.lay_progress.getBackground().setAlpha(FunctionPublic.str2int(paramString));
      if ((this.tv_progress == null) || (!paramBoolean1)) {
        break label120;
      }
      this.tv_progress.setVisibility(0);
      this.tv_progress.setText(paramInt);
      label77:
      if ((this.pb_progress == null) || (!paramBoolean2)) {
        break label147;
      }
      this.pb_progress.setVisibility(0);
    }
    for (;;)
    {
      this.imgFail.setVisibility(8);
      return;
      this.lay_progress.getBackground().setAlpha(0);
      break;
      label120:
      if (this.tv_progress == null) {
        break label77;
      }
      this.tv_progress.setVisibility(8);
      this.tv_progress.setText(paramInt);
      break label77;
      label147:
      if (this.pb_progress != null) {
        this.pb_progress.setVisibility(8);
      }
    }
  }
  
  public void show(String paramString1, boolean paramBoolean1, boolean paramBoolean2, String paramString2)
  {
    setVisibility(0);
    if (this.lay_progress != null) {
      this.lay_progress.setVisibility(0);
    }
    if ((!"".equals(paramString2)) && (paramString2 != null))
    {
      this.lay_progress.getBackground().setAlpha(FunctionPublic.str2int(paramString2));
      if ((this.tv_progress == null) || (!paramBoolean1)) {
        break label120;
      }
      this.tv_progress.setVisibility(0);
      this.tv_progress.setText(paramString1);
      label77:
      if ((this.pb_progress == null) || (!paramBoolean2)) {
        break label147;
      }
      this.pb_progress.setVisibility(0);
    }
    for (;;)
    {
      this.imgFail.setVisibility(8);
      return;
      this.lay_progress.getBackground().setAlpha(0);
      break;
      label120:
      if (this.tv_progress == null) {
        break label77;
      }
      this.tv_progress.setVisibility(8);
      this.tv_progress.setText(paramString1);
      break label77;
      label147:
      if (this.pb_progress != null) {
        this.pb_progress.setVisibility(8);
      }
    }
  }
  
  public void showError(int paramInt, boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    setVisibility(0);
    if (this.lay_progress != null) {
      this.lay_progress.setVisibility(0);
    }
    if ((!"".equals(paramString)) && (paramString != null))
    {
      this.lay_progress.getBackground().setAlpha(FunctionPublic.str2int(paramString));
      if ((this.tv_progress == null) || (!paramBoolean1)) {
        break label111;
      }
      this.tv_progress.setVisibility(0);
      this.tv_progress.setText(paramInt);
      label77:
      if ((this.pb_progress == null) || (!paramBoolean2)) {
        break label138;
      }
      this.pb_progress.setVisibility(0);
    }
    label111:
    label138:
    while (this.pb_progress == null)
    {
      return;
      this.lay_progress.getBackground().setAlpha(0);
      break;
      if (this.tv_progress == null) {
        break label77;
      }
      this.tv_progress.setVisibility(8);
      this.tv_progress.setText(paramInt);
      break label77;
    }
    this.pb_progress.setVisibility(8);
  }
  
  public void showError(String paramString1, boolean paramBoolean1, boolean paramBoolean2, String paramString2)
  {
    setVisibility(0);
    if (this.lay_progress != null) {
      this.lay_progress.setVisibility(0);
    }
    if ((!"".equals(paramString2)) && (paramString2 != null))
    {
      this.lay_progress.getBackground().setAlpha(FunctionPublic.str2int(paramString2));
      if ((this.tv_progress == null) || (!paramBoolean1)) {
        break label111;
      }
      this.tv_progress.setVisibility(0);
      this.tv_progress.setText(paramString1);
      label77:
      if ((this.pb_progress == null) || (!paramBoolean2)) {
        break label138;
      }
      this.pb_progress.setVisibility(0);
    }
    label111:
    label138:
    while (this.pb_progress == null)
    {
      return;
      this.lay_progress.getBackground().setAlpha(0);
      break;
      if (this.tv_progress == null) {
        break label77;
      }
      this.tv_progress.setVisibility(8);
      this.tv_progress.setText(paramString1);
      break label77;
    }
    this.pb_progress.setVisibility(8);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/LoadDataProgress.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */