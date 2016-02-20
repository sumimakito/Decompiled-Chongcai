package cn.apppark.vertify.activity.share;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

class SinaShareAct$MyBtnClickListener
  implements View.OnClickListener
{
  private SinaShareAct$MyBtnClickListener(SinaShareAct paramSinaShareAct) {}
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131362762: 
      if ("".equals(SinaShareAct.a(this.a).getText().toString().trim()))
      {
        SinaShareAct.a(this.a).setError("请输入分享内容");
        return;
      }
      if (SinaShareAct.a(this.a).getText().toString().trim().length() > 140)
      {
        SinaShareAct.a(this.a).setError("您输入的分享内容超出长度限制");
        return;
      }
      SinaShareAct.c(this.a);
      return;
    }
    this.a.finish();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/share/SinaShareAct$MyBtnClickListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */