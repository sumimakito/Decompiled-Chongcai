package cn.apppark.vertify.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.vertify.activity.tieba.TCommentList;
import vd;

public class TCommnetAdapter$TPop$1
  implements View.OnClickListener
{
  public TCommnetAdapter$TPop$1(vd paramvd, TCommnetAdapter paramTCommnetAdapter) {}
  
  public void onClick(View paramView)
  {
    TCommnetAdapter.d(this.b.a).dismiss();
    paramView = new Intent(TCommnetAdapter.e(this.b.a), TCommentList.class);
    paramView.putExtra("detail", TCommnetAdapter.j(this.b.a));
    paramView.putExtra("topicId", TCommnetAdapter.f(this.b.a));
    paramView.putExtra("topicUserId", TCommnetAdapter.g(this.b.a));
    paramView.putExtra("replayType", 0);
    TCommnetAdapter.e(this.b.a).startActivity(paramView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/TCommnetAdapter$TPop$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */