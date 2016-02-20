import cn.apppark.mcd.widget.PullDownListView4.OnFootRefreshListener4;
import cn.apppark.vertify.activity.tieba.TMain;

public final class sg
  implements PullDownListView4.OnFootRefreshListener4
{
  public sg(TMain paramTMain) {}
  
  public final void onFootRefresh()
  {
    TMain.a(this.a, TMain.c(this.a), 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/sg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */