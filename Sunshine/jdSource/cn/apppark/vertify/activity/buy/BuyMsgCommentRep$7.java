package cn.apppark.vertify.activity.buy;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.vertify.base.ClientPersionInfo;

class BuyMsgCommentRep$7
  implements View.OnClickListener
{
  BuyMsgCommentRep$7(BuyMsgCommentRep paramBuyMsgCommentRep) {}
  
  public void onClick(View paramView)
  {
    if ("".equals(BuyMsgCommentRep.b(this.a).getText().toString().trim()))
    {
      HQCHApplication.instance.initToast("请输入评论", 0);
      return;
    }
    if (BuyMsgCommentRep.e(this.a).getUserId() != null)
    {
      BuyMsgCommentRep.h(this.a);
      return;
    }
    HQCHApplication.instance.initToast("请登录后发表评论", 0);
    paramView = new Intent(this.a, YYGYContants.getLoginClass());
    this.a.startActivityForResult(paramView, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyMsgCommentRep$7.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */