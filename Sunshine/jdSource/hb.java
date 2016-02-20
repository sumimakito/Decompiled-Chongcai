import cn.apppark.mcd.widget.PullDownListViewAutoLoad.OnFootRefreshListener;
import cn.apppark.vertify.activity.free.dyn.DynMsgCard5011;

public final class hb
  implements PullDownListViewAutoLoad.OnFootRefreshListener
{
  public hb(DynMsgCard5011 paramDynMsgCard5011) {}
  
  public final void onFootRefresh()
  {
    DynMsgCard5011.a(this.a, DynMsgCard5011.b(this.a), 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/hb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */