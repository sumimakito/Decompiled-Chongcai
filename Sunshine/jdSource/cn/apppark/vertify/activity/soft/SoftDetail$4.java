package cn.apppark.vertify.activity.soft;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.mcd.vo.free.SoftDetailReturnVo;
import cn.apppark.vertify.activity.share.ShareAct;

class SoftDetail$4
  implements View.OnClickListener
{
  SoftDetail$4(SoftDetail paramSoftDetail) {}
  
  public void onClick(View paramView)
  {
    if (this.a.a != null)
    {
      paramView = new Intent(SoftDetail.e(this.a), ShareAct.class);
      Bundle localBundle = new Bundle();
      localBundle.putString("content", "我在@### 免费应用推荐发现一个不错的应用:" + this.a.a.getName() + " " + this.a.a.getDownUrl() + this.a.a.getSummary());
      localBundle.putString("imgpath", "");
      paramView.putExtras(localBundle);
      SoftDetail.e(this.a).startActivity(paramView);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/soft/SoftDetail$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */