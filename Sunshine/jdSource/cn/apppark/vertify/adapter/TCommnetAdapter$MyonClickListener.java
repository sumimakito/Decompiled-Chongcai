package cn.apppark.vertify.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.tieba.TCommentVo;
import cn.apppark.vertify.activity.tieba.TCommentList;
import cn.apppark.vertify.base.ClientPersionInfo;
import vd;

class TCommnetAdapter$MyonClickListener
  implements View.OnClickListener
{
  private TCommentVo b;
  private int c;
  private int d;
  private String e;
  
  public TCommnetAdapter$MyonClickListener(TCommnetAdapter paramTCommnetAdapter, TCommentVo paramTCommentVo)
  {
    this.b = paramTCommentVo;
  }
  
  public TCommnetAdapter$MyonClickListener(TCommnetAdapter paramTCommnetAdapter, TCommentVo paramTCommentVo, int paramInt)
  {
    this.b = paramTCommentVo;
    this.c = paramInt;
  }
  
  public TCommnetAdapter$MyonClickListener(TCommnetAdapter paramTCommnetAdapter, TCommentVo paramTCommentVo, int paramInt1, int paramInt2, String paramString)
  {
    this.b = paramTCommentVo;
    this.c = paramInt1;
    this.d = paramInt2;
    this.e = paramString;
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    }
    do
    {
      return;
      TCommnetAdapter.a(this.a, this.b);
      TCommnetAdapter.a(this.a, this.c);
      if (this.b.getUserId().equals(TCommnetAdapter.b(this.a).getUserId()))
      {
        TCommnetAdapter.c(this.a).setVisibility(0);
        TCommnetAdapter.d(this.a).showAsDropDown(paramView, -PublicUtil.dip2px(135.0F), -PublicUtil.dip2px(35.0F));
        return;
      }
      TCommnetAdapter.c(this.a).setVisibility(8);
      TCommnetAdapter.d(this.a).showAsDropDown(paramView, -PublicUtil.dip2px(90.0F), -PublicUtil.dip2px(35.0F));
      return;
      paramView = new Intent(TCommnetAdapter.e(this.a), TCommentList.class);
      paramView.putExtra("detail", this.b);
      paramView.putExtra("topicId", TCommnetAdapter.f(this.a));
      paramView.putExtra("topicUserId", TCommnetAdapter.g(this.a));
      paramView.putExtra("replayType", 0);
      TCommnetAdapter.e(this.a).startActivity(paramView);
      return;
      paramView = new Intent(TCommnetAdapter.e(this.a), TCommentList.class);
      paramView.putExtra("detail", this.b);
      paramView.putExtra("topicId", TCommnetAdapter.f(this.a));
      paramView.putExtra("topicUserId", TCommnetAdapter.g(this.a));
      paramView.putExtra("replayType", 1);
      TCommnetAdapter.e(this.a).startActivity(paramView);
      return;
      paramView = new Intent(TCommnetAdapter.e(this.a), TCommentList.class);
      paramView.putExtra("detail", this.b);
      paramView.putExtra("topicId", TCommnetAdapter.f(this.a));
      paramView.putExtra("topicUserId", TCommnetAdapter.g(this.a));
      paramView.putExtra("replayType", 2);
      TCommnetAdapter.e(this.a).startActivity(paramView);
      return;
    } while (TCommnetAdapter.h(this.a) == null);
    TCommnetAdapter.h(this.a).onDelete(this.b.getCommentId(), this.e, TCommnetAdapter.i(this.a), this.d, true);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/TCommnetAdapter$MyonClickListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */