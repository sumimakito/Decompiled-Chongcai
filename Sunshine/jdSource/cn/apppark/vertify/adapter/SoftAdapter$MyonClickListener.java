package cn.apppark.vertify.adapter;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.ckj10185912.YYGYContants;

class SoftAdapter$MyonClickListener
  implements View.OnClickListener
{
  String a;
  
  private SoftAdapter$MyonClickListener(SoftAdapter paramSoftAdapter, String paramString)
  {
    this.a = paramString;
  }
  
  public void onClick(View paramView)
  {
    paramView = new Intent();
    paramView.setAction("android.intent.action.VIEW");
    paramView.setData(Uri.parse(this.a + "&imei=" + YYGYContants.IMEI));
    SoftAdapter.a(this.b).startActivity(paramView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/SoftAdapter$MyonClickListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */