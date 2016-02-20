package cn.apppark.vertify.activity.soft;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Gallery;
import qc;
import rf;

public class SoftDetail$MyHandler$3
  implements View.OnClickListener
{
  public SoftDetail$MyHandler$3(rf paramrf, int paramInt) {}
  
  public void onClick(View paramView)
  {
    paramView = new qc(SoftDetail.e(this.b.a), SoftDetail.g(this.b.a), 2);
    SoftDetail.i(this.b.a).setAdapter(paramView);
    SoftDetail.i(this.b.a).setSelection(this.a);
    SoftDetail.a(this.b.a).show();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/soft/SoftDetail$MyHandler$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */