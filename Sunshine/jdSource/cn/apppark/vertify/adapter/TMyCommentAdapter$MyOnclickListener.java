package cn.apppark.vertify.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.mcd.vo.tieba.SonItemVo;
import cn.apppark.mcd.vo.tieba.TMyCommentVo;
import cn.apppark.vertify.activity.tieba.TCommentList;
import cn.apppark.vertify.activity.tieba.TTopicDetail;

class TMyCommentAdapter$MyOnclickListener
  implements View.OnClickListener
{
  TMyCommentVo a;
  SonItemVo b;
  
  public TMyCommentAdapter$MyOnclickListener(TMyCommentAdapter paramTMyCommentAdapter, TMyCommentVo paramTMyCommentVo)
  {
    this.a = paramTMyCommentVo;
  }
  
  public TMyCommentAdapter$MyOnclickListener(TMyCommentAdapter paramTMyCommentAdapter, TMyCommentVo paramTMyCommentVo, SonItemVo paramSonItemVo)
  {
    this.a = paramTMyCommentVo;
    this.b = paramSonItemVo;
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131362932: 
      paramView = new Intent(TMyCommentAdapter.a(this.c), TTopicDetail.class);
      paramView.putExtra("topicid", this.a.getTopicId());
      paramView.putExtra("jumpType", 1);
      TMyCommentAdapter.a(this.c).startActivity(paramView);
      return;
    }
    if ("0".equals(this.b.getReplyId()))
    {
      paramView = new Intent(TMyCommentAdapter.a(this.c), TTopicDetail.class);
      paramView.putExtra("topicid", this.a.getTopicId());
      paramView.putExtra("commentId", this.b.getCommentId());
      paramView.putExtra("jumpType", 2);
      TMyCommentAdapter.a(this.c).startActivity(paramView);
      return;
    }
    paramView = new Intent(TMyCommentAdapter.a(this.c), TCommentList.class);
    paramView.putExtra("topicId", this.a.getTopicId());
    paramView.putExtra("commentId", this.b.getCommentId());
    paramView.putExtra("replyId", this.b.getReplyId());
    paramView.putExtra("replayType", 3);
    TMyCommentAdapter.a(this.c).startActivity(paramView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/TMyCommentAdapter$MyOnclickListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */