import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import cn.apppark.mcd.vo.tieba.TReplayVo;
import cn.apppark.vertify.activity.tieba.TCommentList;
import java.util.ArrayList;

public final class rr
  implements AdapterView.OnItemClickListener
{
  public rr(TCommentList paramTCommentList) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt > 1)
    {
      TCommentList.c(this.a).setHint("回复：" + ((TReplayVo)TCommentList.b(this.a).get(paramInt - 2)).getUserName());
      TCommentList.a(this.a, "回复：" + ((TReplayVo)TCommentList.b(this.a).get(paramInt - 2)).getUserName());
      TCommentList.b(this.a, ((TReplayVo)TCommentList.b(this.a).get(paramInt - 2)).getUserId());
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/rr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */