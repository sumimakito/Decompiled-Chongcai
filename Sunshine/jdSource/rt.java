import android.app.AlertDialog.Builder;
import cn.apppark.mcd.widget.DialogTwoBtn.Builder;
import cn.apppark.vertify.activity.tieba.TCommentList;
import cn.apppark.vertify.adapter.TReplayAdapter.OnReplayDeleteListener;

public final class rt
  implements TReplayAdapter.OnReplayDeleteListener
{
  public rt(TCommentList paramTCommentList) {}
  
  public final void onDelete(String paramString, int paramInt)
  {
    new DialogTwoBtn.Builder(TCommentList.f(this.a)).setTitle("警告").setCancelable(false).setMessage("确定删除？").setPositiveButton(2131230728, new rv(this, paramInt, paramString)).setNegativeButton(2131230729, new ru(this)).show();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/rt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */