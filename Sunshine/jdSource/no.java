import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import cn.apppark.vertify.activity.free.typelist.SelfListView4003;

public final class no
  implements AbsListView.OnScrollListener
{
  public no(SelfListView4003 paramSelfListView4003) {}
  
  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    SelfListView4003.a(this.a, paramInt1);
  }
  
  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt) {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/no.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */