package cn.apppark.vertify.activity.free.dyn;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.mcd.vo.dyn.DynProductGroupDetailVo;
import cn.apppark.vertify.activity.share.MsgAct;

class SProductBase$5
  implements View.OnClickListener
{
  SProductBase$5(SProductBase paramSProductBase) {}
  
  public void onClick(View paramView)
  {
    paramView = new Intent(SProductBase.d(this.a), MsgAct.class);
    paramView.putExtra("msg", SProductBase.e(this.a).getNotice());
    SProductBase.d(this.a).startActivity(paramView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/SProductBase$5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */