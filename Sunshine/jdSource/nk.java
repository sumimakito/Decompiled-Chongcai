import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import cn.apppark.vertify.activity.free.typelist.SelfListView4001;

public final class nk
  implements AbsListView.OnScrollListener
{
  public nk(SelfListView4001 paramSelfListView4001) {}
  
  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    SelfListView4001.a(this.a, paramInt1);
  }
  
  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt) {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/nk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */