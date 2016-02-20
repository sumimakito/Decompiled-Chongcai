package cn.apppark.vertify.activity.free.dyn;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.dyn.DynMsgGroupVo;
import java.util.ArrayList;

class SMsgBase$5
  implements View.OnClickListener
{
  SMsgBase$5(SMsgBase paramSMsgBase) {}
  
  public void onClick(View paramView)
  {
    int j = ((Integer)paramView.getTag()).intValue();
    int i = 0;
    while (i < SMsgBase.d(this.a).size())
    {
      ((Button)SMsgBase.d(this.a).get(i)).setTextColor(this.a.getResources().getColor(2130837944));
      ((Button)SMsgBase.d(this.a).get(i)).setBackgroundResource(2130837947);
      ((TextView)SMsgBase.e(this.a).get(i)).setVisibility(8);
      i += 1;
    }
    FunctionPublic.setTextColor((TextView)SMsgBase.d(this.a).get(j), YYGYContants.PERSIONCENTER_TOP_COLOR);
    ((Button)SMsgBase.d(this.a).get(j)).setBackgroundResource(2130837931);
    ((TextView)SMsgBase.e(this.a).get(j)).setVisibility(0);
    SMsgBase.a(this.a, ((DynMsgGroupVo)this.a.a.get(j)).getId());
    SMsgBase.f(this.a);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/SMsgBase$5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */