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

class SProductBase$7
  implements View.OnClickListener
{
  SProductBase$7(SProductBase paramSProductBase) {}
  
  public void onClick(View paramView)
  {
    int j = ((Integer)paramView.getTag()).intValue();
    int i = 0;
    while (i < SProductBase.g(this.a).size())
    {
      ((Button)SProductBase.g(this.a).get(i)).setTextColor(this.a.getResources().getColor(2130837944));
      ((TextView)SProductBase.h(this.a).get(i)).setVisibility(8);
      i += 1;
    }
    FunctionPublic.setTextColor((TextView)SProductBase.g(this.a).get(j), YYGYContants.PERSIONCENTER_TOP_COLOR);
    ((TextView)SProductBase.h(this.a).get(j)).setVisibility(0);
    SProductBase.a(this.a, ((DynMsgGroupVo)SProductBase.i(this.a).get(j)).getId());
    SProductBase.j(this.a);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/SProductBase$7.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */