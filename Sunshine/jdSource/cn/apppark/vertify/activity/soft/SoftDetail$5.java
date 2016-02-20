package cn.apppark.vertify.activity.soft;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.vo.free.SoftDetailReturnVo;

class SoftDetail$5
  implements View.OnClickListener
{
  SoftDetail$5(SoftDetail paramSoftDetail) {}
  
  public void onClick(View paramView)
  {
    if (this.a.a != null)
    {
      paramView = new Intent();
      paramView.setAction("android.intent.action.VIEW");
      paramView.setData(Uri.parse(this.a.a.getDownUrl() + "&imei=" + YYGYContants.IMEI));
      SoftDetail.e(this.a).startActivity(paramView);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/soft/SoftDetail$5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */