import cn.apppark.mcd.widget.PullDownListViewAutoLoad.OnFootRefreshListener;
import cn.apppark.vertify.activity.free.dyn.DynRss5003;

public final class jo
  implements PullDownListViewAutoLoad.OnFootRefreshListener
{
  public jo(DynRss5003 paramDynRss5003) {}
  
  public final void onFootRefresh()
  {
    DynRss5003.a(this.a, DynRss5003.b(this.a), 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/jo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */