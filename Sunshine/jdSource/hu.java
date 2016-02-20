import cn.apppark.mcd.widget.PullDownListViewAutoLoad.OnFootRefreshListener;
import cn.apppark.vertify.activity.free.dyn.DynMsgList5002;

public final class hu
  implements PullDownListViewAutoLoad.OnFootRefreshListener
{
  public hu(DynMsgList5002 paramDynMsgList5002) {}
  
  public final void onFootRefresh()
  {
    DynMsgList5002.a(this.a, DynMsgList5002.b(this.a), 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/hu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */