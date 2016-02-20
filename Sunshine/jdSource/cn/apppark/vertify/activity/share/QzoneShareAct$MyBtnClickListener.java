package cn.apppark.vertify.activity.share;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

class QzoneShareAct$MyBtnClickListener
  implements View.OnClickListener
{
  private QzoneShareAct$MyBtnClickListener(QzoneShareAct paramQzoneShareAct) {}
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131362754: 
    default: 
      return;
    case 2131362755: 
      if ("".equals(QzoneShareAct.b(this.a).getText().toString().trim()))
      {
        QzoneShareAct.b(this.a).setError("请输入分享内容");
        return;
      }
      if (QzoneShareAct.b(this.a).getText().toString().trim().length() > QzoneShareAct.a(this.a))
      {
        QzoneShareAct.b(this.a).setError("您输入的分享内容超出长度限制");
        return;
      }
      QzoneShareAct.a(this.a, QzoneShareAct.b(this.a).getText().toString().trim(), "--来自<<" + this.a.getString(2131230721) + ">>", QzoneShareAct.d(this.a));
      return;
    }
    this.a.setResult(1);
    this.a.finish();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/share/QzoneShareAct$MyBtnClickListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */