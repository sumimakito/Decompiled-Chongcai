package cn.apppark.vertify.activity.tieba;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

class TCommentList$4
  implements View.OnClickListener
{
  TCommentList$4(TCommentList paramTCommentList) {}
  
  public void onClick(View paramView)
  {
    paramView = new Intent(TCommentList.f(this.a), TTopicDetail.class);
    paramView.putExtra("topicid", TCommentList.g(this.a));
    this.a.startActivity(paramView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/tieba/TCommentList$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */