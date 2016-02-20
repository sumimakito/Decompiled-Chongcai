package cn.apppark.vertify.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.mcd.vo.tieba.TCommentVo;
import vd;

public class TCommnetAdapter$TPop$2
  implements View.OnClickListener
{
  public TCommnetAdapter$TPop$2(vd paramvd, TCommnetAdapter paramTCommnetAdapter) {}
  
  public void onClick(View paramView)
  {
    TCommnetAdapter.d(this.b.a).dismiss();
    if (TCommnetAdapter.h(this.b.a) != null) {
      TCommnetAdapter.h(this.b.a).onDelete(TCommnetAdapter.j(this.b.a).getCommentId(), null, TCommnetAdapter.i(this.b.a), 0, false);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/TCommnetAdapter$TPop$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */