import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.mcd.vo.tieba.TMyTopicVo;
import cn.apppark.vertify.activity.tieba.TMytopicAndComment;
import cn.apppark.vertify.activity.tieba.TTopicDetail;
import java.util.ArrayList;

public final class tb
  implements AdapterView.OnItemClickListener
{
  public tb(TMytopicAndComment paramTMytopicAndComment) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = new Intent(TMytopicAndComment.b(this.a), TTopicDetail.class);
    paramAdapterView.putExtra("topicid", ((TMyTopicVo)TMytopicAndComment.c(this.a).get(paramInt - 1)).getTopicId());
    this.a.startActivity(paramAdapterView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/tb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */