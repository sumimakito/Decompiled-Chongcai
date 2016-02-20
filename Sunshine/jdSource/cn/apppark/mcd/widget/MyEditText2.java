package cn.apppark.mcd.widget;

import ab;
import ac;
import ad;
import android.content.Context;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;

public class MyEditText2
  extends RelativeLayout
{
  private Button btn_clear;
  private Button btn_eye;
  private EditText et_content;
  private boolean isPassWord = false;
  private boolean isShowCleanBtn = true;
  private int keyLisTag = 0;
  private MyEditText2.MyOnKeyEnter myOnKeyEnter;
  
  public MyEditText2(Context paramContext)
  {
    super(paramContext);
    init(paramContext);
  }
  
  public MyEditText2(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init(paramContext);
  }
  
  public MyEditText2(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init(paramContext);
  }
  
  private void changePassShow()
  {
    if (this.isPassWord)
    {
      this.et_content.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
      this.btn_eye.setBackgroundResource(2130837766);
      this.isPassWord = false;
      return;
    }
    this.et_content.setTransformationMethod(PasswordTransformationMethod.getInstance());
    this.btn_eye.setBackgroundResource(2130837765);
    this.isPassWord = true;
  }
  
  private void init(Context paramContext)
  {
    LayoutInflater.from(paramContext).inflate(2130903132, this, true);
    this.et_content = ((EditText)findViewById(2131362444));
    this.btn_eye = ((Button)findViewById(2131362446));
    this.btn_clear = ((Button)findViewById(2131362445));
    this.btn_clear.setVisibility(4);
    this.btn_eye.setVisibility(8);
    if (this.isShowCleanBtn)
    {
      this.et_content.setOnFocusChangeListener(new ab(this));
      this.et_content.addTextChangedListener(new ac(this));
    }
    this.et_content.setSingleLine(true);
    this.et_content.setImeOptions(3);
    this.et_content.setOnKeyListener(new ad(this));
    this.btn_clear.setOnClickListener(new MyEditText2.4(this));
    this.btn_eye.setOnClickListener(new MyEditText2.5(this));
  }
  
  public MyEditText2.MyOnKeyEnter getMyOnKeyEnter()
  {
    return this.myOnKeyEnter;
  }
  
  public String getText()
  {
    return this.et_content.getText().toString();
  }
  
  public void isPassOpen(boolean paramBoolean)
  {
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      this.isPassWord = paramBoolean;
      this.btn_eye.setVisibility(0);
      changePassShow();
      return;
    }
  }
  
  public void isPhoneOpen(boolean paramBoolean)
  {
    if (paramBoolean) {
      this.et_content.setInputType(3);
    }
  }
  
  public void setHint(String paramString)
  {
    this.et_content.setHint(paramString);
  }
  
  public void setMyOnKeyEnter(MyEditText2.MyOnKeyEnter paramMyOnKeyEnter)
  {
    this.myOnKeyEnter = paramMyOnKeyEnter;
  }
  
  public void setShowCleanBtn(boolean paramBoolean)
  {
    this.isShowCleanBtn = paramBoolean;
  }
  
  public void setShowClearBtn(boolean paramBoolean)
  {
    this.isShowCleanBtn = paramBoolean;
  }
  
  public void setText(String paramString)
  {
    this.et_content.setText(paramString);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/MyEditText2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */