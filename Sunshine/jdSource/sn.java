import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.mcd.vo.tieba.TMyMsgVo;
import cn.apppark.vertify.activity.tieba.TCommentList;
import cn.apppark.vertify.activity.tieba.TMsg;
import cn.apppark.vertify.activity.tieba.TTopicDetail;
import java.util.ArrayList;

public final class sn
  implements AdapterView.OnItemClickListener
{
  public sn(TMsg paramTMsg) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if ("0".equals(((TMyMsgVo)TMsg.b(this.a).get(paramInt - 1)).getReplyId()))
    {
      paramAdapterView = new Intent(TMsg.c(this.a), TTopicDetail.class);
      paramAdapterView.putExtra("topicid", ((TMyMsgVo)TMsg.b(this.a).get(paramInt - 1)).getTopicId());
      this.a.startActivity(paramAdapterView);
      return;
    }
    paramAdapterView = new Intent(TMsg.c(this.a), TCommentList.class);
    paramAdapterView.putExtra("topicId", ((TMyMsgVo)TMsg.b(this.a).get(paramInt - 1)).getTopicId());
    paramAdapterView.putExtra("topicUserId", "-1");
    paramAdapterView.putExtra("commentId", ((TMyMsgVo)TMsg.b(this.a).get(paramInt - 1)).getCommentId());
    paramAdapterView.putExtra("replyId", ((TMyMsgVo)TMsg.b(this.a).get(paramInt - 1)).getReplyId());
    paramAdapterView.putExtra("replayType", 3);
    TMsg.c(this.a).startActivity(paramAdapterView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/sn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */