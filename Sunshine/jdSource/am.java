import android.widget.HorizontalScrollView;
import cn.apppark.mcd.widget.TCellLinearLayout;

public final class am
  implements Runnable
{
  public am(TCellLinearLayout paramTCellLinearLayout) {}
  
  public final void run()
  {
    TCellLinearLayout.a(this.a).fullScroll(66);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/am.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */