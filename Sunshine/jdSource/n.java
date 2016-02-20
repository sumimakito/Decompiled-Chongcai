import android.app.Activity;
import android.widget.Toast;
import cn.apppark.mcd.util.PublicUtil;

public final class n
  implements Runnable
{
  public n(Activity paramActivity, String paramString) {}
  
  public final void run()
  {
    if (PublicUtil.a() != null)
    {
      PublicUtil.a().cancel();
      PublicUtil.a(null);
    }
    PublicUtil.a(Toast.makeText(this.a, this.b, 0));
    PublicUtil.a().show();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */