package cn.apppark.vertify.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.mcd.vo.tieba.TReplayVo;

class TReplayAdapter$MyonClickListener
  implements View.OnClickListener
{
  private TReplayVo b;
  private int c;
  
  public TReplayAdapter$MyonClickListener(TReplayAdapter paramTReplayAdapter, TReplayVo paramTReplayVo, int paramInt)
  {
    this.b = paramTReplayVo;
    this.c = paramInt;
  }
  
  public void onClick(View paramView)
  {
    if (TReplayAdapter.a(this.a) != null) {
      TReplayAdapter.a(this.a).onDelete(this.b.getReplyId(), this.c);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/TReplayAdapter$MyonClickListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */