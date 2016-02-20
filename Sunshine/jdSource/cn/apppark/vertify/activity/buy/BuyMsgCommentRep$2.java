package cn.apppark.vertify.activity.buy;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;

class BuyMsgCommentRep$2
  implements View.OnClickListener
{
  BuyMsgCommentRep$2(BuyMsgCommentRep paramBuyMsgCommentRep) {}
  
  public void onClick(View paramView)
  {
    BuyMsgCommentRep.b(this.a).setHint("评论");
    BuyMsgCommentRep.b(this.a).setText("");
    BuyMsgCommentRep.a(this.a, null);
    BuyMsgCommentRep.c(this.a).setVisibility(8);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyMsgCommentRep$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */