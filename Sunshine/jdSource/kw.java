import cn.apppark.mcd.widget.PullDownListViewAutoLoad.OnFootRefreshListener;
import cn.apppark.vertify.activity.free.dyn.SMsgBase;

public final class kw
  implements PullDownListViewAutoLoad.OnFootRefreshListener
{
  public kw(SMsgBase paramSMsgBase) {}
  
  public final void onFootRefresh()
  {
    SMsgBase.a(this.a, SMsgBase.b(this.a), 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/kw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */