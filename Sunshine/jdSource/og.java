import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.mcd.vo.tieba.TMyCollectionVo;
import cn.apppark.vertify.activity.persion.PersionCollection;
import cn.apppark.vertify.activity.tieba.TTopicDetail;
import java.util.ArrayList;

public final class og
  implements AdapterView.OnItemClickListener
{
  public og(PersionCollection paramPersionCollection) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = new Intent(PersionCollection.g(this.a), TTopicDetail.class);
    paramAdapterView.putExtra("topicid", ((TMyCollectionVo)PersionCollection.h(this.a).get(paramInt - 1)).getTopicId());
    this.a.startActivity(paramAdapterView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/og.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */