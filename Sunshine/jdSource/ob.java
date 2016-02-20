import cn.apppark.mcd.widget.PullDownListView4.OnFootRefreshListener4;
import cn.apppark.vertify.activity.persion.PersionCollection;

public final class ob
  implements PullDownListView4.OnFootRefreshListener4
{
  public ob(PersionCollection paramPersionCollection) {}
  
  public final void onFootRefresh()
  {
    PersionCollection.a(this.a, PersionCollection.c(this.a), 2);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ob.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */