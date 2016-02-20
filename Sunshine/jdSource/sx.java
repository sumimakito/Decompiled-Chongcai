import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.mcd.vo.tieba.TMyHistoryVo;
import cn.apppark.vertify.activity.tieba.TMyHistory;
import cn.apppark.vertify.activity.tieba.TTopicDetail;
import java.util.ArrayList;

public final class sx
  implements AdapterView.OnItemClickListener
{
  public sx(TMyHistory paramTMyHistory) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = new Intent(TMyHistory.a(this.a), TTopicDetail.class);
    paramAdapterView.putExtra("topicid", ((TMyHistoryVo)TMyHistory.b(this.a).get(paramInt)).getTopicId());
    this.a.startActivity(paramAdapterView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/sx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */