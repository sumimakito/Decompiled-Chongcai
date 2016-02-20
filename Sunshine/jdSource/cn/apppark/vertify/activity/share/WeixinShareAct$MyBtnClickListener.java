package cn.apppark.vertify.activity.share;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

class WeixinShareAct$MyBtnClickListener
  implements View.OnClickListener
{
  private WeixinShareAct$MyBtnClickListener(WeixinShareAct paramWeixinShareAct) {}
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131362769: 
    default: 
      return;
    case 2131362770: 
      if ("".equals(WeixinShareAct.b(this.a).getText().toString().trim()))
      {
        WeixinShareAct.b(this.a).setError("请输入分享内容");
        return;
      }
      if (WeixinShareAct.b(this.a).getText().toString().trim().length() > WeixinShareAct.a(this.a))
      {
        WeixinShareAct.b(this.a).setError("您输入的分享内容超出长度限制");
        return;
      }
      this.a.sendWeiXinImgText(WeixinShareAct.b(this.a).getText().toString().trim(), "--来自<<" + this.a.getString(2131230721) + ">>", "", WeixinShareAct.d(this.a), false);
      return;
    }
    this.a.setResult(1);
    this.a.finish();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/share/WeixinShareAct$MyBtnClickListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */