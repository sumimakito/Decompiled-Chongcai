package cn.apppark.vertify.activity.tieba;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.mcd.vo.tieba.TMainVo;

class TMain$6
  implements View.OnClickListener
{
  TMain$6(TMain paramTMain, TMainVo paramTMainVo) {}
  
  public void onClick(View paramView)
  {
    paramView = new Intent(TMain.e(this.b), TTopicDetail.class);
    paramView.putExtra("topicid", this.a.getTopicId());
    this.b.startActivity(paramView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/tieba/TMain$6.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */