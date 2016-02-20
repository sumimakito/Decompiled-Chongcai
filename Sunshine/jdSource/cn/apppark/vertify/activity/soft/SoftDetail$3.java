package cn.apppark.vertify.activity.soft;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;

class SoftDetail$3
  implements View.OnClickListener
{
  SoftDetail$3(SoftDetail paramSoftDetail) {}
  
  public void onClick(View paramView)
  {
    if (SoftDetail.b(this.a))
    {
      SoftDetail.a(this.a, false);
      SoftDetail.c(this.a).setBackgroundResource(2130837837);
      SoftDetail.d(this.a).setMaxLines(2);
      return;
    }
    SoftDetail.a(this.a, true);
    SoftDetail.c(this.a).setBackgroundResource(2130837823);
    SoftDetail.d(this.a).setMaxLines(200);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/soft/SoftDetail$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */