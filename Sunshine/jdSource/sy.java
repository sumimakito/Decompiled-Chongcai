import android.view.View;
import cn.apppark.mcd.util.file.TbHistoryObject2File;
import cn.apppark.vertify.activity.tieba.TMyHistory;
import cn.apppark.vertify.adapter.TMyHistoryAdapter;
import cn.apppark.vertify.adapter.TMyHistoryAdapter.onRightItemClickListener;
import cn.apppark.vertify.base.ClientPersionInfo;
import java.util.ArrayList;

public final class sy
  implements TMyHistoryAdapter.onRightItemClickListener
{
  public sy(TMyHistory paramTMyHistory) {}
  
  public final void onRightItemClick(View paramView, int paramInt)
  {
    TbHistoryObject2File.delHistory(TMyHistory.a(this.a), paramInt, TMyHistory.f(this.a).getUserId());
    TMyHistory.b(this.a).remove(paramInt);
    TMyHistory.g(this.a).notifyDataSetChanged();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/sy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */