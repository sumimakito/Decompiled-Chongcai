import android.app.Dialog;
import android.view.View;
import cn.apppark.mcd.vo.tieba.TMyCollectionVo;
import cn.apppark.vertify.activity.tieba.TMyCollection;
import cn.apppark.vertify.adapter.TCollectionAdapter.onRightItemClickListener;
import java.util.ArrayList;

public final class st
  implements TCollectionAdapter.onRightItemClickListener
{
  public st(TMyCollection paramTMyCollection) {}
  
  public final void onRightItemClick(View paramView, int paramInt)
  {
    TMyCollection.a(this.a, paramInt);
    TMyCollection.i(this.a).show();
    TMyCollection.a(this.a, 2, ((TMyCollectionVo)TMyCollection.c(this.a).get(paramInt)).getTopicId());
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/st.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */