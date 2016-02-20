package cn.apppark.vertify.activity.soft;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

class SoftDetail$6
  implements View.OnClickListener
{
  SoftDetail$6(SoftDetail paramSoftDetail, String paramString) {}
  
  public void onClick(View paramView)
  {
    SoftDetail.a(this.b, this.a);
    paramView = new Intent();
    paramView.putExtra("id", this.a);
    paramView.putExtra("subjectid", "0");
    paramView.setClass(SoftDetail.e(this.b), SoftDetail.class);
    SoftDetail.e(this.b).startActivity(paramView);
    this.b.finish();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/soft/SoftDetail$6.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */