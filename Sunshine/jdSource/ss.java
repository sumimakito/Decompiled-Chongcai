import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.mcd.vo.tieba.TMyCollectionVo;
import cn.apppark.vertify.activity.tieba.TMyCollection;
import cn.apppark.vertify.activity.tieba.TTopicDetail;
import java.util.ArrayList;

public final class ss
  implements AdapterView.OnItemClickListener
{
  public ss(TMyCollection paramTMyCollection) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = new Intent(TMyCollection.b(this.a), TTopicDetail.class);
    paramAdapterView.putExtra("topicid", ((TMyCollectionVo)TMyCollection.c(this.a).get(paramInt)).getTopicId());
    this.a.startActivity(paramAdapterView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ss.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */