import cn.apppark.mcd.widget.PullDownListView4.OnFootRefreshListener4;
import cn.apppark.vertify.activity.persion.PersionCollection;

public final class od
  implements PullDownListView4.OnFootRefreshListener4
{
  public od(PersionCollection paramPersionCollection) {}
  
  public final void onFootRefresh()
  {
    PersionCollection.b(this.a, 1, 3);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/od.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */