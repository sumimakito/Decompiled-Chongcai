import cn.apppark.mcd.widget.RightSlidMenu.onMenuStateChangeListener;
import cn.apppark.vertify.activity.tieba.TMain;

public final class si
  implements RightSlidMenu.onMenuStateChangeListener
{
  public si(TMain paramTMain) {}
  
  public final void onClose() {}
  
  public final void onOpen()
  {
    if (TMain.g(this.a))
    {
      TMain.a(this.a, false);
      TMain.a(this.a, 3);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/si.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */