import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.mcd.vo.tieba.TMainVo;
import cn.apppark.mcd.widget.RightSlidMenu;
import cn.apppark.vertify.activity.tieba.TMain;
import cn.apppark.vertify.activity.tieba.TTopicDetail;
import java.util.ArrayList;

public final class sh
  implements AdapterView.OnItemClickListener
{
  public sh(TMain paramTMain) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if ((TMain.d(this.a) != null) && (TMain.d(this.a).isMenuShow)) {
      TMain.d(this.a).closeOpenMenu();
    }
    while (paramInt <= 1) {
      return;
    }
    paramAdapterView = new Intent(TMain.e(this.a), TTopicDetail.class);
    paramAdapterView.putExtra("topicid", ((TMainVo)TMain.f(this.a).get(paramInt - 2)).getTopicId());
    this.a.startActivityForResult(paramAdapterView, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/sh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */